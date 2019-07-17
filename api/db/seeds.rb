#Create users
User.destroy_all
User.create(name: 'Ricardo Yrupailla', email: 'rsantiago@able.co', password: '123456')
User.create(name: 'Mayra Navarro', email: 'mnavarro@able.co', password: '123456') 
User.create(name: 'carlos Sandoval', email: 'csandoval@able.co', password: '123456') 

# Modules
Modulo.destroy_all
Modulo.create(name: 'Ruby Fundamentals' ,description: 'Ruby Fundamentals is an inmersive module for beginners')
Modulo.create(name: 'Ruby on Rails' ,description: 'The most used framework for Ruby developers. We will learn how to create an entire backend project from scratch')
Modulo.create(name: 'React' ,description: 'React is one of the most demanded libraries to build interfaces. We will learn how to create an entire frontend project from scratch')
Modulo.create(name: 'Final Project' ,description: 'At the end of the module all Codeable students will create a full project using Frontend & Backend concepts in just 4 weeks.')


# Lessons
Lesson.destroy_all
Lesson.create(title:'Install Fest, CLI & Basic Programming', modulo_id: 1)
Lesson.create(title:'Git, Methods & Classes', modulo_id: 1)
Lesson.create(title:'Database Overview', modulo_id: 2)
Lesson.create(title:'SQL Data Modeling', modulo_id: 2)
Lesson.create(title:'HTML & CSS', modulo_id: 3)
Lesson.create(title:'Flexbox, Grid & Layouts', modulo_id: 3)
Lesson.create(title:'Planning Day', modulo_id: 4)
Lesson.create(title:'Brainstorming', modulo_id: 4)


# Mini
MiniAssignment.destroy_all
MiniAssignment.create(title:'Build a simple calculator',content:
  '
  ## Build a basic calculator using Ruby
  * Include +,-,/ and x
  * Do not use more than 10 functions
  * You can use classes if you want
  ', lesson_id: 1 )
MiniAssignment.create(title:'Build a BMI calculator',content:
  '
  ## Build a BMI calculator using Ruby
  * Must be written in English
  * Should include if, else and variables
  * You can use classes if you want
  ', lesson_id: 2 )

# Sublesson
Sublesson.destroy_all
Sublesson.create(title:'CLI Commands',content:'## Learn some basic commands like: ls, cd, mkdir, touch, rm -rf, mv, cat, history, grep, find, chmod',tag_id:1,lesson_id:1,section:'main')
Sublesson.create(title:'How to use commands with CLI',content:'## Play with your files using some commands',tag_id:2,lesson_id:1,section:'main')
Sublesson.create(title:'Create your first repository',content:'## Create your first repository on Github and apply some commands',tag_id:3,lesson_id:1,section:'main')
Sublesson.create(title:'Check extra exercises',content:'## Make your first pull request and code review',tag_id:4,lesson_id:1,section:'extra')
Sublesson.create(title:'Read additional material about CLI',content:'## How to be a rockstart within CLI',tag_id:5,lesson_id:1,section:'extra')

# Tag
Tag.destroy_all
Tag.create(name: 'OVERVIEW', color: 'green')
Tag.create(name: 'WORKSHOP', color: 'blue')
Tag.create(name: 'M-ASSIGN', color: 'orange')
Tag.create(name: 'EXERCISES', color: 'purple')
Tag.create(name: 'BLOG', color: 'brown')
