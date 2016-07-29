class AddAttachmentPhotoToProfiles < ActiveRecord::Migration
  def self.up
    change_table :profiles do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :profiles, :photo
  end
end
