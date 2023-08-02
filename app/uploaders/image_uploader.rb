# app/uploaders/exercise_image_uploader.rb
class ImageUploader < CarrierWave::Uploader::Base
  # Include CarrierWave::MiniMagick for image processing
  include CarrierWave::MiniMagick

  # Choose the storage option based on your needs (Cloudinary in this case)
  storage :file
  # storage :fog

  # Set the base directory where uploaded files will be stored
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Process image by resizing it to fit within a 400x400 pixel box
  # process resize_to_fit: [400, 400]

  # Add a white list of allowed image extensions
  def extension_whitelist
    %w[jpg jpeg gif png]
  end

  # Override the filename to use a unique identifier for the uploaded images
  def filename
    "#{secure_token}.#{file.extension}" if original_filename.present?
  end

  # Use SecureRandom to generate a unique token for each image
  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) || model.instance_variable_set(var, SecureRandom.uuid)
  end
end
