#!/bin/bash
echo "Iniciando execução do script!"

echo "Step 1"
cd readmes/
rm *.md
rm -rf json
mkdir json

echo "Step 2"
npm i -g markdown-to-json

echo "Step 3"
cd ../
python scripts/script_get_readme.py
sleep 3
python scripts/script_parser_json.py
sleep 3
python scripts/concatenate_json.py

echo "Step 4"
cd readmes/
mv *.json json/
ls json/

echo "Fim da execução!"
