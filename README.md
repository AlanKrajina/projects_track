# Projects_Track

Projects_Tracks CLI is a CRUD, MVC app that uses Sinatra. The app allows a user to signup or login to their account. User will have the ability to Create a project, Read the info, Update and Delete. User will have his own space to check only his projects and to edit them. On the app homepage all users can see all of the projects created. A user can only update and delete his own projects.

## Installation

Add to IDE:

```
git clone git@github.com:AlanKrajina/projects_track.git
```

And then execute:

    $ cd projects_track

After:

    $ bundle install
    $ rake db:migrate
    $ rake db:seed
    $ shotgun

## Requirements

- Build an MVC Sinatra application.
- Use ActiveRecord with Sinatra.
- Use multiple models.
- Use at least one has_many relationship on a User model and one belongs_to relationship on another model.
- Must have user accounts - users must be able to sign up, sign in, and sign out.
- Validate uniqueness of user login attribute (username or email).
- Once logged in, a user must have the ability to create, read, update and destroy the resource that belongs_to user.
- Ensure that users can edit and delete only their own resources - not resources created by other users.
- Validate user input so bad data cannot be persisted to the database.
- BONUS: Display validation failures to user with error messages.

-> Blog explaining the way requirements are met: https://alankrajina.github.io/projects_track_app

-> Short video demo with narration describing how a user would interact with application: https://youtu.be/RmwHHkkomrU

## Usage

After running shotgun in terminal there will be a message like -> Your server is running at 165.227.145.70:38134. 
To run the app just add server path to your browser like this: http://165.227.145.70:38134


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/AlanKrajina/projects_track.git. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

