#!/usr/bin/python
# -*- coding: utf-8 -*-
import MySQLdb
import os

#Conexión a la base (Colocar las credenciales que correspondan)
conn = MySQLdb.connect (host = "localhost",
                        user = "luisina",
                        passwd = "loladrone97",
                        db = "aventura",
                        charset='utf8')
cursor = conn.cursor ()

#Buscar evento de la aventura
def mostrar_historia(id_aventura):
    os.system('clear')
    print 	"NuKleAR\n---------\n"
    cursor.execute ("SELECT * from aventura where hist='"+id_aventura+"'")
    row = cursor.fetchone ()
    historia = row[0]
    texto = row[1]
    opciona = row[2]
    opcionb = row[3]
    botona = row[4]
    botonb = row[5]
    tipo = row[6]
    print texto + "\n"
    if tipo == "N":
        print "A: ["+botona+"] | B: ["+botonb+"]"
        eleccion = ""
        eleccion = raw_input("Eleccion: > ")
        if eleccion == "A":
            mostrar_historia(""+opciona)
        elif eleccion == "B":
            mostrar_historia(""+opcionb)
        else:
            #Corregir el error, recargando la historia
            mostrar_historia("" +historia)
    elif tipo == "P":
        print "\n\nFIN DEL JUEGO..."
        exit()
    elif tipo == "G":
        print "\n\nFelicidades. Estas a salvo, por ahora..."
        exit()
    cursor.close ()
    conn.close ()

#Empezar. Mostrar la introducción de la historia.
mostrar_historia("1")