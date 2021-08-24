---
title: "Comparison of Masking Algorithms for Sentinel-2 Imagery"
date: 2021-01-04
publishDate: 2021-01-04T10:00:00.0Z
authors: ["Viktoria Zekoll", "Magdalena Main-Knorn", "Jerome Louis", "David Frantz", "Rudolf Richter", "Bringfried Pflug"]
publication_types: ["2"]
abstract: "Masking of clouds, cloud shadow, water and snow/ice in optical satellite imagery is an important step in automated processing chains. We compare the performance of the masking provided by Fmask (“Function of mask” implemented in FORCE), ATCOR (“Atmospheric Correction”) and Sen2Cor (“Sentinel-2 Correction”) on a set of 20 Sentinel-2 scenes distributed over the globe covering a wide variety of environments and climates. All three methods use rules based on physical properties (Top of Atmosphere Reflectance, TOA) to separate clear pixels from potential cloud pixels, but they use different rules and class-specific thresholds. The methods can yield different results because of different definitions of the dilation buffer size for the classes cloud, cloud shadow and snow. Classification results are compared to the assessment of an expert human interpreter using at least 50 polygons per class randomly selected for each image. The class assignment of the human interpreter is considered as reference or “truth”. The interpreter carefully assigned a class label based on the visual assessment of the true color and infrared false color images and additionally on the bottom of atmosphere (BOA) reflectance spectra. The most important part of the comparison is done for the difference area of the three classifications considered. This is the part of the classification images where the results of Fmask, ATCOR and Sen2Cor disagree. Results on difference area have the advantage to show more clearly the strengths and weaknesses of a classification than results on the complete image. The overall accuracy of Fmask, ATCOR, and Sen2Cor for difference areas of the selected scenes is 45%, 56%, and 62%, respectively. User and producer accuracies are strongly class- and scene-dependent, typically varying between 30% and 90%. Comparison of the difference area is complemented by looking for the results in the area where all three classifications give the same result. Overall accuracy for that “same area” is 97% resulting in the complete classification in overall accuracy of 89%, 91% and 92% for Fmask, ATCOR and Sen2Cor respectively."
featured: false
publication: "*Remote Sensing*"
url_pdf: "https://www.mdpi.com/2072-4292/13/1/137/pdf"
doi: "10.3390/rs13010137"
---

