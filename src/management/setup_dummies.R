# one time setup

library(protocolhelper)
library(rprojroot)
git_root <- find_root(is_git_root)
path_to_from_docx <- file.path(git_root, "from_docx")

#debugonce(create_sfp)

create_sfp(title = "titel van het protocol",
           subtitle = "optionele subtitel", 
           short_title = "korte titel",
           authors = c("Voornaam Naam"), 
           date = Sys.Date(), 
           reviewers = c("Voornaam Naam, Peter Pan"), 
           file_manager = c("Voornaam Naam"), 
           version_number = "2020.01",
           theme = "vegetation",
           language = "nl",
           from_docx = NULL,
           protocol_number = NULL, 
           render = FALSE)

# first adjust NEWS.Rmd

write(x =  "- [2020.01](https://protocols.inbo.io/2020.01/nl/index.html)
  - Eerste versie van het protocol",  
      file = "src/thematic/4_vegetation/sfp-401_korte-titel_nl/NEWS.Rmd",
      append = TRUE)

#debugonce(protocolhelper:::render_release)
protocolhelper:::render_release(version_number = "2020.01")




create_sfp(title = "titel van het protocol",
           subtitle = "optionele subtitel", 
           short_title = "dummy2",
           authors = "Voornaam Naam", 
           date = Sys.Date(), 
           reviewers = c("Voornaam Naam"), 
           file_manager = "Voornaam Naam", 
           version_number = "2020.02",
           theme = "generic",
           language = "nl",
           from_docx = NULL,
           protocol_number = NULL, 
           render = FALSE)

write(x =  "- [2020.02](https://protocols.inbo.io/2020.02/nl/index.html)
  - Eerste nl versie van het protocol",  
      file = "src/thematic/0_generic/sfp-001_dummy2_nl/NEWS.Rmd",
      append = TRUE)


create_sfp(title = "titel van het protocol",
           subtitle = "optionele subtitel", 
           short_title = "dummy2",
           authors = "Voornaam Naam", 
           date = Sys.Date(), 
           reviewers = c("Voornaam Naam"), 
           file_manager = "Voornaam Naam", 
           version_number = "2020.02",
           theme = "generic",
           language = "en",
           from_docx = NULL,
           protocol_number = NULL, 
           render = FALSE)

write(x =  "- [2020.02](https://protocols.inbo.io/2020.02/nl/index.html)
  - Eerste engelstalige versie van het protocol",  
      file = "src/thematic/0_generic/sfp-001_dummy2_en/NEWS.Rmd",
      append = TRUE)

debugonce(protocolhelper:::render_release)
protocolhelper:::render_release(version_number = "2020.02")
# problem: no result written to publish/2020.02/en
# and In file.rename(from = path_ext_set(path(output_new_root, z$params$language,  :
# cannot rename file 'C:/R/GitRepositories/protocols-fork/publish/2020.02/en/sfp-001_dummy2_en
# .html' to 'C:/R/GitRepositories/protocols-fork/publish/2020.02/en/index.html', reason 'Het systeem kan het opgegeven pad niet vinden'

# setwd("c:/R/GitRepositories/protocols-fork/src/thematic/0_generic/sfp-001_dummy2_en/")
# bookdown::render_book(
#   input = "index.Rmd",
#   output_dir = "../../../../publish/2020.02/en/")

