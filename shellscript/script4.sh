#!/bin/bash

while true
do
    echo "=================="
    echo "      USER MANAGEMENT       "
    echo "==================
    echo "1. Add User"
    echo "2. Delete User"
    echo "3. Check User"
    echo "4. List Normal Users"
    echo "5. Exit"
    echo "=================="

    read -p "Enter your choice: " choice

    case $choice in

        1)
            read -p "Enter username to add: " username
            if id "$username" &>/dev/null
            then
                echo "User already exists!"
            else
                sudo useradd -m "$username"
                echo "User $username created successfully."
            fi
            ;;

        2)
            read -p "Enter username to delete: " username
            if id "$username" &>/dev/null
            then
                sudo userdel -r "$username"
                echo "User $username deleted successfully."
            else
                echo "User does not exist."
            fi
            ;;

        3)
            read -p "Enter username to check: " username
            if id "$username" &>/dev/null
            then
                echo "User exists."
            else
                echo "User does not exist."
            fi
            ;;

        4)
            echo "List of normal users (UID >= 1000):"
            awk -F: '$3 >= 1000 {print $1}' /etc/passwd
            ;;

        5)
            echo "Exiting..."
            break
            ;;

        *)
            echo "Invalid option!"
            ;;
    esac

done
