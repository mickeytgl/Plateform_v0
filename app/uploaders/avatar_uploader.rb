class AvatarUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  def default_url
    "http://via.placeholder.com/40x40"
  end

  # Process files as they are uploaded:
  process resize_to_fill: [300, 300]

  # Create different versions of your uploaded files:
  version :thumb do
     process resize_to_fit: [40, 40]
  end

  version :medium do 
    process resize_to_fit: [200, 200]
  end

  version :showcase do 
    process resize_to_fill: [500, 300]
  end
  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_whitelist
    %w(jpg jpeg png)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  def filename
    "#{mounted_as}.jpg" if original_filename
  end

end
