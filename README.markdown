mp3upload
=========

A proof of concept application demonstrating cutting edge web technologies to upload audio file.

Common Audio Files enabled to be loaded:

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

Deploy notes
------------

Until now, to run locally comment out the following line into config.ru :

   # use Rack::Static, :urls => ['/uploads'], :root => 'tmp' 

To deploy & run on Heroku leave uncommented :

   use Rack::Static, :urls => ['/uploads'], :root => 'tmp'
 
Setting config.middleware.use Rack::Static, :urls => ['/uploads'], :root => 'tmp' into config/environments/production.rb, seems not working until now, I'll investigate ;-)

