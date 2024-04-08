
# Rendu des fiches -------------------------------------------------------------

# Fiches FR
rmarkdown::render(list.files("./doc/FR/", full.names = TRUE),
                  output_dir = "Fiches", output_format = "all")

# Sheets EN
rmarkdown::render(list.files("./doc/EN/", full.names = TRUE),
                  output_dir = "Sheets", output_format = "all")
