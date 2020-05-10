# DLE-Plugin-XfSearch
![Release version](https://img.shields.io/github/v/release/dle-modules/DLE-Plugin-XfSearch?style=flat-square)
![DLE](https://img.shields.io/badge/DLE-14.x-green.svg?style=flat-square "DLE Version")
![License](https://img.shields.io/github/license/dle-modules/DLE-Plugin-XfSearch?style=flat-square)

Плагин добавляет возможность использовать теги [xfsearch] и [not-xfsearch] в шаблонах для вывода контента на страницах xfsearch.

## Установка
- Скачать файл dle-plugin-xfsearch.xml
из [актуальной версии](https://github.com/dle-modules/DLE-Plugin-XfSearch/releases/latest) плагина.
- Установить на сайт через систему плагинов.

## Обновление
- Плагин обновляется через систему плагинов автоматически.

## Примеры использования:
Для проверки работы плагина можно скачать файл `xfsearch-test.tpl` и включить его в любой шаблон сайта.

```
[xfsearch=xfield_name] выведет текст при просмотре страницы /xfsearch/xfield_name [xfsearch]
[xfsearch=xfield_name/value] выведет текст при просмотре страницы /xfsearch/xfield_name/value [xfsearch]
[xfsearch=xfield_name,xfield_name/*] выведет текст при просмотре страницы /xfsearch/xfield_name/ с любым значением допполя [xfsearch]

[not-xfsearch=xfield_name] скроет текст при просмотре страницы /not-xfsearch/xfield_name [not-xfsearch]
[not-xfsearch=xfield_name/value] скроет текст при просмотре страницы /not-xfsearch/xfield_name/value [not-xfsearch]
[not-xfsearch=xfield_name,xfield_name/*] скроет текст при просмотре страницы /not-xfsearch/xfield_name/ с любым значением допполя [not-xfsearch]
```
- **xfield_name** - имя дополнительного поля
- **value** - значение дополнительного поля
- __*__ - любое значение дополнительного поля

