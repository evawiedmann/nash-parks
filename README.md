# Nash Parks

2020-02-17

## Description:
This application was made as part of a coding project for Eva Wiedmann, a student at _[Epicodus](http://www.epicodus.com)_, a vocational school for technology careers based in Portland, OR. The project is designed to create an API for national parks in the US and corresponding reviews.

## Setup/Installation instructions:
* Click the `Clone or download` button and copy the link.
* Open your terminal application (assuming **GIT Scripts** and **node.js** (with NPM), and **Ruby 2.5.1** have been installed on your system) and type `git clone (link)`.
* In terminal using the `cd`... command, navigate to the newly created repository and run `bundle install`.
* Run `rake db:create`.
* Run `rake db:migrate`.
* Run `rake db:seed`.
* Run `rails s`.

## API Usage
* Open `Postman`.
* GET _localHost:3000/parks_ fora list of all parks.
* GET _localHost:3000/parks/parkID_ for a list of a particular park.
* POST _localHost:3000/parks_ create a park by inputting "name", "city", and "state".
* PATCH _localHost:3000/parks/parkID_ update a park's name, city, and/or state.
* DELETE _localHost:3000/parks/parkID_ delete a park.

## Technologies Used
> `Ruby`
> `Ruby gem Puma`
> `Ruby on Rails`

## Known Bugs
* None

## References

## Support and contact details
Contact [evawiedmann@gmail.com](mailto:evawiedmann@gmail.com)

## License
This repository is copyright (C) 2020 by Eva Wiedmann.
