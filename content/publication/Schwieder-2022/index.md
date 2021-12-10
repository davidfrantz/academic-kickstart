---
title: "Mapping grassland mowing events across Germany based on combined Sentinel-2 and Landsat 8 time series"
date: 2021-11-25
publishDate: 2021-11-25T08:00:0.0Z
authors: ["Marcel Schwieder", "Maximilian Wesemeyer", "David Frantz", "Kira Pfoch", "Stefan Erasmi", "Jürgen Pickert", "Claas Nendel", "Patrick Hostert"]
publication_types: ["2"]
abstract: "Spatially explicit knowledge on grassland extent and management is critical to understand and monitor the impact of grassland use intensity on ecosystem services and biodiversity. While regional studies allow detailed insights into land use and ecosystem service interactions, information on a national scale can aid biodiversity assessments. However, for most European countries this information is not yet widely available. We used an analysis-ready-data cube that contains dense time series of co-registered Sentinel-2 and Landsat 8 data, covering the extent of Germany. We propose an algorithm that detects mowing events in the time series based on residuals from an assumed undisturbed phenology, as an indicator of grassland use intensity. A self-adaptive ruleset enabled to account for regional variations in land surface phenology and non-stationary time series on a pixel-basis. We mapped mowing events for the years from 2017 to 2020 for permanent grassland areas in Germany. The results were validated on a pixel level in four of the main natural regions in Germany based on reported mowing events for a total of 92 (2018) and 78 (2019) grassland parcels. Results for 2020 were evaluated with combined time series of Landsat, Sentinel-2 and PlanetScope data. The mean absolute percentage error between detected and reported mowing events was on average 40% (2018), 36% (2019) and 35% (2020). Mowing events were on average detected 11 days (2018), 7 days (2019) and 6 days (2020) after the reported mowing. Performance measures varied between the different regions of Germany, and lower accuracies were found in areas that are revisited less frequently by Sentinel-2. Thus, we assessed the influence of data availability and found that the detection of mowing events was less influenced by data availability when at least 16 cloud-free observations were available in the grassland season. Still, the distribution of available observations throughout the season appeared to be critical. On a national scale our results revealed overall higher shares of less intensively mown grasslands and smaller shares of highly intensively managed grasslands. Hotspots of the latter were identified in the alpine foreland in Southern Germany as well as in the lowlands in the Northwest of Germany. While these patterns were stable throughout the years, the results revealed a tendency to lower management intensity in the extremely dry year 2018. Our results emphasize the ability of the approach to map the intensity of grassland management throughout large areas despite variations in data availability and environmental conditions."
featured: false
publication: "*Remote Sensing of Environment*"
url_pdf: "https://www.sciencedirect.com/science/article/pii/S0034425721005150/pdfft?isDTMRedir=true&download=true"
links:
 -  name: Dataset
    url: "https://zenodo.org/record/5571613#.YbMIt9DMKCo"
 -  name: Code
    url: "https://github.com/davidfrantz/force-udf/tree/main/python/ts/mowingDetection"
 -  name: Webmap
    url: "https://ows.geo.hu-berlin.de/webviewer/mowing-detection/index.html"
doi: "https://doi.org/10.1016/j.rse.2021.112795"
---

