#!/bin/bash
CURDATE=$(date +"%Y-%m")
# CURDATE='2021-07'
YY=${CURDATE:0:4}
MM=${CURDATE:5:2}
SPAMUPDATEDST='/home/ldisilverio'
SPAMFILEDST="${SPAMUPDATEDST}/${CURDATE}.7z" 

wget http://untroubled.org/spam/${CURDATE}.7z -P ${SPAMUPDATEDST}
7z x ${SPAMFILEDST} -aoa
sa-learn --spam "${SPAMUPDATEDST}/${YY}/${MM}/"

rm -f ${SPAMFILEDST} 
