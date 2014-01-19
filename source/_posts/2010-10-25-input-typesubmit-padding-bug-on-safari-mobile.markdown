---
author: makishvili
comments: true
date: 2010-10-25 07:36:16+00:00
layout: post
slug: input-typesubmit-padding-bug-on-safari-mobile
title: Неуправляемый паддинг  внутри input
wordpress_id: 1445
categories:
- О технологиях
tags:
- Safari
---

В мобильном Сафари внутри input появляется неуправляемый паддинг слева и справа от текста. [Прочитать](http://stackoverflow.com/questions/3516651/input-typesubmit-padding-bug-on-safari-mobile) подробное описание проблемы.

Решение — использовать button вместо input:

    
    <code>
    <style>
        button {font-size: 1px}
        button span {font-size: 14px}
    </style><code>



    
    <code><button><span>Текст кнопки</span></button><code>



Решение найдено методом "мгновенного коллективного озарения"  :) 
Озарило [Антона](http://smmurf.ya.ru), [Наташу](http://kissochka.ya.ru/), [Олю](http://olyuwik.ya.ru)
