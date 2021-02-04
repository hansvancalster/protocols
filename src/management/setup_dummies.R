# one time setup

library(protocolhelper)
library(rprojroot)
git_root <- find_root(is_git_root)
path_to_from_docx <- file.path(git_root, "from_docx")

#debugonce(create_sfp)

fs::dir_delete(find_root_file("publish", criterion = is_git_root))
fs::dir_delete(find_root_file("docs/project", criterion = is_git_root))
fs::dir_delete(find_root_file("docs/thematic", criterion = is_git_root))
fs::dir_delete(find_root_file("src/thematic", criterion = is_git_root))
fs::dir_delete(find_root_file("src/project", criterion = is_git_root))

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
      file = find_root_file("src/thematic/4_vegetation/sfp-401-nl_korte-titel/NEWS.Rmd",
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
      file = find_root_file("src/thematic/0_generic/sfp-001-nl_dummy2/NEWS.Rmd",
                            criterion = is_git_root),
      append = TRUE)


create_sfp(title = "titel van het protocol",
           subtitle = "optionele subtitel", 
           short_title = "dummy2",
           authors = "Voornaam Naam", 
           date = Sys.Date(), 
           reviewers = c("Voornaam Naam"), 
           file_manager = "Voornaam Naam", 
           version_number = "2020.03",
           theme = "generic",
           language = "en",
           from_docx = NULL,
           protocol_number = NULL, 
           render = FALSE)

write(x =  "- [2020.03](https://protocols.inbo.io/2020.02/en/index.html)
  - Eerste engelstalige versie van het protocol",  
      file = find_root_file("src/thematic/0_generic/sfp-001-en_dummy2/NEWS.Rmd",
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
      file = find_root_file("src/project/mne/spp-001-nl_my-protocol/NEWS.Rmd",
                            criterion = is_git_root),
      append = TRUE)

protocolhelper:::render_release()


# update protocol

# make some change
write(x =  "Dit protocol is afhankelijk van ...",  
      file = find_root_file("src/thematic/4_vegetation/sfp-401-nl_korte-titel/01_afhankelijkheden.Rmd",
                            criterion = is_git_root),
      append = TRUE)

# update version number
indextext <- readLines(
  con = find_root_file("src/thematic/4_vegetation/sfp-401-nl_korte-titel/index.Rmd",
                       criterion = is_git_root))

indextext[10] <- "  version_number: \"2021.02\""
writeLines(text = indextext, 
           con = find_root_file("src/thematic/4_vegetation/sfp-401-nl_korte-titel/index.Rmd",
                                criterion = is_git_root))

write(x =  "- [2021.02](https://protocols.inbo.io/2021.02/nl/index.html)
  - Tweede versie van het protocol",  
      file = find_root_file("src/thematic/4_vegetation/sfp-401-nl_korte-titel/NEWS.Rmd",
                            criterion = is_git_root),
      append = TRUE)

protocolhelper:::render_release()


