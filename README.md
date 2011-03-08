# mp3upload
__A proof of concept application to upload audio files.

## Rails 3.0.5, Carrierwave, MongoID, Plupload

## Deployed on Heroku using Carrierwave caching with MongoHQ GridFS

## List Of Audio File Formats Supported:

.aac	Advanced Audio Coding File
.aif	Audio Interchange File Format
.iff	Interchange File Format
.m3u	Media Playlist File
.mid	MIDI File
.mp3	MP3 Audio File
.mpa	MPEG-2 Audio File
.ra	Real Audio File
.wav	WAVE Audio File
.wma	Windows Media Audio File

== Resources
Using Carrierwave caching on heroku:
[http://rickenharp.posterous.com/using-carrierwave-caching-on-heroku]i(http://rickenharp.posterous.com/using-carrierwave-caching-on-heroku)


# Gemfile.lock

== GIT
  remote: http://github.com/jnicklas/carrierwave.git
  revision: 4251250c5295deb24817f698600ab29d7df0e7ae
  specs:
    carrierwave (0.5.2)
      activesupport (~> 3.0)

== GEM
  remote: http://rubygems.org/
  specs:
    abstract (1.0.0)
    actionmailer (3.0.5)
      actionpack (= 3.0.5)
      mail (~> 2.2.15)
    actionpack (3.0.5)
      activemodel (= 3.0.5)
      activesupport (= 3.0.5)
      builder (~> 2.1.2)
      erubis (~> 2.6.6)
      i18n (~> 0.4)
      rack (~> 1.2.1)
      rack-mount (~> 0.6.13)
      rack-test (~> 0.5.7)
      tzinfo (~> 0.3.23)
    activemodel (3.0.5)
      activesupport (= 3.0.5)
      builder (~> 2.1.2)
      i18n (~> 0.4)
    activerecord (3.0.5)
      activemodel (= 3.0.5)
      activesupport (= 3.0.5)
      arel (~> 2.0.2)
      tzinfo (~> 0.3.23)
    activeresource (3.0.5)
      activemodel (= 3.0.5)
      activesupport (= 3.0.5)
    activesupport (3.0.5)
    arel (2.0.9)
    bson (1.2.4)
    bson_ext (1.2.4)
    builder (2.1.2)
    erubis (2.6.6)
      abstract (>= 1.0.0)
    excon (0.5.6)
    fog (0.6.0)
      builder
      excon (>= 0.5.5)
      formatador (>= 0.0.16)
      json
      mime-types
      net-ssh (>= 2.0.23)
      nokogiri (>= 1.4.4)
      ruby-hmac
    formatador (0.0.16)
    i18n (0.5.0)
    jquery-rails (0.2.7)
      rails (~> 3.0)
      thor (~> 0.14.4)
    json (1.5.1)
    mail (2.2.15)
      activesupport (>= 2.3.6)
      i18n (>= 0.4.0)
      mime-types (~> 1.16)
      treetop (~> 1.4.8)
    mime-types (1.16)
    mongo (1.2.4)
      bson (>= 1.2.4)
    mongoid (2.0.0.rc.7)
      activemodel (~> 3.0)
      mongo (~> 1.2)
      tzinfo (~> 0.3.22)
      will_paginate (~> 3.0.pre)
    net-ssh (2.1.3)
    nokogiri (1.4.4)
    polyglot (0.3.1)
    rack (1.2.1)
    rack-mount (0.6.13)
      rack (>= 1.0.0)
    rack-test (0.5.7)
      rack (>= 1.0)
    rails (3.0.5)
      actionmailer (= 3.0.5)
      actionpack (= 3.0.5)
      activerecord (= 3.0.5)
      activeresource (= 3.0.5)
      activesupport (= 3.0.5)
      bundler (~> 1.0)
      railties (= 3.0.5)
    railties (3.0.5)
      actionpack (= 3.0.5)
      activesupport (= 3.0.5)
      rake (>= 0.8.7)
      thor (~> 0.14.4)
    rake (0.8.7)
    ruby-hmac (0.4.0)
    thor (0.14.6)
    treetop (1.4.9)
      polyglot (>= 0.3.1)
    tzinfo (0.3.24)
    will_paginate (3.0.pre2)

== PLATFORMS
  ruby

== DEPENDENCIES
  bson
  bson_ext
  carrierwave!
  fog
  jquery-rails
  mongoid (>= 2.0.0.rc.7)
  rails (= 3.0.5)


