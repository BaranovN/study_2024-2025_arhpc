---
## Front matter
title: "Лабораторная работа №10"
subtitle: "Работа с файлами средствами Nasm"
author: "Баранов Никита Дмитриевич"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Приобретение навыков написания программ для работы с файлами.

# Выполнение лабораторной работы

Создайте каталог для программам лабораторной работы № 10, перейдите в него и создайте файлы lab10-1.asm, readme-1.txt и readme-2.txtВведите в файл lab10-1.asm текст программы из листинга 10.1 (Программа записи в файл сообщения). Создайте исполняемый файл и проверьте его работу. С помощью команды chmod измените права доступа к исполняемому файлу lab10-1,
запретив его выполнение. Попытайтесь выполнить файл. Объясните результат. С помощью команды chmod измените права доступа к файлу lab10-1.asm с исходным текстом программы, добавив права на исполнение. Попытайтесь выполнить его и объясните результат. В соответствии с вариантом в таблице 10.4 предоставить права доступа к файлу readme1.txt представленные в символьном виде, а для файла readme-2.txt – в двочном виде. Проверить правильность выполнения с помощью команды ls -l(Вариант 18)(рис. @fig:001)(рис. @fig:002)(рис. @fig:003)(рис. @fig:004)(рис. @fig:005)(рис. @fig:006).

![Создаем директории и файлы](image/1.jpg){#fig:001 width=70%}

![Вводим программу в файлы .asm](image/2.jpg){#fig:002 width=70%}

![Создаем объектный файл и проверяем работу программы](image/3.jpg){#fig:003 width=70%}

![Используем chmod (запрещаем выполнение) и запускаем файл, изменяя права](image/4.jpg){#fig:004 width=70%}

Нам отказали в доступе, это значит мы поставили запрет на выполнение программы.

![Используем chmod и запускаем файл, изменяя права](image/5.jpg){#fig:005 width=70%}

Мы изменили права доступа только к файлу .asm. Такие файлы нужно комплировать в машинный код, а затем выполнять.

![Изменяем права двум файлам с помощью chmod двумя способами и проверяем правильность с помощью ls -l](image/6.jpg){#fig:006 width=70%}

# Самостоятельная работа

Напишите программу работающую по следующему алгоритму: 
Вывод приглашения “Как Вас зовут?”
ввести с клавиатуры свои фамилию и имя
создать файл с именем name.txt
записать в файл сообщение “Меня зовут”
дописать в файл строку введенную с клавиатуры
закрыть файл
Создать исполняемый файл и проверить его работу. Проверить наличие файла и его
содержимое с помощью команд ls и cat.(рис. @fig:007)(рис. @fig:008)(рис. @fig:009)

![Создаем файл .asm](image/7.jpg){#fig:007 width=70%}

![Пишем программу](image/8.jpg){#fig:008 width=70%}

![Создаем объектный файл и проверяем работу программы, с помощью команд ls и cat проверяем наличие созданного программой файла и его содержание](image/9.jpg){#fig:009 width=70%}

# Выводы

Мы приобрели навыки написания программ для работы с файлами


