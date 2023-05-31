library(tidyverse)
library(rvest)
library(dplyr)
library(imager)
library(stringr)
#e
html <- read_html("https://editorial.rottentomatoes.com/guide/best-netflix-movies-to-watch-right-now/")
Ranking<- html%>% html_elements(".countdown-index")%>%html_text()
name<- html%>% html_elements("a")%>%html_text()
score<- html%>% html_elements(".tMeterScore")%>%html_text()
year<- html%>% html_elements(".start-year")%>%html_text()
#a
htmla <-read_html("https://www.moneyworks4me.com/best-index/nse-stocks/top-nifty50-companies-list/")
price_change<- htmla%>% html_elements(".text-green")%>%html_text()
name<-htmla%>%html_elements(".company-ellipses a")%>%html_text()
cmp<-htmla%>%html_elements(".stick+ td span")%>%html_text()
week_high<- htmla%>% html_elements("td:nth-child(6) > span")%>%html_text()
week_low<- htmla%>% html_elements("td:nth-child(7) > span")%>%html_text()
roe<- htmla%>% html_elements("td:nth-child(8)")%>%html_text()
pe<- htmla%>% html_elements("td:nth-child(10)")%>%html_text()
pbv<- htmla%>% html_elements("td:nth-child(10)")%>%html_text()
ev<- htmla%>% html_elements("td:nth-child(11)")%>%html_text()
sale<- htmla%>% html_elements("td:nth-child(12)")%>%html_text()
profit<- htmla%>% html_elements("td:nth-child(13)")%>%html_text()
#c 1
tennis <- function(p)
{
  
  if(p>0.5)
  {x= ((p*100)/20)
  }
  else
  {
    x=5
  }
  return(x)
}
#c 2

