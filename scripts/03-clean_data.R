#### Preamble ####
# Purpose: Downloads and saves the data from Spotify
# Author: Maryam Ansari
# Date: 10 October 2024
# Contact: mayyam.ansari@mail.utornto.ca
# License: MIT
# Pre-requisites: Download Data
# Any other information needed? None.

library(dplyr)

# Load the data
radiohead_data <- readRDS('data/01-raw_data/raw_data.csv')

# Convert duration from ms to minutes
radiohead_data <- radiohead_data %>%
  mutate(duration_min = duration_ms / 60000)

# Select relevant columns for analysis
cleaned_radiohead_data <- radiohead_data %>%
  select(artist_name, album_name, track_number, duration_min, acousticness, danceability, energy, instrumentalness, valence, tempo)

# Save cleaned data
write_rds(cleaned_radiohead_data, "data/02-analysis_data/analysis_data.rds")
