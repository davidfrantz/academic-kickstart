---
title: "Enhancing the Detectability of Clouds and Their Shadows in Multitemporal Dryland Landsat Imagery: Extending Fmask"
date: 2015-01-01
publishDate: 2019-12-14T12:44:52.340855Z
authors: ["David Frantz", "Achim Röder", "Thomas Udelhoven", "Michael Schmidt"]
publication_types: ["2"]
abstract: "We developed a new two-step approach for automated masking of clouds and their shadows in Landsat imagery. The first step consists of detecting clouds and cloud shadows in every Landsat image independently by using the Fmask algorithm. We modified two features of the original Fmask: we dropped the termination criterion for shadow matching, and we appended a darkness filter to counteract false positives in bifidly structured dryland areas. The second step utilizes the scene-by-scene detections of the first step and additional time series of cloud and cloud shadow probabilities. All clear-sky observations of a pixel are used to estimate the probabilities' median and standard deviation. Any observation that deviates more than a multiple of the standard deviation from the median is considered an outlier and thus a remaining cloud or cloud shadow. The method was specifically designed for use in water-limited dryland areas, where event-based precipitation is predominant. As an effect, green vegetation peaks are highly variable, in timing, magnitude, and frequency, with adverse effects on commonly used Fourier-based outlier detection methods. The method is designed to be robust even if temporally dense data coverage is not available."
featured: false
publication: "*IEEE Geoscience and Remote Sensing Letters*"
url_pdf: "https://www.uni-trier.de/fileadmin/fb6/prof/FER/Publikationen/frantz_et_al_ieee-grsl-2015-post-print.pdf"
doi: "10.1109/lgrs.2015.2390673"
---

