---
title: FORCE
summary: ... is an all-in-one solution for the mass-processing and analysis of medium-resolution satellite image archives for large area + time series applications.
tags:
- C/C++
- Linux
- Open Source
- GPL >= 3.0
- Earth Observation
- Big Data
- Large Area
- Landsat
- Sentinel-2
- Sentinel-1
- Analysis Ready Data
- highly Analysis Ready Data
- highly Analysis Ready Data plus
- Virtual Constellation
- Data harmonization
- Level 2 processing
- Level 3 processing
- Level 4 processing
- Atmospheric correction
- Topographic correction
- NBAR correction
- Adjacency effect correction
- Cloud detection
- Quality Screened Time Series
- Resolution merging
- Time Series Analysis
- Spectral Temporal Metrics
- Best Available Pixel composites
- Time Series interpolation
- Change and Trend analyses
- Land Surface Phenology
- Clear Sky Observations
- Data fusion
- Machine Learning
date: "2019-12-15T00:00:00Z"

# Optional external URL for project (replaces project detail page).
external_link: ""

image:
  caption: ""
  focal_point: Smart

links:
- icon: github
  icon_pack: fab
  name: Code
  url: http://force.feut.de
- icon: user-cog
  icon_pack: fas
  name: User Guide
  url: https://www.researchgate.net/publication/328094593_FORCE_v_20_-_Technical_User_Guide
- icon: jedi
  icon_pack: fas
  name: Tutorials
  url: deadlink
- icon: file-pdf
  icon_pack: fas
  name: Core paper
  url: https://www.mdpi.com/2072-4292/11/9/1124/pdf
- icon: file-powerpoint
  icon_pack: fas
  name: Slides
  url: https://www.researchgate.net/publication/333220680_FORCE_-_Analysis_Ready_Data_and_Beyond
- icon: envelope
  icon_pack: fas
  name: Contact
  url: mailto:david.frantz@geo.hu-berlin.de
- icon: twitter
  icon_pack: fab
  name: "#FORCE_EO"
  url: https://twitter.com/search?q=%23FORCE_EO&src=typed_query
- icon: twitter
  icon_pack: fab
  name: "Follow"
  link: https://twitter.com/d__frantz
- icon: researchgate
  icon_pack: fab
  name: Follow
  url: https://www.researchgate.net/project/FORCE-Framework-for-Operational-Radiometric-Correction-for-Environmental-monitoring
url_code: ""
url_pdf: ""
url_slides: ""
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: ""
---

**FORCE** is an all-in-one solution for the mass-processing of selected medium-resolution satellite image archives to enable large area + time series applications. Currently supported are Landsat 4/5 TM, Landsat 7 ETM+, Landsat 8 OLI and Sentinel-2 A/B MSI. The software is capable of processing Level 1 products as obtained from the space agencies to Level 2–4 products.

## Download

**FORCE** may be used and downloaded for **free**! It is completely open source and there are no restrictions on usage (for details see [GPL License](http://www.gnu.org/licenses/)).

The current version (2.1) can be downloaded from  [Trier University](http://force.feut.de) after a short self-registration.

> *However, it is requested that you to use the software in accordance with academic standards and fair usage. Without this, software like _FORCE_ will not survive. This includes citation of the software and the scientific publications, proper acknowledgement in any public presentation, or an offer of co-authorship of scientific articles in case substantial help in setting up, modifying or running the software is provided. At minimum, the citation of the* [*key paper*]({{< ref "publication/Frantz-2019a/index.md">}}) *is requested.*


## The main features are

- Integration of Landsat 4–8, and Sentinel-2 A/B as Virtual Constellation.
- Data management of Landsat and Sentinel-2 Level 1 data + Download of Sentinel-2 data.
- Near-realtime (NRT) processing capability.
- Generation of Analysis Ready Data (ARD). Advanced cloud and cloud shadow detection. Quality screening. Integrated atmospheric and topographic correction: one algorithm for all sensors. Adjacency effect correction. BRDF reduction. Resolution merge of Sentinel-2 bands: 20m --> 10m. Data cubing: reprojection / gridding.
- Generation of highly Analysis Ready Data (hARD). Large area. Gap free. Best Available Pixel (BAP) composites. Phenology Adaptive Composites (PAC). Spectral Temporal Metrics (STM). Ideal input for your Machine Learners!
- Generation of highly Analysis Ready Data plus (hARD+). Time Series generation: spectral bands, spectral indices, Spectral Mixture Analysis (SMA). Time series folding. Time series interpolation. Time series statistics. Trend analysis. Change, Aftereffect, Trend (CAT) analysis. Land Surface Phenology (LSP).
- Detailed data mining of the Clear Sky Observation (CSO) availability.
- Data Fusion. Improving spatial resolution of coarse continuous fields: MODIS LSP --> medium resolution LSP. Improving spatial resolution of lower resolution ARD using higher resolution ARD: 30m Landsat --> 10m using Sentinel-2 targets

