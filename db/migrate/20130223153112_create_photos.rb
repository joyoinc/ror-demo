class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :token
      t.string :tags
      t.binary :data

      t.timestamps
    end
  end
end
