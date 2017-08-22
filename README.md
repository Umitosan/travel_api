# README

### Token-Based Authentication and Authorization

* JWT
* API auth tutorial referenced:
* https://www.sitepoint.com/introduction-to-using-jwt-in-rails/
* Other tutorial from Ken:
* https://www.pluralsight.com/guides/ruby-ruby-on-rails/token-based-authentication-with-ruby-on-rails-5-api#authentication-users


* working curl commands
```bash
$ curl -X POST -d email="a@a.com" -d password="changeme" http://localhost:3000/auth_user
```
* example with auth token (works)
```bash
$ curl -H "Authorization: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0fQ.zwU8lWDbS2S6htTsHeYtpAbZBbJYWkFopzj6ugyuvGU"  -X GET http://localhost:3000/api/v1/destinations
```
```
curl -H "Authorization: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0fQ.zwU8lWDbS2S6htTsHeYtpAbZBbJYWkFopzj6ugyuvGU" \
    -F 'batch=[{"method":"GET", "relative_url":"me"},{"method":"GET", "relative_url":"me/friends?limit=50"}]'
```
```
'{ops: [{method: "get" , url: "http://localhost:3000/destinations"}], sequential: true}'
```

```
$ curl -H "Authorization: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0fQ.zwU8lWDbS2S6htTsHeYtpAbZBbJYWkFopzj6ugyuvGU" -F 'batch=[{"method":"GET", "relative_url": "http://localhost:3000/destinations"}]'
```
```
-F 'batch=[{"method":"GET", url: "http://localhost:3000/destinations"}]'
```

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

* use kaminari gem
```
gem 'kaminari'
```
* Controller Example
```ruby
@destinations = Destination.page(params[:page]).as_json(include:[:reviews], root: true)
```
* api call in Postman
```
http://localhost:3000/api/v1/destinations?page=1
```


### Batching API calls

### Rate Limiting
