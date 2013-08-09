class AddAttachmentAvatarToPlagues < ActiveRecord::Migration
  def self.up
    change_table :plagues do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :plagues, :avatar
  end
end
