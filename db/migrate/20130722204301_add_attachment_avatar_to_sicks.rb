class AddAttachmentAvatarToSicks < ActiveRecord::Migration
  def self.up
    change_table :sicks do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :sicks, :avatar
  end
end
