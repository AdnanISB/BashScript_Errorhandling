#!/bin/bash

#folder="miseacademy"
#read -p "Enter folder name" folder
check_folderexist_foldernotexist() {
    folder=$1

    if [ -z $folder ]; then
        echo "❌ Error: No folder name provided."
        echo "Usage: create_folder_if_not_exists <folder_name>"
        exit 1
    fi 

    if [ -d $folder ]; then
        echo "$folder folder already exists"
    else
        mkdir $folder
        echo "$folder folder has been created successfully"
    fi 
}
read -p "Enter folder name" folder # user input
check_folderexist_foldernotexist $folder