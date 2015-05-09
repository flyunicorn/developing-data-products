---
title       : Developing data products
subtitle    : Course project
author      : Cynthia Li
job         : Data scientist
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Handy BMI application for pregnancy weight gain

- Why is it needed?

1. A woman's weight and height will exert an influence on how much she would gain weight during pregnancy 
2. We use "body mass index," or BMI as measurement metrics

--- .class #id 

## How does the calculation work?

- The calculator takes 2 inputs:

1. Pre-pregnancy height (in cm)
2. Pre-pregnancy weight (in kg)


```r
pBMI<-function(Weight,Height) {
        if (Weight==0 | Height==0) return(NA)
        else  return(round(Weight/(Height/100)^2,1))
}
```

--- .class #id 
## How to use the calculation application?

- The user selects the relevant values using a sidebar panel.

- BMI is calculated in the main panel using the formula in previous slide(embedded R code)

- The user's recommended pregnancy weight gain will be printed.

--- .class #id 
## Resources

http://flyunicorn.shinyapps.io/data
