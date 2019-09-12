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
if [ $opcion=1 ];
then
	echo "Ingrese Texto  de Repositorio (README)"
	read texto 
	echo "Ingrese el Nombre de Usuario de GitHub"
	read usuario
	echo "Ingrese el Contenido del Commit"
	read commit 
	echo "Ingrese el Nombre del Repositorio en GitHub"
	read repo
	#Comiendo de Comendos
	echo "# $texto " >> README.md
	git init
	git add README.md 
	git commit -m "$commit"
	git remote add origin https://github.com/$usuario/$repo.git
	git push -u origin master 
fi

