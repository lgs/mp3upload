if ENV['MONGOHQ_URL']
  CarrierWave.configure do |config|
    config.storage = :grid_fs
    uri = URI.parse(ENV['MONGOHQ_URL'])
    config.grid_fs_database = File.basename(uri.path)
    config.grid_fs_host = uri.host unless uri.host.blank?
    config.grid_fs_port = uri.port unless uri.port.blank?
    config.grid_fs_username = uri.user unless uri.user.blank?
    config.grid_fs_password = uri.password unless uri.password.blank?
    config.grid_fs_access_url = '/gridfs'
    config.cache_dir = "uploads"
    config.root = Rails.root.join('tmp')
  end
end
