#!/bin/sh

# instance script generator

echo "options: "
echo "opt:  ioptf"
echo "fwd:  ilff / irff / idff"
echo "jmp:  ijf"
echo "id:   iidf / hostkey: ikf"
echo "port: ipf"
optf="$ioptf" sh lf.sh | locfdf="$ilff" remfdf="$irff" dynfdf="$idff" jmpf="$ijf" idf="$iidf" portf="$ipf" sh sn.sh \"\$1\" > "$1"con.sh
optf="$ioptf" sh lf.sh | locfdf="$ilff" remfdf="$irff" dynfdf="$idff" jmpf="$ijf" idf="$iidf" portf="$ipf" sh reg.sh \"\$1\" \"\$2\" \"\$3\" > "$1"auth.sh
optf="$ioptf" sh lf.sh cp | locfdf="$ilff" remfdf="$irff" dynfdf="$idff" jmpf="$ijf" idf="$iidf" portf="$ipf" sh cp.sh \"\$1\" \"\$2\" > "$1"post.sh
optf="$ioptf" sh lf.sh cp | locfdf="$ilff" remfdf="$irff" dynfdf="$idff" jmpf="$ijf" idf="$iidf" portf="$ipf" sh vcp.sh \"\$1\" \"\$2\" > "$1"get.sh
optf="$ioptf" sh lf.sh sv | locfdf="$ilff" remfdf="$irff" dynfdf="$idff" jmpf="$ijf" idf="$iidf" portf="$ipf" hostkf="$ikf" sh sv.sh > "$1"srv.sh
