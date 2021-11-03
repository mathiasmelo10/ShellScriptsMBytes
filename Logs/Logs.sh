#grep Para la consulta del txt 
#cut  Para recortar el resulta de la consulta y obtener los datos obligatorios  
#cat para redirigir el resultado de los logs del programa a Logs.txt 

cut -d "|" -f 1,3-5 Logs/Logs.txt
