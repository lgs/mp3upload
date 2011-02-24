class Song
  include Mongoid::Document
  include Mongoid::Timestamps

  mount_uploader :song, SongUploader
end

