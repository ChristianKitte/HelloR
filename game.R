# Title     : Number Guess Game
# Objective : A tiny game in which a user have to guess a random number
# Created by: Christian Kitte
# Created on: 12.05.2021

#Main routine. In fact it's a simple endless loop. Will be finished by guess the right number or type "q".
play <- function( ) {
  outputString <- ""
  inputValue <- -1
  oldInputValue <- -1

  # According to:
  # https://stat.ethz.ch/R-manual/R-devel/library/stats/html/Uniform.html
  # We have to adjust our min and max values to min=1 an max =101 to get a real range of 1 to 100.
  currentValue <- floor( runif( 1, 1, 101 ) )

  # Until we guess the number...
  while ( currentValue != inputValue ) {
    inputString <- readline( prompt = "Bitte raten sie eine Zahl!" )

    # We have to save the old value in case the new number is invalid
    oldInputValue <- inputValue
    inputValue <- getInteger( inputString )

    if ( is.na( inputValue ) == TRUE ) {
      # not a number

      if ( inputString == "q" ) {
        # Exit by user...
        outputString <- "Auf Wiedersehen !!!"
        writeLines( outputString )
        break
      }

      inputValue <- oldInputValue
      outputString <- "Bitte geben sie nur ganze, positive Zahlen ein!"
    } else {
      # a number

      if ( currentValue > inputValue ) {
        outputString <- "Diese Zahl war zu klein..." }
      else if ( currentValue < inputValue ) {
        outputString <- "Dies Zahl war zu groß..." }
      else if ( currentValue == inputValue ) {
        outputString <- "Gefunden !!!"
        writeLines( outputString )
        break
      }
    }

    # writeLines( paste( "Ihre Eingabe war: ", inputValue, " ", currentValue ) )
    writeLines( paste( "Ihre Eingabe war: ", inputValue ) )
    writeLines( outputString )
  }
}

# Determines whteher the given value is a integer
# Returns an Integer or NA
getInteger <- function( valueToTest ) {
  valueX <- strtoi( valueToTest )
  return( valueX )

  #if ( is.na( valueX ) ) {
  #  return( FALSE )
  #} else {
  #  return( TRUE )
  #}
}

# Writes a welcome string to the console
writeStartString <- function( ) {
  writeLines( "Willkommen zu diesem Spiel." )
  writeLines( "Ihre Aufgabe ist es, eine Zahl zwischen 1 und 100 zu erraten!" )
  writeLines( "Um das Spiel zu beenden, geben Sie q ein..." )
  writeLines( "" )
}

writeStartString( )
play( )