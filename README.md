StatusEngine
============

StatusEngine describes your rails status, such as:

* healthiness
* revision
* and so on...

Usage
-----

```ruby
# in Gemfile
gem 'status_engine'
```

```ruby
# in routes.rb
mount StatusEngine::Engine => '/status'
```

Author
------

Uchio KONDO <udzura@udzura.jp>

ChangeLog
---------

* 2013-11-11
    * First version of `status_angine.gem`
