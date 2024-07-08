#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"
SECRET_NUMBER=$(( $RANDOM % 1000 + 1 ))

echo "Enter your username:"
read USERNAME

EXISTING_USER=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")

if [[ -z $EXISTING_USER ]]
then
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN users USING(user_id) WHERE username='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games INNER JOIN users USING(user_id) WHERE username='$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Grab user_id
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

TRIES=1
GUESS=0

GUESSING_MACHINE() {
  read GUESS

  while [[ ! $GUESS =~ ^[0-9]+$ ]]
  do
    echo "That is not an integer, guess again:"
    read GUESS
  done

  while [[ $GUESS -ne $SECRET_NUMBER ]]
  do
    TRIES=$((TRIES + 1))

    if [[ $GUESS -gt $SECRET_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
    else
      echo "It's higher than that, guess again:"
    fi

    read GUESS

    while [[ ! $GUESS =~ ^[0-9]+$ ]]
    do
      echo "That is not an integer, guess again:"
      read GUESS
    done
  done
}

echo "Guess the secret number between 1 and 1000:"
GUESSING_MACHINE

# Insert data from game
INSERTED_GAME=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $TRIES)")
echo "You guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
