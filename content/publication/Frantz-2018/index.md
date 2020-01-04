---
title: "Improvement of the Fmask algorithm for Sentinel-2 images: Separating clouds from bright surfaces based on parallax effects"
date: 2018-01-01
publishDate: 2019-12-14T12:44:52.339718Z
authors: ["David Frantz", "Erik Haß", "Andreas Uhl", "Johannes Stoffels", "Joachim Hill"]
publication_types: ["2"]
abstract: "Reliable identification of clouds is necessary for any type of optical remote sensing image analysis, especially in operational and fully automatic setups. One of the most elaborated and widespread algorithms, namely Fmask, was initially developed for the Landsat suite of satellites. Despite their similarity, application to Sentinel-2 imagery is currently hampered by the unavailability of a thermal band, and although results can be improved when taking the cirrus band into account, Sentinel-2 cloud detections are unsatisfactory in two points. (1) Low altitude clouds can be undetectable in the cirrus band, and (2) bright land surfaces – especially built-up structures – are often misclassified as clouds when only considering spectral information. In this paper, we present the Cloud Displacement Index (CDI), which makes use of the three highly correlated near infrared bands that are observed with different view angles. Hence, elevated objects like clouds are observed under a parallax and can be reliably separated from bright ground objects. We compare CDI with the currently used cloud probabilities, and propose how to integrate this new functionality into the Fmask algorithm. We validate the approach using test images over metropolitan areas covering a wide variety of global environments and climates, indicating the successful separation of clouds and built-up structures (overall accuracy 95%, i.e. an improvement in overall accuracy of 0.29–0.39 compared to the previous Fmask versions over the 20 test sites), and hence a full compensation for a missing thermal band."
featured: false
publication: "*Remote Sensing of Environment*"
url_pdf: "https://www.sciencedirect.com/science/article/pii/S0034425718302037/pdfft?md5=cf2c266b030ce1585e07be601c331003&pid=1-s2.0-S0034425718302037-main.pdf"
doi: "10.1016/j.rse.2018.04.046"
---

