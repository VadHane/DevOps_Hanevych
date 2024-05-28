#!/bin/bash

# Перевірка кількості переданих аргументів
if [ "$#" -ne 2 ]; then
    echo "Used: $0 <шлях_до_директорії> <текст>"
    exit 1
fi

# Зчитування аргументів
directory_path="$1"
search_text="$2"

# Пошук файлів та виведення результату
found_files=$(grep -rl "$search_text" "$directory_path")

if [ -n "$found_files" ]; then
    echo "Found files in $directory_path dir, witch includes the next text: '$search_text':"
    echo "$found_files"
else
    echo "Файлів, що містять текст '$search_text', у директорії $directory_path не знайдено."
fi
