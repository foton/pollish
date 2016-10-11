# README
Application for presenttation of ActiveCable feature of Rails 5.
Se execelent article at http://pixelatedworks.com/articles/introduction-to-actioncable-in-rails-5/ .

This version of https://github.com/samullen/pollish have sqlite instead of PostgreSql.
And is seeded with "Example Poll" and users voter1@example.com:example1 and voter2@example.com:example2

So all you have to do is:

    git clone https://github.com/foton/pollish`
    cd pollish
    bundle
    bundle exec rails db:migrate
    bundle exec rails db:seed
    bundle exec rails s

And at `localhost:3000/polls` you will have your Example poll. Try vote from two different browsers.
For sign in use `voter1@example.com` with password `example1` or `voter2@example.com` with `example2`.
