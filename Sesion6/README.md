# Descripción
Autor : José Daniel Rosas Avila

En este archivo se encuentran las evidencias de los retos y ejercicios de la clase 6.


# Reto 1

Usando la base de datos `sample_airbnblistingsAndReviews`, realiza los siguientes filtros:

- Propiedades que no permitan fiestas.
![Reto1_1](images/Reto1_1.png)

- Propiedades que admitan mascotas.

![Reto1_1](images/Reto1_2.png)
- Propiedades que no permitan fumadores.

![Reto1_1](images/Reto1_3.png)
- Propiedades que no permitan fiestas ni fumadores.

![Reto1_1](images/Reto1_4.png)


# Reto 2 

Usando la colección `sample_airbnb.listingsAndReviews`, agrega un filtro que permita obtener todas las publicaciones que tengan 50 o más comentarios, que la valoración sea mayor o igual a 80, que cuenten con conexión a Internet vía cable y estén ubicada en Brazil.

Esto se logra con la siguiente sentencia:
```json
{number_of_reviews:{$gte:50},
"review_scores.review_scores_rating":{$gte:80},
amenities:/ethernet/i,
"address.country_code":"BR"}
```
![Reto2](images/Reto2.png)


# Reto 3
Usando la colección `sample_airbnb.listingsAndReviews`, mediante el uso de agregaciones, encontrar el número de publicaciones que tienen conexión a Internet, sea desde Wifi o desde cable (Ethernet).

![Reto3](images/Reto3_1.png)

# Ejercicios

La base de datos y colección que debes usar es `sample_airbnb.listingsAndReviews`.

El ejercicio consiste en obtener todas las publicaciones que tengan 50 o más comentarios, que la valoración sea mayor o igual a 80, que cuenten con conexión a Internet vía cable y estén ubicadas en Brazil.

![Ejercicios](images/Ejercicios1.png)
![Ejercicios](images/Ejercicios2.png)