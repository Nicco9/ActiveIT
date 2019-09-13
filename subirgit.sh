#!/bin/bash
#Aautomatizacion de git
clear
cat /Users/nicolasmino/Desktop/scripts/banner.txt
echo ""
echo ""
echo "" 
echo "*************************************      Opciones     *************************************"
echo "1) Crear repositorio desde 0"
echo "2) Subir Archivos"
echo "3) Salir"
echo ""
echo "Ingresar Opción"
read opcion
if [ $opcion = 1 ];
then
	echo "Ingrese Texto  de Repositorio (README)"
	read scripting 
	echo "Ingrese el Nombre de Usuario de GitHub"
	read usuario
	echo "Ingrese el Contenido del Commit"
	read commit 
	echo "indique archivo a subir"
	read archivo
	#Comienzo de Comandos
	echo "# $scripting" >> $archivo 
	git init
	git add . 
	git commit -m "$commit"
	git remote add origin https://github.com/$usuario/$scripting.git
	git push -u origin master 
fi

if [ $opcion = 2 ]; 
then 
	ls 
	echo "Ingrese Contenido del Commit"
	read commit
	echo "Ingrese el Nombre del Archivo a Subir"
	read archivo
	#Ejecutar Comandos
	git add $archivo
	git commit -m " $commit"
	git push -u origin master 
fi

if [ $opcion = 3 ];
then	
	echo "Adios"
	break
fi
