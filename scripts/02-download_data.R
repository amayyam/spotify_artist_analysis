#### Preamble ####
# Purpose: Downloads and saves the data from Spotify
# Author: Maryam Ansari
# Date: 10 October 2024
# Contact: mayyam.ansari@mail.utornto.ca
# License: MIT
# Pre-requisites: None.
# Any other information needed? None.


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(spotifyr)


#### Download data ####
radiohead <- get_artist_audio_features("radiohead")
saveRDS(radiohead, "radiohead.rds")

radiohead <- readRDS("radiohead.rds")

#### Save data ####
write_rds(radiohead , "data/01-raw_data/raw_data.rds") 
         
