#!/bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games, teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # echo $WINNER
  if [[ $WINNER != "winner"  ]]
  then
    TEAM_ID_A=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    TEAM_ID_B=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    if [[  -z $TEAM_ID_A ]]
    then
      INSERT_TEAMS_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[  $INSERT_TEAMS_RESULT == "INSERT 0 1"  ]]
      then
        echo Inserted into teams, $WINNER
      fi
    fi

    if [[  -z $TEAM_ID_B ]]
    then
      INSERT_TEAMS_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[  $INSERT_TEAMS_RESULT == "INSERT 0 1"  ]]
      then
        echo Inserted into teams, $OPPONENT
      fi
    fi
    # get the updated team id values
    TEAM_ID_A=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    TEAM_ID_B=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    GAME_ID=$($PSQL "SELECT game_id FROM games WHERE year=$YEAR AND round='$ROUND'
    AND winner_id=$TEAM_ID_A AND opponent_id=$TEAM_ID_B AND winner_goals=$WINNER_GOALS 
    AND opponent_goals=$OPPONENT_GOALS")

    if [[ -z $GAME_ID  ]]
    then
      INSERT_GOALS_RESULT=$($PSQL "INSERT INTO games(year, round, winner_goals, opponent_goals, winner_id, opponent_id)
      VALUES($YEAR, '$ROUND', $WINNER_GOALS, $OPPONENT_GOALS, $TEAM_ID_A, $TEAM_ID_B)")
      if [[  $INSERT_GOALS_RESULT == "INSERT 0 1"  ]]
        then
          echo Inserted into games, $YEAR $ROUND $WINNER_GOALS $OPPONENT_GOALS $TEAM_ID_A $TEAM_ID_B
      fi
    fi
  fi

done


