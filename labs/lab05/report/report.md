---
## Front matter
title: "Лабораторная работа №5"
subtitle: "Основы работы с Midnight Commander (mc).Cтруктура программы на языке ассемблера NASM. Системные вызовы в ОС GNU Linux"
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

Приобретение практических навыков работы в Midnight Commander. Освоение инструкций
языка ассемблера mov и int.

# Задание

Написать 2 программы по примеру и впоследствии изменить их по условию.

# Выполнение лабораторной работы

Откройте Midnight Commander.Пользуясь клавишами ↑ , ↓ и Enter перейдите в каталог ~/work/arch-pc созданный при выполнении лабораторной работы №4.С помощью функциональной клавиши F7 создайте папку lab05 (рис. 5.3) и перейдите в созданный каталог.Пользуясь строкой ввода и командой touch создайте файл lab5-1.asm (рис. @fig:001)(рис. @fig:002)(рис. @fig:003).

![Используем команду mc](image/1.jpg){#fig:001 width=70%}

![Создаем папку lab05](image/2.jpg){#fig:002 width=70%}

![С помощью команды touch создаем файл](image/3.jpg){#fig:003 width=70%}

С помощью функциональной клавиши F4 откройте файл lab5-1.asm для редактирования во встроенном редакторе. Как правило в качестве встроенного редактора Midnight
Commander используется редакторы nano (рис. 5.5) или mcedit.Введите текст программы из листинга 5.1 (можно без комментариев), сохраните изменения и закройте файл. Оттранслируйте текст программы lab5-1.asm в объектный файл. Выполните компоновку объектного файла и запустите получившийся исполняемый файл(рис. @fig:004)(рис. @fig:005).

![Редактируем файл](image/4.jpg){#fig:004 width=70%}

![Оттранслируем текст программы в объектный файл и запустим файл](image/5.jpg){#fig:005 width=70%}

Скачайте файл in_out.asm. В одной из панелей mc откройте каталог с файлом lab5-1.asm. В другой панели каталог со скаченным файлом in_out.asm (для перемещения между панелями используйте Tab ).Скопируйте файл in_out.asm в каталог с файлом lab5-1.asm с помощью функциональной клавиши F5.(рис. @fig:006).

![Копируем файл в нужный каталог](image/6.jpg){#fig:006 width=70%}

С помощью функциональной клавиши F6 создайте копию файла lab5-1.asm с именем
lab5-2.asm.Исправьте текст программы в файле lab5-2.asm с использование подпрограмм из внешнего файла in_out.asm (используйте подпрограммы sprintLF, sread и quit) в соответствии с листингом 5.2. Создайте исполняемый файл и проверьте его работу.В файле lab5-2.asm замените подпрограмму sprintLF на sprint. Создайте исполняемый файл и проверьте его работу. В чем разница?(рис. @fig:007)(рис. @fig:008)(рис. @fig:009)(рис. @fig:010)(рис. @fig:011).

![Копируем файл, переименовывая его в lab5-2.asm](image/7.jpg){#fig:007 width=70%}

![Редактируем файл с использованием подпрограмм](image/8.jpg){#fig:008 width=70%}

![Запускаем файл](image/9.jpg){#fig:009 width=70%}

![Меняем подпрограммы](image/10.jpg){#fig:010 width=70%}

![Запускаем файл и сравниваем с прошлым результатом](image/11.jpg){#fig:011 width=70%}

Сравнивая два программы, я сделал вывод, что sprintLF переносит ввод на новую строку, тогда как sprint дает вводить строку без переноса.

# Самостоятельная работа

Создайте копию файла lab5-1.asm. Внесите изменения в программу (без использования внешнего файла in_out.asm), так чтобы она выводила строку которую вы ввели(рис. @fig:012)(рис. @fig:013)(рис. @fig:014).

![Копируя, создаем новый файл lab5-3.asm](image/12.jpg){#fig:012 width=70%}

![Редактируем файл](image/13.jpg){#fig:013 width=70%}

![Запускаем файл](image/14.jpg){#fig:014 width=70%}

Создайте копию файла lab5-2.asm. Исправьте текст программы с использование подпрограмм из внешнего файла in_out.asm, так чтобы она работала по следующему
алгоритму(рис. @fig:015)(рис. @fig:016)(рис. @fig:017).

![Создаем новый файл, копируя прошлые](image/15.jpg){#fig:015 width=70%}

![Редактируем файл](image/16.jpg){#fig:016 width=70%}

![Запускаем файл](image/17.jpg){#fig:017 width=70%}

# Выводы

Мы приобрели навыки работы с Midnight Commander и освоили инструкцию mov.

