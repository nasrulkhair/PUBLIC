#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n~~~~~ MY SALON ~~~~~\n"
echo -e "\nWelcome to My Salon, how can I help you?\n"

MAIN_MENU() {
  if [[ $1 ]]; then
    echo -e "\n$1"
  fi

  # Show available services
  GET_SERVICES=$($PSQL "SELECT service_id, name FROM services ORDER BY service_id;")

  if [[ -z $GET_SERVICES ]]; then
    echo "Sorry, we don't have any services right now."
  # case there ii is.
  else
    echo -e "$GET_SERVICES" | while read SERVICE_ID BAR NAME; 
    do
      echo "$SERVICE_ID) $NAME"
    done
    echo "10) Exit"

    
    # Get customer's selection
    read -p "Please select a service by entering the corresponding number: " SERVICE_ID_SELECTED
    
    # Check if input is invalid
    if [[ ! $SERVICE_ID_SELECTED =~ ^[0-9]+$ ]]; 
    then
      MAIN_MENU "Invalid input. Please enter a valid service number."
    fi

    # Validate selected service
    VALID_SERVICE=$($PSQL "SELECT service_id FROM services WHERE service_id=$SERVICE_ID_SELECTED")
      
    if [[ -z $VALID_SERVICE ]]; then
      MAIN_MENU "Invalid service selection. Please try again."
      return
    fi
    
    echo -e "\nYou selected service: $SERVICE_ID_SELECTED"

    # Prompt for phone number
    read -p "What's your phone number? " CUSTOMER_PHONE
    
    # Check if customer exists based on phone number
    CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
    
    if [[ -z $CUSTOMER_NAME ]]; then
      # Customer does not exist, prompt for name
      read -p "I don't have a record for that phone number. What's your name? " CUSTOMER_NAME
      
      # Insert new customer
      CUSTOMER_INFO=$($PSQL "INSERT INTO customers(phone, name) VALUES ('$CUSTOMER_PHONE', '$CUSTOMER_NAME') RETURNING customer_id;")
      CUSTOMER_ID=$(echo $CUSTOMER_INFO | awk '{print $1}')  # Assuming customer_id is returned as the first column
    else
      # Customer exists, fetch customer_id
      CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")
      CUSTOMER_ID=$(echo $CUSTOMER_ID | awk '{print $1}')  # Extract customer_id from query result
    fi
    
    # Get service name for the appointment
    SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
    
    # Prompt for service time
    read -p "What time would you like your $(echo $SERVICE_NAME | sed -r 's/^ *| *$//g') appointment, $(echo $CUSTOMER_NAME | sed -r 's/^ *| *$//g')? " SERVICE_TIME
    
    # Insert into appointments table
    APPOINTMENT_TIME=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES ($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME');")
    
    echo -e "\nI have put you down for a $(echo $SERVICE_NAME | sed -r 's/^ *| *$//g') at $SERVICE_TIME, $(echo $CUSTOMER_NAME | sed -r 's/^ *| *$//g')."
    
    # Exit the script 
    exit 0
  fi
}

# Call the main menu function 
MAIN_MENU
