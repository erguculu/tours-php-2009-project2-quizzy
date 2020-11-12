# Simple MVC

## Description

This repository is a simple PHP MVC structure from scratch.

It uses some cool vendors/libraries such as Twig and Grumphp.
For this one, just a simple example where users can choose one of their databases and see tables in it.

This simple MVC structure serves as a basis for a "quizz" type of web application called "Quizzy" that will propose an infinite flow of random questions to the user. This application is still in an early stage of developpment. From Quizzy's home page, you will be able to display a random question and its possible choices each time you refresh the page. You can click on one of the choices, and you will then be redirected to a page that tells you if the choice you selected is correct or not. For now, you only need to select one of the possible correct choices to win. You can add your own questions and the choices associated with them by clicking the "AJOUTE LES TIENNES" link at the bottom of the page, and following the instructions step by step.


### Check on Travis

Travis is checking your code. It's a Continuous Integration (CI) service used on this repository to launch the code verification tools on the github repository itself.

1. Go on [https://travis-ci.com](https://travis-ci.com).
2. Sign up if you don't have account,
3. Look for your project in search bar on the left,

## Installation steps

1. Clone the repo from Github.
2. Run `composer install`.
3. Create *config/db.php* from *config/db.php.dist* file and add your DB parameters. Don't delete the *.dist* file, it must be kept.
```php
define('APP_DB_HOST', 'your_db_host');
define('APP_DB_NAME', 'your_db_name');
define('APP_DB_USER', 'your_db_user_wich_is_not_root');
define('APP_DB_PWD', 'your_db_password');
```
4. Import `simple-mvc.sql` in your SQL server,
5. Import `db.sql` in your SQL server, so you can have access to our test questions and their possible choices,
6. Run the internal PHP webserver with `php -S localhost:8000 -t public/`. The option `-t` with `public` as parameter means your localhost will target the `/public` folder.
7. Go to `localhost:8000` with your favorite browser,
8. From this starter kit, create your own web application,
9. OR go to localhost:8000/question/index to find an early draft of the "Quizzy" application.

### Windows Users

If you develop on Windows, you should edit you git configuration to change your end of line rules with this command :

`git config --global core.autocrlf true`

## URLs availables

* Home page at [localhost:8000/](localhost:8000/)
* Items list at [localhost:8000/item/index](localhost:8000/item/index)
* Item details [localhost:8000/item/index/show/:id](localhost:8000/item/show/2)
* Item edit [localhost:8000/item/index/edit/:id](localhost:8000/item/edit/2)
* Item add [localhost:8000/item/index/add](localhost:8000/item/add)
* Item deletion [localhost:8000/item/index/delete/:id](localhost:8000/item/delete/2)
* Quizzy's home page at [localhost:8000/question/index](localhost:8000/question/index)
* Quizzy's "result" page, that tells you if you won or not (can only be accessed after answering a question) [localhost:8000/question/result](localhost:8000/question/result)
* Quizzy's first part of the form that lets you add your own question [localhost:8000/addForm/addQuestion](localhost:8000/addForm/addQuestion)
* Quizzy's second part of the form that lets you add the associated choices (can only be accessed after adding a question) [localhost:8000/addForm/addChoices](localhost:8000/addForm/addChoices)
* Quizzy's third part of the form that lets you set the validity of each choice (can only be accessed after adding choices) [localhost:8000/addForm/setValidity](localhost:8000/addForm/setValidity)
* Quizzy's final page of the form that tells you your question has been added to the database (can only be accessed after setting the validity of each choice) [localhost:8000/addForm/afterSubmit](localhost:8000/addForm/afterSubmit)

## How does URL routing work ?

![Simple MVC.png](https://raw.githubusercontent.com/WildCodeSchool/simple-mvc/master/Simple%20-%20MVC.png)
