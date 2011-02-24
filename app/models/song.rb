class Song
  include Mongoid::Document
  include Mongoid::Timestamps

  attr_accessible :title
  field :title

  mount_uploader :song, SongUploader
end

