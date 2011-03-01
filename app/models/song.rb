require 'carrierwave/orm/mongoid'

class Song
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title

  mount_uploader :file, FileUploader
end

