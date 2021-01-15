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
      file = find_root_file("src/thematic/4_vegetation/sfp-401_korte-titel_nl/NEWS.Rmd",
                            criterion = is_git_root),
      append = TRUE)

#debugonce(protocolhelper:::render_release)
protocolhelper:::render_release()




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
      file = find_root_file("src/thematic/0_generic/sfp-001_dummy2_nl/NEWS.Rmd",
                            criterion = is_git_root),
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

write(x =  "- [2020.02](https://protocols.inbo.io/2020.02/en/index.html)
  - Eerste engelstalige versie van het protocol",  
      file = find_root_file("src/thematic/0_generic/sfp-001_dummy2_en/NEWS.Rmd",
                            criterion = is_git_root),
      append = TRUE)

#debugonce(protocolhelper:::render_release)
protocolhelper:::render_release()




###################################################################

create_spp(title = "title", 
           subtitle = "", 
           short_title = "my-protocol", 
           authors = c("Jef Beton", "Jos Plastiek"), 
           date = Sys.Date(), 
           reviewers = c("reviewer1, reviewer2"), 
           file_manager = "manager",
           project_name = "mne",
           version_number = "2021.01",
           render = FALSE)
# first adjust NEWS.Rmd

write(x =  "- [2021.01](https://protocols.inbo.io/2021.01/nl/index.html)
  - Eerste versie van het protocol",  
      file = find_root_file("src/project/mne/spp-001_my-protocol_nl/NEWS.Rmd",
                            criterion = is_git_root),
      append = TRUE)

protocolhelper:::render_release()



