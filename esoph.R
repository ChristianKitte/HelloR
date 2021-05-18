# Title     : Untersuchen eines Datasets
# Objective : Das Dataset esoph soll untersucht werden.
# Durchführung mit Code und Kommentaren
# Created by: Christian Kitte
# Created on: 13.05.2021

# Gibt eine Liste aller in R verfügbaren Datasets zurück
# data()

# Der esoph DataSet ist in R enthalten, was uns die Möglichkeit gibt,
# etwas über ihn heraus zu bekommen. Es ist immer wichtig, die Daten zu
# kennen, mit denen man arbeitet.
#
# Zum einen geschieht dies durch die Analyse der Daten selbst, aber zum
# anderen mit dem Wissen um die Herkunft der Daten.
help(esoph)

writeLines("")

writeLines("Infos aus dem Dokumenationsfenster:")
writeLines("agegp Altersgruppe  ==> gruppiert")
writeLines("alcgp Alkoholkonsum ==> gruppiert")
writeLines("tobgp Tabakkonsum ==> gruppiert")
writeLines("ncases Anzahl Fälle ==> Anzahl")
writeLines("ncontrols Anzahl der Kontrollen ==> Anzahl")

writeLines("")

# Verfügbar machen des gesuchten Datasets
esoDS <- datasets::esoph

# Mit attributes erhalten wir einen Überblick über die vorhandenen Spalten
# und den Datentyp des objektes
dsAttribs <- attributes(esoDS)
writeLines("Eigenschaften:")
dsAttribs

writeLines("")

# Mit nrow und ncol erhalten wir einen weiteren Einblick in den Umfang der
# vorliegenden Daten
dsRows <- nrow(esoDS)
writeLines("Reihen:")
dsRows

writeLines("")

dsCols <- ncol(esoDS)
writeLines("Spalten:")
dsCols

writeLines("")

# Die Ausgabe der ersten und letzten Datensätze gibt einen weitern Überblick
# über die zu erwartende Qualität. Die Qualität kann trotzdessen in der Mittes
# des Datensatzen nochmals komplett anders sein
head <- head(esoDS, 4)
writeLines("Head:")
head

writeLines("")

writeLines("Tail:")
tail <- tail(esoDS, 4)
tail

writeLines("")
writeLines("Da es sich um Gruppierungen handelt, sind Mittelwerte eher")
writeLines("nicht nützlich.")
writeLines("")

# Daher möchte ich einen Überblick über die Anzahl der Verteilungen
# je Segment aufgeteilt nach der Gruppierung innerhalb des Segmentes
# und der Aufteilung nach den Altersgruppen

barPlotAlkohol <- barplot(table(esoDS$agegp, esoDS$alcgp),
                          beside = TRUE,
                          xlab = "Alkoholgenuss",
                          ylab = "Anzahl Datensätze",
                          main = "Verteilung Alkohol", legend = TRUE)

writeLines("Übersicht Anzahl über Alkoholgenuss, Alter.")
writeLines("Ausgabe im Fenster Plots und als Matrix auf der Konsole:")
barPlotAlkohol

barPlotTabak <- barplot(table(esoDS$agegp, esoDS$tobgp),
                        beside = TRUE,
                        xlab = "Tabakgenuss",
                        ylab = "Anzahl Datensätze",
                        main = "Verteilung Alkohol", legend = TRUE)

writeLines("")
writeLines("Übersicht Anzahl über Tabakgenuss, Alter.")
writeLines("Ausgabe im Fenster Plots und als Matrix auf der Konsole:")
barPlotTabak

writeLines("")
writeLines("Abschließend das gesammte DataSet")
writeLines("")

#esoDS
