# RailsClone

[WIP]

I needed to generate Rails apps from my 'golden' base app for my
clients.

I prefer to maintain a versioned prototype and clone client apps from
that, instead of fiddling with Rails templates.

This is a gem to automate that.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_clone'
```

And then execute:

```
$ bundle
```

You'll see a new `app:clone` task:

```
rake app:clone[from,name,branch]    # Clone an app from a branch
```



## Usage

You want to change the app name (usually the namespace, db names, etc)
from some name to another name.

```
$ rake app:clone[prototype,new_app,master]
```

* prototype - the name of your prototype app. I maintain 4 app variants
  named "Prime", "Omakase" and the mongodb variants of them.

* new_app - in the example, an app named "new_app"

* master - in the example, the branch I want to clone from



# Contributing

Fork, implement, add tests, pull request, get my everlasting thanks and a respectable place here :).


# Copyright

Copyright (c) 2014 [Dotan Nahum](http://gplus.to/dotan) [@jondot](http://twitter.com/jondot). See MIT-LICENSE for further details.
