# Flatiron School - FLEX SE - Phase 3 - Project - Notes App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

This project is to fulfill the requirements for Phase 3 of the Flatiron School - Flex SE program.

## Description

Notes App allows authors to create a quick note and save it to a database they can easily retrieve from later.
You can view other author's notes and modify them as well.

Functionality includes:
- Create a new author.
- Delete an existing author with the author's associated notes.
- Create a new note.
- View an existing note.
- Modify an existing note.
- Delete an existing note.

## Project Requirements

- [ ] Use Active Record to interact with a database.
- [ ] Have at least two models with a one-to-many relationship.
- [ ] At a minimum, set up the following API routes in Sinatra:
  - create and read actions for both models
  - full CRUD capability for one of the models
- [ ] Build a separate React frontend application that interacts with the API to perform CRUD actions.
- [ ] Implement proper front end state management. You should be updating state using a setState function after receiving your response from a POST, PATCH, or DELETE request. You should NOT be relying on a GET request to update state.
- [ ] Use good OO design patterns. You should have separate classes for each of your models, and create instance and class methods as necessary.
- [ ] Routes in your application (both client side and back end) should follow RESTful conventions.
- [ ] Use your back end optimally. Pass JSON for related associations to the front end from the back end. You should use active record methods in your controller to grab the needed data from your database and provide as JSON to the front end. You should NOT be relying on filtering front end state or a separate fetch request to retrieve related data.

## Usage

In the project directory, you can run:

### Fontend

The following are to be ran in this frontend repo.
You can find the frontend using this link:
[Link to Fontend](https://github.com/JackieYeDev/phase-3-sinatra-react-project-frontend)

### `npm install`

Install required dependencies listed in `package.json`.

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.

### Backend

The following are to be ran in this backend repo.

### `bundle install`

Install required dependencies listed in `Gemfile`.

### `rackup db:migrate db:seed`

Creates the necessary models in the migration files and populates the models using `seed.rb`.

### `rackup config.ru`

Runs the Sinatra server required for the API backend.
Open [http://localhost:9292](http://localhost:9292) to view it in your browser.