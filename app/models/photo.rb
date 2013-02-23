class Photo < ActiveRecord::Base
  attr_accessible :data, :tags, :token,:content_type, :image_file

  def image_file=(input_data)
    self.token = input_data.original_filename[0..5] + ('a'..'z').to_a.shuffle[0..7].join
    self.data = input_data.read
    self.content_type = input_data.content_type.chomp
  end
end
