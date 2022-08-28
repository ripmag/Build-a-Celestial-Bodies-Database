#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

if [[ -z $1 ]]
then
  echo "Enter your username:"
  read USERNAME
else
  USERNAME=$1
fi

USER_NAME=$($PSQL "SELECT name FROM users WHERE name='$USERNAME'")

if [[ -z $USER_NAME ]]
then
  INSERT_USER=$($PSQL "INSERT INTO users (name) VALUES('$USERNAME')")
  USER_NAME=$($PSQL "SELECT name FROM users WHERE name='$USERNAME'")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME'")

  #echo $USER_ID
  echo -e "Welcome, $USERNAME! It looks like this is your first time here."
else
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME'")
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID")
  BEST_RESULT=$($PSQL "SELECT MIN(result) FROM games WHERE user_id=$USER_ID")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_RESULT guesses." | sed -r "s/ +/ /g"
fi

SECRET_NUMBER=$[ $RANDOM % 1000 + 1 ]
#echo $SECRET_NUMBER
echo -e "\nGuess the secret number between 1 and 1000:"
read INPUT
COUNT=1
while [ $SECRET_NUMBER != $INPUT ]
do
  if [[ ! $INPUT =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  else
    COUNT=$(( $COUNT + 1 ))
    if [[  $INPUT > $SECRET_NUMBER ]]
    then
      echo "It's higher than that, guess again:"
    else
      echo "It's lower than that, guess again:"
    fi
  fi
  read INPUT   
done
#add game to DB
INSERT_GAME=$($PSQL "INSERT INTO games (user_id,result) VALUES($USER_ID,$COUNT)")

#echo "You guessed it in $COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
echo   "You guessed it in $COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
#echo $INSERT_GAME
