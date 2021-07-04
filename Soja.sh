#!/bin/bash

horaAtual=`date.exe +"%Y-%m-%d-%H-%M-%S"`

soja1=$(wget -qO- http://fpuntel.000webhostapp.com/soja/soja1.php)
soja2=$(wget -qO- http://fpuntel.000webhostapp.com/soja/soja2.php)
soja3=$(wget -qO- http://fpuntel.000webhostapp.com/soja/soja3.php)
tempo=$(wget -qO- http://fpuntel.000webhostapp.com/soja/previsaoTempo.php)
mtl=$(wget -qO- http://fpuntel.000webhostapp.com/soja/estacaoMeteorologica.php)

Umidade1=`echo $soja1 | cut -c 1-2`
Tamanho1=`echo $soja1 | cut -c 4-5`

Umidade2=`echo $soja2 | cut -c 1-2`
Tamanho2=`echo $soja2 | cut -c 4-5`

Umidade3=`echo $soja3 | cut -c 1-2`
Tamanho3=`echo $soja3 | cut -c 4-5`

Temperatura=`echo $mtl | cut -c 1-2`
Ar=`echo $mtl | cut -c 4-5`
Vento=`echo $mtl | cut -c 7-8`

Maxseg=`echo $tempo | cut -c 5-6`
Maxter=`echo $tempo | cut -c 17-18`
Maxqua=`echo $tempo | cut -c 29-30`
Maxqui=`echo $tempo | cut -c 41-42`
Maxsex=`echo $tempo | cut -c 53-54`
Maxsab=`echo $tempo | cut -c 65-66`
Maxdom=`echo $tempo | cut -c 77-78`

Minseg=`echo $tempo | cut -c 8-9`
Minter=`echo $tempo | cut -c 20-21`
Minqua=`echo $tempo | cut -c 32-33`
Minqui=`echo $tempo | cut -c 44-45`
Minsex=`echo $tempo | cut -c 56-57`
Minsab=`echo $tempo | cut -c 68-69`
Mindom=`echo $tempo | cut -c 80-81`

Preseg=`echo $tempo | cut -c 11`
Preter=`echo $tempo | cut -c 23`
Prequa=`echo $tempo | cut -c 35`
Prequi=`echo $tempo | cut -c 47`
Presex=`echo $tempo | cut -c 59`
Presab=`echo $tempo | cut -c 71`
Predom=`echo $tempo | cut -c 83`

Seg=`echo $tempo | cut -c 1-3`
Ter=`echo $tempo | cut -c 13-15`
Qua=`echo $tempo | cut -c 25-27`
Qui=`echo $tempo | cut -c 37-39`
Sex=`echo $tempo | cut -c 49-51`
Sab=`echo $tempo | cut -c 61-63`
Dom=`echo $tempo | cut -c 73-75`

if [ $Preseg -gt 5 ];
then
        Irriseg="Nao"
else
        Irriseg="Sim"
fi


if [ $Preter -gt 5 ];
then
       Irriter="Nao"
else
       Irriter="Sim"
fi


if [ $Prequa -gt 5 ];
then
       Irriqua="Nao"
else
       Irriqua="Sim"
fi


if [ $Prequi -gt 5 ];
then
       Irriqui="Nao"
else
       Irriqui="Sim"
fi


if [ $Presex -gt 5 ];
then
       Irrisex="Nao"
else
       Irrisex="Sim"
fi


if [ $Presab -gt 5 ];
then
       Irrisab="Nao"
else
       Irrisab="Sim"
fi

if [ $Predom -gt 5 ];
then
       Irridom="Nao"
else
       Irridom="Sim"
fi

echo "Semana ; Soja ; Umi.Solo ; T.Planta ; Temp ; Umi.Ar ; Vento ; T.Max ; T.Min ; Precipitacao ; Irrigar?" > Soja-$horaAtual.csv
echo "$Seg ; S1 ; $Umidade1 ; $Tamanho1 ; $Temperatura ; $Ar ; $Vento ; $Maxseg ; $Minseg ; $Preseg ; $Irriseg" >> Soja-$horaAtual.csv
echo "$Ter ; S1 ; $Umidade1 ; $Tamanho1 ; $Temperatura ; $Ar ; $Vento ; $Maxter ; $Minter ; $Preter ; $Irriter" >> Soja-$horaAtual.csv
echo "$Qua ; S1 ; $Umidade1 ; $Tamanho1 ; $Temperatura ; $Ar ; $Vento ; $Maxqua ; $Minqua ; $Prequa ; $Irriqua" >> Soja-$horaAtual.csv
echo "$Qui ; S1 ; $Umidade1 ; $Tamanho1 ; $Temperatura ; $Ar ; $Vento ; $Maxqui ; $Minqui ; $Prequi ; $Irriqui" >> Soja-$horaAtual.csv
echo "$Sex ; S1 ; $Umidade1 ; $Tamanho1 ; $Temperatura ; $Ar ; $Vento ; $Maxsex ; $Minsex ; $Presex ; $Irrisex" >> Soja-$horaAtual.csv
echo "$Sab ; S1 ; $Umidade1 ; $Tamanho1 ; $Temperatura ; $Ar ; $Vento ; $Maxsab ; $Minsab ; $Presab ; $Irrisab" >> Soja-$horaAtual.csv
echo "$Dom ; S1 ; $Umidade1 ; $Tamanho1 ; $Temperatura ; $Ar ; $Vento ; $Maxdom ; $Mindom ; $Predom ; $Irridom" >> Soja-$horaAtual.csv

echo "$Seg ; S2 ; $Umidade2 ; $Tamanho2 ; $Temperatura ; $Ar ; $Vento ; $Maxseg ; $Minseg ; $Preseg ; $Irriseg" >> Soja-$horaAtual.csv
echo "$Ter ; S2 ; $Umidade2 ; $Tamanho2 ; $Temperatura ; $Ar ; $Vento ; $Maxter ; $Minter ; $Preter ; $Irriter" >> Soja-$horaAtual.csv
echo "$Qua ; S2 ; $Umidade2 ; $Tamanho2 ; $Temperatura ; $Ar ; $Vento ; $Maxqua ; $Minqua ; $Prequa ; $Irriqua" >> Soja-$horaAtual.csv
echo "$Qui ; S2 ; $Umidade2 ; $Tamanho2 ; $Temperatura ; $Ar ; $Vento ; $Maxqui ; $Minqui ; $Prequi ; $Irriqui" >> Soja-$horaAtual.csv
echo "$Sex ; S2 ; $Umidade2 ; $Tamanho2 ; $Temperatura ; $Ar ; $Vento ; $Maxsex ; $Minsex ; $Presex ; $Irrisex" >> Soja-$horaAtual.csv
echo "$Sab ; S2 ; $Umidade2 ; $Tamanho2 ; $Temperatura ; $Ar ; $Vento ; $Maxsab ; $Minsab ; $Presab ; $Irrisab" >> Soja-$horaAtual.csv
echo "$Dom ; S2 ; $Umidade2 ; $Tamanho2 ; $Temperatura ; $Ar ; $Vento ; $Maxdom ; $Mindom ; $Predom ; $Irridom" >> Soja-$horaAtual.csv

echo "$Seg ; S3 ; $Umidade3 ; $Tamanho3 ; $Temperatura ; $Ar ; $Vento ; $Maxseg ; $Minseg ; $Preseg ; $Irriseg" >> Soja-$horaAtual.csv
echo "$Ter ; S3 ; $Umidade3 ; $Tamanho3 ; $Temperatura ; $Ar ; $Vento ; $Maxter ; $Minter ; $Preter ; $Irriter" >> Soja-$horaAtual.csv
echo "$Qua ; S3 ; $Umidade3 ; $Tamanho3 ; $Temperatura ; $Ar ; $Vento ; $Maxqua ; $Minqua ; $Prequa ; $Irriqua" >> Soja-$horaAtual.csv
echo "$Qui ; S3 ; $Umidade3 ; $Tamanho3 ; $Temperatura ; $Ar ; $Vento ; $Maxqui ; $Minqui ; $Prequi ; $Irriqui" >> Soja-$horaAtual.csv
echo "$Sex ; S3 ; $Umidade3 ; $Tamanho3 ; $Temperatura ; $Ar ; $Vento ; $Maxsex ; $Minsex ; $Presex ; $Irrisex" >> Soja-$horaAtual.csv
echo "$Sab ; S3 ; $Umidade3 ; $Tamanho3 ; $Temperatura ; $Ar ; $Vento ; $Maxsab ; $Minsab ; $Presab ; $Irrisab" >> Soja-$horaAtual.csv
echo "$Dom ; S3 ; $Umidade3 ; $Tamanho3 ; $Temperatura ; $Ar ; $Vento ; $Maxdom ; $Mindom ; $Predom ; $Irridom" >> Soja-$horaAtual.csv

Max=$(($Maxseg+$Maxter+$Maxqua+$Maxqui+$Maxsex+$Maxsab+$Maxdom))
MediaMax=$(($Max/7))
Min=$(($Minseg+$Minter+$Minqua+$Minqui+$Minsex+$Minsab+$Mindom))
MediaMin=$(($Min/7))
Pre=$(($Preseg+$Preter+$Prequa+$Prequi+$Presex+$Presab+$Predom))
MediaPre=$(($Pre/7))

echo "A Media da Temperatura Maxima: $MediaMax" > Soja-$horaAtual.txt
echo "A Media da Temperatura Minima: $MediaMin" >> Soja-$horaAtual.txt
echo "A Media da Precipitacao: $MediaPre" >> Soja-$horaAtual.txt
