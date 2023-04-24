#!/bin/bash
#https://linuxcommand.org/lc3_wss0040.php

pdf_dir="/home/jake/msim/molecular_simulation/"
out_path="bash.html"

while getopts f:o: flag
do
    case "${flag}" in
        f) pdf_dir=${OPTARG};;
        o) out_path=${OPTARG};;
    esac
done


pdfs=`find $pdf_dir -type f -name "*.pdf"`
pdfs=($pdfs)
pdf_string=""

for i in "${pdfs[@]}"
do
    :
    echo $i 
    pdf_string="$pdf_string <a href=\"file://$i\".pdf class=\"button-64\" ><p>$i</p></a>"
done
#echo $pdf_string

touch $out_path

cat > $out_path << EOF
<!DOCTYPE html>
<html>
<head>
<style>
/* CSS */
.button-64 {
  align-items: center;
  background-image: linear-gradient(144deg,#AF40FF, #5B42F3 50%,#00DDEB);
  border: 0;
  border-radius: 8px;
  box-shadow: rgba(151, 65, 252, 0.2) 0 15px 30px -5px;
  box-sizing: border-box;
  color: #FFFFFF;
  display: flex;
  font-family: Phantomsans, sans-serif;
  font-size: 20px;
  justify-content: center;
  line-height: 1em;
  max-width: 100%;
  min-width: 140px;
  padding: 3px;
  text-decoration: none;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  white-space: nowrap;
  cursor: pointer;
}

.button-64:active,
.button-64:hover {
  outline: 0;
}

.button-64 span {
  background-color: rgb(5, 6, 45);
  padding: 16px 24px;
  border-radius: 6px;
  width: 100%;
  height: 100%;
  transition: 300ms;
}

.button-64:hover span {
  background: none;
}

@media (min-width: 768px) {
  .button-64 {
    font-size: 24px;
    min-width: 196px;
  }
}
</style>
</head>
<body>
$pdf_string
</body>
</html>
EOF

/usr/bin/microsoft-edge-dev --new-tab file:///$out_path &
echo pdfs