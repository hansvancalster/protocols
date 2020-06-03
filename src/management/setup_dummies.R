# one time setup

library(protocolhelper)
library(rprojroot)
git_root <- find_root(is_git_root)
path_to_from_docx <- file.path(git_root, "from_docx")

#debugonce(create_sfp)

create_sfp(title = "Klassieke vegetatieopname in een proefvlak aan de hand van visuele inschattingen van bedekking van soorten in (semi-)terrestrische vegetatie",
           subtitle = "", 
           short_title = "vegopname terrest",
           authors = "Els De Bie", 
           date = "2016-07-19", 
           reviewers = "Hans Van Calster, Lieve Vriens, Jan Wouters, Wouter Van Gompel, Els Lommelen", 
           file_manager = "Hans Van Calster", 
           revision = "2020.01",
           theme = "vegetation",
           language = "nl",
           from_docx = 
             file.path(path_to_from_docx, 
                       "SVP_401_VegetatieOpnamePV_Terrestrisch_v1.1.docx"),
           protocol_number = "401", 
           render = FALSE)


create_sfp(title = "titel van het protocol",
           subtitle = "optionele subtitel", 
           short_title = "korte titel",
           authors = "Voornaam Naam", 
           date = Sys.Date(), 
           reviewers = "Voornaam Naam, ...", 
           file_manager = "Voornaam Naam", 
           revision = "2020.02",
           theme = "vegetation",
           language = "nl",
           from_docx = NULL,
           protocol_number = NULL, 
           render = FALSE)


create_sfp(title = "titel van het protocol",
           subtitle = "optionele subtitel", 
           short_title = "dummy2",
           authors = "Voornaam Naam", 
           date = Sys.Date(), 
           reviewers = "Voornaam Naam, ...", 
           file_manager = "Voornaam Naam", 
           revision = "2020.03",
           theme = "generic",
           language = "nl",
           from_docx = NULL,
           protocol_number = NULL, 
           render = FALSE)



