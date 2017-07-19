# README

### Token-Based Authentication and Authorization

* API auth tutorial referenced:
* https://www.sitepoint.com/introduction-to-using-jwt-in-rails/

```
curl -X POST -d email="a@a.com" -d password="changeme" http://localhost:3000/auth_user
```
* From Ken:
*   https://www.pluralsight.com/guides/ruby-ruby-on-rails/token-based-authentication-with-ruby-on-rails-5-api#authentication-users


### serialization

* example from controller

```ruby
@destinations = Destination.all.as_json(include:[:reviews], root: true)
```

### API Versioning

* https://www.joshqn.com/rails-api-versioning/


### Using Swagger for Documentation

?
https://github.com/domaindrivendev/rswag

### Paginating an API

### Batching API calls

### Rate Limiting
