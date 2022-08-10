#!/bin/bash

platex "$1"

dvipdfmx "$(basename "$1" .tex).dvi"

# rm *.aux *.dvi