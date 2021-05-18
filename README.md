# EA 05 - R Exercise
### Data Science SS 21
### Christian Kitte 

Für die Aufgaben mit R arbeite ich mit der PyCharm IDE von Jetbrains und einem entsprechenden Plugin für die Verwendung von R. 

### 1) Write a program to guess a number in between0 and 100! Hence the computer invents the number and the user = you tries to guess it!

Das Spiel befindet sich in der Datei game.R. Um das Spiel zu starten muss lediglich die Datei als Job ausgeführt werden. Es sind drei Funktionen definiert, welche das Spiel steuern.

Bei der Ausführung wird zuerst WriteStartString() ausgeführt, die ein Begrüßungstext ausgibt, anschließend play(), welche das eigentliche Spiel enthält. Die Funktion getInteger() prüft, ob das Argument ein Integer ist. Alle notwendigen Aktionen werden angezeigt und der Spieler durch das Spiel geführt. Durch Eingabe von “q” wird das Spiel abgebrochen.

### 2) Analyse the esoph dataset. Can you derive some useful statements from it? Use data() to see all available datasets.

Die Datei esoph.R enthält die Lösung dieser Aufgabe. Hierbei überrascht R mit der Vielfalt an verfügbaren Data Sets inklusive des zu untersuchenden Datensatzes esoph. Eine Übersicht über alle verfügbaren DataSets kann man mit der Funktion data() aufrufen.

Ergänzend zu dem Code möchte ich hier kurz eine Übersicht über mein Vorgehen als Teil der Lösung und zusätzliche Erklärung hinzufügen. 

Da das DataSet in R enthalten ist, bietet sich die Funktion help() an, um nähere Angaben zum Aufbau der Daten zu erhalten. Die Angaben können in diesem Fall direkt im Dokumentations Fenster eingesehen werden. In diesem Fall erhalten wir Informationen über die Felder, deren Bedeutung und Gruppierung der Daten. Für fremde DataSets bietet sich die Funktion attributes() an, welche neben den Datentyp in diesem Fall jedoch nur bereits bekannte Informationen liefert.

Mit den Funktionen nrow() und ncol() erhält man einen ersten neutralen Überblick über die einfache Größe des Datensatzes. Auffällig ist, dass der Datensatz mit gerade mal 88 DS recht klein ist und neben den numerischen Angaben gerade mal drei Merkmale hat. Darauf aufbauende Ergebnisse sollten vorsichtig verwendet werden.

Mit dem Befehl head() und tail() erhält man einen ersten Eindruck von den Daten zu Anfang und am Ende des DataSets. Hierbei sollte bewusst sein, dass dies nur bedingt etwas über die Qualität aussagt. Es ist lediglich ein grober insight und gibt einen Eindruck der formalen Datenqualität. In dem vorliegenden Fall fällt nach der Ausgabe beispielsweise sofort auf, dass die Formatierung nicht immer gleichartig ist. 

Wie bereits bekannt, sind die Eigenschaften agegp, alcgp und tobgp gruppiert. Die Gruppe wurde textlich angegeben, was Probleme mit wechselnder Schreibweise ermöglicht. Besser wäre ein numerische Vercodung gewesen.

Die Nutzung von Mittelwerten bietet sich auf den ersten Blick hier wegen der Gruppierung nicht an. Man könnte überlegen, Gruppen aufsteigend zu nummerieren (beispielsweise für das Alter: Je größer die Zahl, je älter die Person von 1 bis 6 gem. den sechs Gruppen) und anschließend schauen, inwiefern Eigenschaften zueinander korrelieren. Durch die geringe Zahl der Datensätze sollte man jedoch auch die daraus resultierenden Aussagen sehr vorsichtig verwenden.

Ein weiterer wichtiger Punkt ist Verteilung der Daten. Hierfür bietet sich neben vielen anderen ein Balkendiagramm via barplot() an. In der ersten Ausgabe ist auf der linken Seite die Anzahl der Datensätze aufgetragen, auf der X-Achse die Segmente für Alkohol jeweils unterteilt in den sechs Altersgruppen. Man erkennt, dass die Verteilung recht ausgewogen ist. Zudem scheint es keine “textlichen Ausreißer” zu geben. Insgesamt kommt man auf 88 DS. Anschließend erfolgt bei der Ausführung des Code eine gleichartige Ausgabe für Tabak. Neben der Ausgabe als Balkendiagramm können die Daten auch direkt als Matrik und in reiner Zahlendarstellung in die Konsole ausgegeben weren. 

Man erkennt, das man bereits mit wenigen Funktionen recht viel über einen Datensatz erfahren kann. Aufbauend darauf lassen sich weitere Analysen durchführen. Die für die hier präsentierten Informationen ist der zugrunde liegende Code sehr übersichtlich. Ein Großteil des verwendeten Codes dient letztlich nur der Ausgabe. 

Meine persönliche Meinung zu R ist, dass sie durchaus nützlich und gerade für jemanden aus dem Bereich der Mathematik sehr zugänglich sein kann. Ich persönlich empfinde einige Konstrukte der Sprache als doch sehr gewöhnungsbedürftig und ebenso die verfügbare Dokumentation. Ansich einfache Dinge scheinen eher kompliziert zu sein und die Sprache ist wenig intuitiv. Ich persönlich wüsste nicht, warum ich von Python mit den entsprechenden Bibliotheken gerade zu R wechseln sollte.
