#!/bin/sh

git config --global user.email "me@my_mail.com"
git config --global user.name "gasan"

#создать репозитории
git init

#получить статус репозитория
git status

#добавить файл 
git add hello_world.java
#произвести коммит
git commit -m "Добавлен файл"
#добавить тег чтобы можно было откатить до пред. версии
git tag -a v.1 -m "my tag"

#добавить второй файл
git add hello_world.py
git commit -m "Добавлен файл"

#инициализировать ветку hello
git init hello
git checkout -b hello

#изменить файл в ветке
echo """
class hello_world{
  public static void main(String [] a){
    System.out.println(\"HeLLo worlD\")
  }
}""">hello_world.java
git commit -m "Файл изменен"

#cлияние ветки hello с главной веткой
git checkout master
git merge hello

#откат до предыдущей версии
git reset --hard v.1
