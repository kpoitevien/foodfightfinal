# FoodFight
Food fight helps educate users on cancer preventive foods and provides recipes.  Once signed in the user can save recipes and also consult with other users in the Forum.

## Wireframes

![](readme_assets/1-%20Landing%20Page%201%402x.png)
![](readme_assets/Quiz%20v4%20results%20Create%20an%20account%402x.png)
![](readme_assets/Profile%20page%402x%20(1).png)
![](readme_assets/8-%20Search%20Results%20V2%20%20%20%20Copy%204%402x.png)
![](readme_assets/Forum%20-%20add%20new%402x.png)
![](readme_assets/Forum%20view%20thread%20liked%402x.png)
![](readme_assets/Quiz%20v4%20results%20part%202%402x.png)

## Entity Relational Diagram
![](readme_assets/think%20pink.png)

## Technology being Used

Ruby 2.6.3
React 16.13
Javascript packages: axios 0.19
Ruby gems: administrate,, react-rails, devise, gratify, activeadmin, inherited_resources, owlcarousel-rails
Postgres 12.0
Style: CSS, BootStrap
Hosted: Heroku


# README

This is a boilerplate Rails project that uses:

* `ruby ~> 2.7`
* `postgresql` as the database
* `webpacker` with `react`
* the `react_on_rails` gem

## Getting Started 
yarn install to setup the required packages.
bundle install to setup required gems.
rails db:create to create your local database.
rails db:migrate
rails db:seed to generate the quizzes in your local database.
rails s to start the server on localhost:3000

## Authors
Jaboa Howell
Kiara Poitevien
Julio Acceus
Elias Zabaneh


## Deployment

### The Node.js buildback must be added first or precompiling of assets may fail on Heroku: [See this issue](https://github.com/rails/webpacker/issues/1164#issuecomment-443474860)

* `heroku create your-app-name`
* `heroku buildpacks:set --index 1 heroku/nodejs`
* `heroku buildpacks:add heroku/ruby`
* `git push heroku master`
* `heroku run rails db:migrate`
* _optional_: `heroku run rails db:seed`
