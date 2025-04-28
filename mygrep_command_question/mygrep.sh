#!/bin/bash

show_line_numbers=0
invert_match=0
search_string=""
file_name=""

while [ $# -gt 0 ]; do
    case "$1" in
        -n)
            show_line_numbers=1
            shift
            ;;
        -v)
            invert_match=1
            shift
            ;;
        -vn|-nv)
            show_line_numbers=1
            invert_match=1
            shift
            ;;
        --help)
            echo "Usage: ./mygrep.sh [options] search_string file_name"
            echo "Options:"
            echo "  -n    Show line numbers"
            echo "  -v    Invert match (show non-matching lines)"
            exit 0
            ;;
        *)
            if [ -z "$search_string" ]; then
                search_string="$1"
            elif [ -z "$file_name" ]; then
                file_name="$1"
            fi
            shift
            ;;
    esac
done

if [ -z "$search_string" ] || [ -z "$file_name" ]; then
    echo "Usage: ./mygrep.sh [options] search_string file_name"
    exit 1
fi
if [ ! -f "$file_name" ]; then
    echo "Error: File '$file_name' not found"
    exit 1
fi

grep_command="grep -i"
if [ $show_line_numbers -eq 1 ]; then
    grep_command="$grep_command -n"
fi
if [ $invert_match -eq 1 ]; then
    grep_command="$grep_command -v"
fi

$grep_command "$search_string" "$file_name"
