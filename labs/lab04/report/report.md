---
## Front matter
title: "Отчет лабораторной работы №4"
subtitle: "Создание и процесс обработки программ на языке ассемблера NASM"
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

Освоение процедуры компиляции и сборки программ, написанных на ассемблере NASM.

# Задание

Написать две программы на языке ассемблера NASM - Hello world и lab4

# Выполнение лабораторной работы

## Hello world

Создаем каталог для работы с программами на языке ассемблера NASM и создаем текстовый файл, открываем этот файл с помощью текстового редактора(рис. @fig:001).

![Создаем каталоги и текстовый файл с помощью команды mkdir, touch, открываем файл с помощью команды gedit](image/1.jpg){#fig:001 width=70%}

Редактируем файл(рис. @fig:002).

![Вносим текст в файл](image/2.jpg){#fig:002 width=70%}

## Транслятор NASM

Преобразуем текст программы в объектный код(рис. @fig:003)

![Иcпользуем команду nasm и проверяем создался ли файл](image/3.jpg){#fig:003 width=70%}

## Расширенный синтаксис командной строки NASM

Компилируем исходный файл(рис. @fig:004)

![Преобразуем файл hello.asm в obj.o и проверяем с помощью команды ls](image/4.jpg){#fig:004 width=70%}

## Компоновщик LD


Передаем объектный файл на обработку компановщику и проверяем что файл был создан(рис. @fig:005)

![Используем команду ls и ld](image/5.jpg){#fig:005 width=70%}

Передаем объектный файл на обработку компановщику и проверяем что файл был создан(рис. @fig:006)

![Используем команду ls и ld](image/6.jpg){#fig:006 width=70%}

## Запуск исполняемого файла

Запускаем ранее созданный файл(рис. @fig:007)

![Используем команду ./hello и видим результат выполнения программы](image/7.jpg){#fig:007 width=70%}

## Задание для самостоятельной работы

В каталоге ~/work/arch-pc/lab04 с помощью команды cp создайте копию файла hello.asm с именем lab4.asm(рис. @fig:008)

![Копируем файл, изменяя его имя](image/8.jpg){#fig:008 width=70%}

С помощью любого текстового редактора внесите изменения в текст программы в
файле lab4.asm так, чтобы вместо Hello world! на экран выводилась строка с вашими
фамилией и именем(рис. @fig:009)(рис. @fig:010)

![Открываем файл с помощью команды gedit](image/9.jpg){#fig:009 width=70%}

![Редактируем файл, чтобы комплировались мои ФИО](image/10.jpg){#fig:010 width=70%}

Оттранслируйте полученный текст программы lab4.asm в объектный файл. Выполните
компоновку объектного файла и запустите получившийся исполняемый файл(рис. @fig:011)

![Выполняем действия, которые проделывали ранее](image/11.jpg){#fig:011 width=70%}

Скопируйте файлы hello.asm и lab4.asm в Ваш локальный репозиторий в каталог ~/work/study/2023-2024/"Архитектура компьютера"/arch-pc/labs/lab04/. Загрузите файлы на Github.(рис. @fig:012)(рис. @fig:013)

![Копируем файлы](image/12.jpg){#fig:012 width=70%}

![Загружаем файлы на гитхаб](image/13.jpg){#fig:013 width=70%}

# Выводы

Мы познакомились с языком ассемблера NASM и создали две работающих программы.


