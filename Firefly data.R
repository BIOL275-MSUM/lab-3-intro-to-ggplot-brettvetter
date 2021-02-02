# Fireflies ---------------------------------------------------------------

library(tidyverse)


# Read data ---------------------------------------------------------------

firefly_data <- read_csv("https://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q19FireflySpermatophoreMass.csv")


# First plot --------------------------------------------------------------

ggplot(data = firefly_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass))

# Clean up plot -----------------------------------------------------------

ggplot(data = firefly_data)

ggplot(data = firefly_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass))

ggplot(data = firefly_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = .01)

ggplot(data = firefly_data) +
  geom_histogram(mapping = aes(x = spermatophoreMAss), binwidth = .01,
                 boundary = 0, closed = "left")

ggplot(data = firefly_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = .01,
                 boundary = 0, closed = "left")

ggplot(data = firefly_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = .005,
                 
                 fill = "#C5351B", color = "black") +
  labs(x = "Mass of spermatophore (mg)", y = "Frequency (number of Fireflies)") +
  
  theme_classic() +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1))
  )

# Bird orders ---------------------------------------------------------------

library(auk)                          # load the auk package
birds <- ebird_taxonomy %>%           # start with the ebird_taxonomy data
  as_tibble() %>%                     # tibbles print better in the console
  filter(category == "species")       # remove non-species taxa

# Bird Order Bar Graph

ggplot(data = ebird_taxonomy) +
  geom_bar(mapping = aes(x = fct_infreq(order)), fill = "#E2A76F", 
           width = .8) +
  labs(x = "Order", y = "Frequency (log number of bird species)", 
       title = "Number of bird species in each order") +
  scale_y_log10() +
  theme_classic(base_size = 12) +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(.8)),
    axis.text.x = element_text(angle = 45, hjust = 1),
    axis.ticks.x = element_blank()
  )
