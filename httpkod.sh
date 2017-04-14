#!/bin/bash
curl -I -g domena.pl  2>/dev/null | head -n 1 | awk -F  '{print }'  
