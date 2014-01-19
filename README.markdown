## Как настроить Octopress?
По мотивам: http://habrahabr.ru/sandbox/64177/

1. Зарегистрироваться на `GitHub` и создать репозиторий с названием `octopress`.
В результате имеем http://github.com/YourName/octopress
2. Установить Octopress
3. В терминале ввести следующие команды:
```
mkdir octopress
cd octopress
git init
git remote add octopress git://github.com/imathis/octopress.git
git pull octopress master
git checkout -b source
git remote add origin git@github.com:YourName/octopress.git
git push origin source
```

4. Подготовиться к деплою на gh-pages
````
rake setup_github_pages
````
На вопрос ввести репозиторий для будущего блога: `git@github.com:YourName/octopress.git`

This task does quite a few things. The most important is that it creates a new _deploy directory that is another git repository. This is where Octopress generates the flat website for deployment to the master branch of your repo on Github.

All the Octopress code used to generate the website into the _deploy directory now lives in new branch called source. Note in the source branch the .gitignore includes _deploy so it doesn’t get committed in two places!

5. `rake install`
6. дописать в файле `_config.yml`путь к своему репозиторию `root: /octopress`
7. Сгенерить сайт и задеплоить на gh-pages

```
rake generate
rake deploy
```

В результате имеем наш блог: http://YourName.github.com/octopress


##Где брать знания?
* http://www.tomordonez.com/blog/2012/06/04/creating-a-github-blog-using-octopress/

* http://ajaxblog.ru/octopress/octopress-blogging-for-geeks/
* http://maxmikheev.ru/blog/2012/07/10/install-octopress-on-mac-os/
* http://kvz.io/blog/2012/09/25/blog-with-octopress/
* http://schuyler.info/blog/how-to-setup-a-new-octopress-blog-on-github-pages.html
* http://paulsturgess.co.uk/blog/2013/04/24/hello-octopress-and-github-pages/
* http://everythingisgray.com/2013/06/15/on-migrating-from-wordpress-to-octopress

* [Категории в отдельную страницу](http://highaltitudehacks.com/2013/06/30/octopress-category-pages-with-preview-and-pagination/)
## Плагины:
* [Youtube.rb](https://gist.github.com/joelverhagen/1805814)

## Темы
* [Readify](http://vladigleba.com/blog/2013/10/31/introducing-readify-a-new-octopress-theme-focused-on-readibility/)
* [Список](https://github.com/imathis/octopress/wiki/3rd-Party-Octopress-Themes)

## Разное
* [Markdown cheetsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#wiki-images)
* [Shower on markdown](https://github.com/shower/jekyller)
* [Exitwp](https://github.com/thomasf/exitwp) - Экспорт Wordpress -> Markdown
* [Exitwp. Я сделали wp -> md. Что дальше?](http://stackoverflow.com/questions/13321381/how-to-use-exitwp-py-build-file-for-octopress-to-migrate-content-from-wordpress)
