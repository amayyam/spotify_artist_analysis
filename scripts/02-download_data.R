#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(spotifyr)


#### Download data ####
radiohead <- get_artist_audio_features("radiohead")
rihanna <- get_artist_audio_features("rihanna")
saveRDS(radiohead, "radiohead.rds")
saveRDS(rihanna, "rihanna.rds")

radiohead <- readRDS("radiohead.rds")
rihanna <- readRDS("rihanna.rds")

view(rihanna)

#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(radiohead , "~/Desktop/STA304/spotify_artist_analysis/data/01-raw_data/raw_data.csv") 

         
