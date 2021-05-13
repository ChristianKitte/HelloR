# Title     : Untersuchen eines Datasets
# Objective : Das Dataset esoph soll untersucht werden
# Created by: Christian Kitte
# Created on: 13.05.2021

# Gibt eine Liste aller in R verfügbaren Datasets zurück
# data()

# Verfügbar machen des gesuchten Datasets
esoDS = datasets::esoph
head <- head(esoDS,3)
writeLines ("Head:")
head

writeLines ("Tail:")
tail <- tail(esoDS,3)
tail
