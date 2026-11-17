# !/usr/bin/env bash


echo "Welcom to Linux Setup from tako1dayo!!!"
echo ""
echo "Which lib would you like to setup?"
libs=("Git" "Nvim" "Go(golang)" "Node.js" "Python")

echo "0. all"
for i in "${!libs[@]}"
do 
	echo "$((i + 1)). ${libs[i]}"
done

read -p "Select options (e.g. 1,2 or 12 or 0): " choice

if [[ ! "$choice" =~ ^[0-5]+$ ]]; then
	echo "Invalid input. Use digits 0-5 only."
	exit 1
fi

echo "Your select options: $choice"

