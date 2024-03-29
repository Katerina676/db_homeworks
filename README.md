### Спроектирована бд для музыкального сайта. Требования: (task1.sql)- создана таблица

- На сайте должна быть возможность увидеть список исполнителей.
- Для каждого исполнителя можно получить список его альбомов.
- Для каждого альбома можно получить список треков, которые в него входят.
- У исполнителя есть имя (псевдоним).
- У альбома есть название и год выпуска.
- У трека есть название и длительность.
- Трек входит только в один альбом, как и альбом принадлежит только одному исполнителю.

### music.sql
Ранее было ограничение, что каждый исполнитель поет строго в одном жанре - пора убрать это ограничение. Исполнители могут петь в разных жанрах, как и одному жанру могут принадлежать несколько исполнителей.

Аналогичное ограничение было и с альбомами у исполнителей (альбом мог выпустить только один исполнитель). Теперь альбом могут выпустить несколько исполнителей вместе. Как и исполнитель может принимать участие во множестве альбомов.

С треками ничего не меняем, все так же трек принадлежит строго одному альбому.

Но появилась новая сущность - сборник. Сборник имеет название и год выпуска. В него входят различные треки из разных альбомов.

_Обратите внимание_: один и тот же трек может присутствовать в разных сборниках.

Задание состоит из двух частей:

1. Спроектировать и нарисовать схему (как в [первой домашней работе](../introduction)). Прислать изображение со схемой.
2. Написать SQL-запросы, создающие спроектированную БД (как во [второй домашней работе](../creation)). Прислать ссылку на файл, содержащий SQL-запросы.


### insert.sql select.sql

Заполните базу данных из предыдущего домашнего задания. В ней должно быть:

* не менее 8 исполнителей;
* не менее 5 жанров;
* не менее 8 альбомов;
* не менее 15 треков;
* не менее 8 сборников.  
Внимание! Должны быть заполнены все поля каждой таблицы, в т.ч. таблицы связей (исполнителей с жанрами, исполнителей с альбомами, сборников с треками).

Написать SELECT-запросы, которые выведут информацию согласно инструкциям ниже.  

1. название и год выхода альбомов, вышедших в 2018 году;
2. название и продолжительность самого длительного трека;
3. название треков, продолжительность которых не менее 3,5 минуты;
4. названия сборников, вышедших в период с 2018 по 2020 год включительно;
5. исполнители, чье имя состоит из 1 слова;
6. название треков, которые содержат слово "мой"/"my". 

### select-join.py

Написать SELECT-запросы, которые выведут информацию согласно инструкциям ниже.  

1. количество исполнителей в каждом жанре;
2. количество треков, вошедших в альбомы 2019-2020 годов;
3. средняя продолжительность треков по каждому альбому;
4. все исполнители, которые не выпустили альбомы в 2020 году;
5. названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
6. название альбомов, в которых присутствуют исполнители более 1 жанра;
7. наименование треков, которые не входят в сборники;
8. исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
9. название альбомов, содержащих наименьшее количество треков.
