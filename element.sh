#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"
if [[ -z $1 ]]
then
  echo -e "Please provide an element as an argument."
else
  #chek by atomic_number
  if [[  $1 =~ ^[0-9]+$ ]]
  then  
    ELEMENT=$($PSQL "SELECT atomic_number, symbol, name FROM elements WHERE atomic_number=$1")
    #echo $ELEMENT  
  fi  
  if [[ -z $ELEMENT ]]
  then
  
    #echo "not atomic_number"
    ELEMENT=$($PSQL "SELECT * FROM elements WHERE symbol='$1'")
    if [[ -z $ELEMENT ]]
    then    
      #not symbol
      ELEMENT=$($PSQL "SELECT * FROM elements WHERE name='$1'")      
    fi
  fi
  if [[ -z $ELEMENT ]]
  then
        echo "I could not find that element in the database."
  else   
    echo "$ELEMENT" | while read ATOMIC_NUMBER BAR SYMBOL BAR NAME
    do
      PROPERTIES=$($PSQL "SELECT * FROM properties LEFT JOIN types USING(type_id) WHERE atomic_number=$ATOMIC_NUMBER")
      echo "$PROPERTIES" | while read TYPE_ID BAR ATOMIC_NUMBER BAR ATOMIC_MASS BAR MELTING BAR BOILING BAR TYPE
      do
        echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
      done  
    done  
  fi
fi
