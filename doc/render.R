
# Rendu des fiches

# Fiche 1 : Installation des outils --------------------------------------------

rmarkdown::render("./doc/Fiche_1_a_Installation_des_outils_FR.Rmd",
                  output_dir = "Fiches", output_format = "all")
rmarkdown::render("./doc/Sheet_1_a_Tools_installation_EN.Rmd",
                  output_dir = "Sheets", output_format = "all")
rmarkdown::render("./doc/Fiche_1_b_Installation_des_outils_advanced_FR.Rmd",
                  output_dir = "Fiches", output_format = "all")
rmarkdown::render("./doc/Sheet_1_b_Tools_installation_advanced_EN.Rmd",
                  output_dir = "Sheets", output_format = "all")
