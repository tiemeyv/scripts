#!/usr/bin/bash
echo "Welcome to rock, paper, scissors" 

read -p "Player 1: Please choose rock, paper, scissors: " PLAYER1
read -p "Player 2: Please choose rock, paper, scissors: " PLAYER2
echo -n "Player 1 is $PLAYER1, Player 2 is $PLAYER2"
echo

if [[ $PLAYER1 == "rock" ]]; then
  if [[ $PLAYER2 == "rock" ]]; then
    echo "It's a tie."
  elif [[ $PLAYER2 == "paper" ]]; then
    echo "Player 2 wins! Paper covers rock."
  elif [[ $PLAYER2 == "scissors" ]]; then
    echo "Player 1 wins! Rock smashes scissors."
  fi
fi

if [[ $PLAYER1 == "paper" ]]; then
  if [[ $PLAYER2 == "paper" ]]; then
    echo "It's a tie."
  elif [[ $PLAYER2 == "rock" ]]; then
    echo "Player 1 wins! Paper covers rock."
  elif [[ $PLAYER2 == "scissors" ]]; then
    echo "Player 2 wins! Scissors cuts paper."
  fi
fi

if [[ $PLAYER1 == "scissors" ]]; then
  if [[ $PLAYER2 == "scissors" ]]; then
    echo "It's a tie."
  elif [[ $PLAYER2 == "paper" ]]; then
    echo "Player 1 wins! Scissors cuts paper."
  elif [[ $PLAYER2 == "scissors" ]]; then
    echo "Player 2 wins! Rock smashes scissors."
  fi
fi
