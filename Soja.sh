#!/bin/bash

soja1=$(wget -qO- http://fpuntel.000webhostapp.com/soja/soja1.php)
soja2=$(wget -qO- http://fpuntel.000webhostapp.com/soja/soja2.php)
soja3=$(wget -qO- htpp://fpuntel.000webhostapp.com/soja/soja3.php)

Umidade=`echo $soja1 | cut -c 1-2`
Tamanho=`echo $soja1 | cut -c 4-5`

echo "Dia da Semana ; Soja Monitorada ; Umidade do Solo ; Tamanho da Planta ; Temperatura ; Umidade do Ar ; Vento ; Temp. Max ; Temp. Min ; Precipitacao ; Precisa Irrigar?" > Soja.csv
echo "Seg ; S1 ; $Umidade ; $Tamanho" >> Soja.csv
