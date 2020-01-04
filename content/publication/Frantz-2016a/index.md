---
title: "An Operational Radiometric Landsat Preprocessing Framework for Large-Area Time Series Applications"
date: 2016-01-01
publishDate: 2019-12-14T12:44:52.340303Z
authors: ["David Frantz", "Achim Röder", "Marion Stellmes", "Joachim Hill"]
publication_types: ["2"]
abstract: "We developed a large-area preprocessing framework for multisensor Landsat data, capable of processing large data volumes. Cloud and cloud shadow detection is performed by a modified Fmask code. Surface reflectance is inferred from Tanré's formulation of the radiative transfer, including adjacency effect correction. A precompiled MODIS water vapor database provides daily or climatological fallback estimates. Aerosol optical depth (AOD) is estimated over dark objects (DOs) that are identified in a combined database and image-based approach, where information on their temporal persistency is utilized. AOD is inferred with consideration of the actual target reflectance and background contamination effect. In case of absent DOs in bright scenes, a fallback approach with a modeled AOD climatology is used instead. Topographic normalization is performed by a modified C-correction. The data are projected into a single coordinate system and are organized in a gridded data structure for simplified pixel-based access. We based the assessment of the produced data set on an exhaustive analysis of overlapping pixels: 98.8% of the redundant overlaps are in the range of the expected ±2.5% overall radiometric algorithm accuracy. AOD is in very good agreement with Aerosol Robotic Network sunphotometer data (R 2 : 0.72 to 0.79, low intercepts, and slopes near unity). The uncertainty in using the water vapor fallback climatology is approximately ±2.8% for the TM SWIR1 band in the wet season. The topographic correction was considered successful by an investigation of the nonrelationship between the illumination angle and the corrected radiance."
featured: false
publication: "*IEEE Transactions on Geoscience and Remote Sensing*"
url_pdf: "https://www.uni-trier.de/fileadmin/fb6/prof/FER/Publikationen/frantz_et_al_ieee-tgrs-2016-post-print.pdf"
url_dataset: "https://doi.pangaea.de/10.1594/PANGAEA.893109"
doi: "10.1109/TGRS.2016.2530856"
---

