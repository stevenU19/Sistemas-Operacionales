#!/bin/bash

echo "--- Total de comandos ejecutados: $(wc -l < ~/.bash_history)" > script1.txt
cat ~/.bash_history >> script1.txt