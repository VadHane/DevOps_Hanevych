#!/bin/bash

# Перевірка кількості переданих аргументів
if [ "$#" -ne 2 ]; then
    echo "Used: $0 <path_to_dir> <extension>"
    exit 1
fi

# Зчитування аргументів
directory_path="$1"
file_extension="$2"

# Пошук файлів та виведення результату
found_files=$(find "$directory_path" -type f -name "*.$file_extension")

if [ -n "$found_files" ]; then
    echo "Found files with .$file_extension extension in $directory_path dir:"
    echo "$found_files"
else
    echo "The files with .$file_extension extension in $directory_path dir not found."
fi 
