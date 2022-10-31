require(dplyr)
require(RefManageR)
require(jsonlite)

directory <- "O:/website/academic-kickstart/content/publication"
bib_list <- dir(directory, pattern = ".bib", recursive = TRUE, full.names = TRUE)
bib_len  <- length(bib_list)


bib <- ReadBib(bib_list[1], check = FALSE)
for (i in 2:bib_len) bib <- c(bib, ReadBib(bib_list[i], check = FALSE))


geotag <- bib %>%
  sapply(function(x)x$geo) %>% 
  strsplit(" and ")

author <- bib %>% sapply(function(x)x$author)


# link authors and geo
author_geo <- vector("list", bib_len)

for (i in 1:bib_len){

  author_geo[[i]] <- vector("list", length(author[[i]]))
  for (a in 1:length(author[[i]])){
    author_geo[[i]][[a]]$author <- author[[i]][a]
  }
  
  for (g in 1:length(geotag[[i]])){
    geo     <- gsub(" \\([1-9].*", "", geotag[[i]][g])
    auth_id <- gsub(".* \\((.*)\\)", "\\1", geotag[[i]][g]) %>%
      strsplit(", ") %>%
      unlist() %>%
      as.integer()
    for (j in 1:length(auth_id)){
      author_geo[[i]][[auth_id[j]]]$geo <- c(
        author_geo[[i]][[auth_id[j]]]$geo,
        geo
      )
    }
  }
}


# delete myself
for (i in 1:bib_len){
  me_pos <- sapply(
      author_geo[[i]], 
      function(x)x$author$family
    ) %>% 
    grep("Frantz", .)
  author_geo[[i]] <- author_geo[[i]][-me_pos]
}

del_pos <- which(sapply(author_geo, length) == 0)
if (length(del_pos) > 0) author_geo <- author_geo[-del_pos]


# extract geotag
###########################################

geotag <- sapply(author_geo, 
       sapply,
       function(x)x$geo
     ) %>%
  unlist()



geonet <- data.frame(city = city, n = 1) %>%
  group_by(city) %>%
  summarise(n = sum(n))

geonet <- geonet %>%
  mutate(fullname = city) %>%
  mutate(country = gsub(".*, ", "", fullname))
geonet <- geonet %>%
  mutate(state = 
           gsub("(.*), .*", "\\1", fullname) %>%
           gsub("^[^,]*", "", .) %>%
           gsub(", ", "", .))
geonet <- geonet %>%
  mutate(city = gsub(",.*", "", fullname))


plot(0, type="n", xlim=c(-180, 180), ylim = c(-90, 90))


x <- rep(0, nrow(geonet))
y <- rep(0, nrow(geonet))
for (i in 1:nrow(geonet)){
  
  url <- paste(
    "http://nominatim.openstreetmap.org/search?city=",
    gsub(" ", "%20", geonet$city[i]),
    ifelse(
      nchar(geonet$state[i]) > 0, 
      paste0("&state=", geonet$state[i]),
      ""),
    "&country=",
    gsub(" ", "%20", geonet$country[i]),
    "&limit=9&format=json",
    sep="")

  res <- fromJSON(url)
  
  if (length(res) == 0){ print(geonet$city[i]); next}
  
  text(as.numeric(res$lon[1]), as.numeric(res$lat[1]), geonet$city[i])
 
  x[i] <- as.numeric(res$lon[1])
  y[i] <- as.numeric(res$lat[1])
  
  print(nrow(res))
  
}

geonet <- cbind(geonet, x, y)


plot(
  geonet$x, 
  geonet$y, 
  type = "p", 
  pch = 19,
  cex = geonet$n %>% log %>% `+`(.5),
  col = rgb(0, 0.4784314, 0.7647059, 0.2)
)



library("rnaturalearth")
library("rnaturalearthdata")
library(sf)
library(plotly)

world <- ne_countries(scale = "medium", returnclass = "sf")


fig <- plot_ly(height = 600) %>%
  add_sf(
    data = world, 
    type       = "scatter", 
    color = I("gray90"), 
    stroke = I("grey80"), 
    span = I(1), 
    hoverinfo  = 'skip', 
    showlegend = FALSE
  ) %>%

  add_trace(
    data      = geonet,
    type      = "scatter", 
    mode      = "markers", 
    x         = ~x, 
    y         = ~y, 
    size      = ~log(n)+1,
    marker    = list(
      sizeref    = 0.5, 
      sizemode   = "area", 
      color      = ~log(n)+1, 
      #color      = ~n,
      colorscale = "Portland", 
      showscale  = TRUE, 
      line       = list(width = 0)
    ),
    text      = ~paste(
      sprintf("%s, %s", city, country),
      '<br>', 
      n, 
      'author counts<br>'
    ), 
    hoverinfo = "text"
  )

fig  


# sunburst

sburst <- geonet %>% 
  mutate(city = paste(city, state)) %>%
  select(city, n, country)


country_sums <- sburst %>% 
  group_by(country) %>%
  summarise(n = sum(n)) %>%
  mutate(city = country) %>%
  mutate(country = "World")
  

world_sum <- sburst %>%
  summarise(n = sum(n)) %>%
  mutate(city = "World") %>%
  mutate(country = "")

sburst <- rbind(sburst, country_sums, world_sum)


fig_sb <- sburst %>%
  plot_ly(
    labels = ~city,
    parents = ~country,
    values = ~n,
    type = "sunburst",
    branchvalues = 'total',
    height = 400
  )

fig_sb

