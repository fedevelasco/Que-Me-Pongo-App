# Qué Me Pongo 

#### Trabajo Práctico de la materia _Diseño de Sistemas_ en la UTN FRBA - Año 2019

Que Me Pongo es una aplicacion de gestion de guardarropas multiusuario. Se generan atuendos en base al clima y gustos del usuario.

Cada prenda tiene distintos atributos seleccionables los cuales afectan la seleccion del atuendo. 

La sugerencia en base al clima se hace consultando la API de _WeatherBit_ o _Accuweather_

La aplicación fue realizada en _Java_ utilizando patrones de diseño como Strategy, Builder, State entre otros. La aplicacion se baso en la arquitectura Modelo Vista Controlador (MVC)

Los datos fueron persistidos mediante _JPA-Hibernate_ en una base de datos relacional _MySQL_.
Las vistas de usuarios fueron creadas con el framework web Spark y la App esta deployada en Heroku. Se puede acceder al siguiente link para visualizarla.  https://quemepongov3.herokuapp.com/login

Nota: La version deployada tiene distintos bugs que en la version local no aparecen. A Revisar. 

### Tecnologias utilizadas:

- Java (JDK 1.8)

- Junit 4.12

- Hibernate

- Spark
