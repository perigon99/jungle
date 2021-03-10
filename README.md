# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## User UI

![screenshot description](/public/images/jungle1.png)

## Admin UI

![screenshot description](/public/images/jungle2.png)
![screenshot description](/public/images/jungle3.png)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
- PostgreSQL 9.x
- Stripe
- bcrypt 3.1.7
- puma
- bootstrap-sass 3.3.6
- font-awesome-rails
- money-rails
- carrierwave
- rmagick
- faker
- uglifier
- jquery-rails
- turbolinks
- jbuilder 2.0
- sdoc 0.4.0
- newrelic_rpm
- rails_12factor

## Dev depedency

- capybara
- poltergeist
- database_cleaner
- byebug
- quiet_assets
- dotenv-rails
- rspec-rails 3.5
- web-console 2.0
- spring
