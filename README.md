# Park-Planner

## By Ivy J. Ronoh, Bernard Abwao, Jackson Ohallo & Kelvin Njoro Owino


![Park-Planner]

## Table of Content

- [Description](#description)
- [Features](#features)
- [Installation Instructions](#requirements)
- [Development](#development)
- [Live Link](#live-link)
- [Setup Instructions and Technology](#technology-used)
- [License](#license)

## Description
---

 The _Park-Planner_ allows you to browse a list of Parks and plan your trip. The app will include lodging, activities, and dining options. There will be a calendar feature to which you can add your trip details, and a summary of trip selections. The purpose of this app is to encourage users to get outside and explore the beauty of the Park Service.

This is a _Park-Planner_ website with a front-end made using React and a backend made with Ruby on Rails. Active Record allowed us to create four models, _Park_, _Campsite_, _User_ and _Reservation_ that could communicate with the tables, _parks_, _users_, _reservations_ and _campsites_ in the Sqlite3 database with the help of migrations created. In each model there exists defined Active Record associations for example:

> Park has_many Campsites and has_many Users through Reservations.

> Campsites belongs_to Park.

> Reservations belongs_to User.

> User has_many Reservations .

Ruby on Rails helped in creating api endpoints that could be used by React frontend to get, post, delete and update the Parks, Campsites and their reservations. Through the use of routing methods that Rails provided like **get**, **post**, **patch** and **delete** 'generate' also provided syntax that could be used to initiate new instances of the classes, _Park_, _Campsite_, _Reservation_ and _User_ and be able to associate them.



## Features

---

As a user visiting this page I should be able to:

1. Log in and use the app.
2. Browse a listing of the Parks.
3. Search for a Park.
4. Find and schedule lodging from a list of Campsites at Parks.
5. Find and schedule activities at Parks.
6. Add my plans to a calendar.
7. View my choices in a trip summary.


### Technology Used

---

- Used Visual Studio Code editor to create the front-end with _**React**_ and backend with _**Ruby on Rails**_

- **Figma** - was used to create the structure and the styling of the website.

- **React** - help in creating interactive website

_**Ruby on Rails**_ helped in creating the database, the main models, Park, Campsite, Reservation, and User and their associations. Also in creating the tables _users_, _campsites_, _parks_, and _reservations_ and and routing to be used in the frontend by clients for _get_, _post_, _update_ and _delete_

---

## [Installation-Instructions]() 
### requirements:
- chrome browser/any other browser
- Internet connection
- Navigate to the git repository
- Fork  the repo using the fork button on this repository
- Git clone the forked repository to your local machine.
- Then perform the following two steps to run the Application:
#### BackEnd SetUP
- Open the backend folder on a terminal
- Then, run `bundle install` to install require gems
- After running migrations ('rails db:migrate'), rails db:seed to populate the database.
- run  (`rails s`) to run the backend
#### FrontEnd SetUP
- Navigate to the client folder and open it in the terminal
- run (`npm start`) to run the applicationon the browser.
- Done..! the site is up and running locally.


## Development

---

Want to contribute to Park-Planner? Excellent!

To enhance or contribute on the existing project, follow these steps:

- Fork the repo
- Create a new branch (git checkout -b enhance-feature)
- Make the appropriate changes in the files
- Add changes to reflect the changes made
- Commit your changes (git commit -m 'Enhanced feature')
- Push to the branch (git push origin enhance-feature)
- Create a Pull Request

### Live Link

---

\- Click this link to see the live website

## License

---

MIT License

Copyright (c) [2022]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.