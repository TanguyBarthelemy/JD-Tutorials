
# Rendu des fiches -------------------------------------------------------------

# Fiches FR
for (fiche_rmd in list.files("./doc/FR/", full.names = TRUE, pattern = "*.Rmd")) {
    rmarkdown::render(
        input = fiche_rmd,
        output_dir = "Fiches",
        output_format = "all"
    )
}

# Sheets EN
for (sheet_rmd in list.files("./doc/EN/", full.names = TRUE, pattern = "*.Rmd")) {
    rmarkdown::render(
        input = sheet_rmd,
        output_dir = "Sheets",
        output_format = "all"
    )
}
