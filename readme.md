# Analizador Sintactico
## Proyecto Compiladores

Esta es la segunda parte del proyecto de compiladores el cual es un analizador sintantico usando como base la primera parte, que consistia en un analizador lexico de un lenguaje de tipo loop.
Para el analizador lexico se uso como base la herramienta de JFlex. JFlex es una herramienta para generar analizadores lexicos escritos en java. Con el uso de esta se implemento Jcup, este es un parser-generator,es decir un analizador sintactico que se construye a partir de lo que se obtenga con Jflex, este ultimo utiliza las gramaticas tipo LALR(1).


## Tech

Las tecnologias utilizadas en este proyecto:

- [JFlex] - Herramienta para analizador lexico
- [JCup] - Herramienta para analizador sintactico
- [Netbeans] - Programa usando para la codificacion en lenguaje java
- [Java] - Lenguaje utilizado


## Plugins

Nuestro proyecto utiliza una serie de plugins para funcionar de manera correcta

| Plugin | README |
| ------ | ------ |
| Jcup | [http://www2.cs.tum.edu/projects/cup/docs.php][PlDb] |
| JFlex | [https://www.jflex.de/manual.html][PlGh] |
| Maven-jar | [https://maven.apache.org/plugins/maven-jar-plugin/plugin-info.html][PlGd] |



   [JFlex]: https://www.jflex.de
   [JCup]: https://mvnrepository.com/artifact/org.objectweb.joram/jcup
   [Netbeans]: https://netbeans.apache.org
   [Java]: https://www.java.com/es/download/help/whatis_java.html


   [PlDb]: <https://github.com/joemccann/dillinger/tree/master/plugins/dropbox/README.md>
   [PlGh]: <https://github.com/joemccann/dillinger/tree/master/plugins/github/README.md>
   [PlGd]: <https://github.com/joemccann/dillinger/tree/master/plugins/googledrive/README.md>
   [PlOd]: <https://github.com/joemccann/dillinger/tree/master/plugins/onedrive/README.md>
   [PlMe]: <https://github.com/joemccann/dillinger/tree/master/plugins/medium/README.md>
   [PlGa]: <https://github.com/RahulHP/dillinger/blob/master/plugins/googleanalytics/README.md>
