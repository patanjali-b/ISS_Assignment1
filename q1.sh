#!/bin/bash

 awk 'NF' quotes.txt 

 awk 'NF' quotes.txt | awk '!remove[$0]++' 