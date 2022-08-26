#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n~~~~~ MY SALON ~~~~~\n"

MAIN_MENU() {
  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi
  echo -e "Welcome to My Salon, how can I help you?\n"
  
  #get all services for menu
  ALL_SERVICES=$($PSQL "SELECT service_id,name FROM services ORDER BY service_id")
  echo "$ALL_SERVICES" | while read SERVICE_ID BAR SERVICE_NAME
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done
  read SERVICE_ID_SELECTED
  #check for digit input  
  if [[ ! $SERVICE_ID_SELECTED =~ ^[0-9]+$ ]]
  then
    #incorrect menu item
    MAIN_MENU
  else
    #have service with same ID?
    SERVICE_ID_SELECTED=$($PSQL "SELECT service_id FROM services WHERE service_id=$SERVICE_ID_SELECTED")
    SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
    #if unknown ID service
    if [[ -z $SERVICE_ID_SELECTED ]]
    then
      MAIN_MENU "Unknown service"
    else
      #have this service, make appointment
      MAKE_RECORD
    fi
  fi
}

MAKE_RECORD (){
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE
  #check customer is in
  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  if [[ -z $CUSTOMER_NAME ]]
  then
    #no found, create new with new name
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME
    #insert new customer to DB
    INSERT_CUSTOMER=$($PSQL "INSERT INTO customers (phone,name) VALUES('$CUSTOMER_PHONE','$CUSTOMER_NAME')")    
  
    #found customer
  fi
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

  #asking for the time
  echo -e "\nWhat time would you like your $SERVICE_NAME, $CUSTOMER_NAME?" | sed 's/  / /g'
  read SERVICE_TIME
  #insert appointment to DB
  INSERT_APPOINTMENT=$($PSQL "INSERT INTO appointments (customer_id,service_id,time) VALUES($CUSTOMER_ID,$SERVICE_ID_SELECTED,'$SERVICE_TIME')")
  if [[ $INSERT_APPOINTMENT == "INSERT 0 1" ]]
  then
    echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME." | sed 's/  / /g'
  fi
  #MAIN_MENU

}


MAIN_MENU