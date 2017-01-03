class AddAttachmentMp3ToLists < ActiveRecord::Migration
  def self.up
    change_table :lists do |t|
      t.attachment :mp3
    end
  end

  def self.down
    remove_attachment :lists, :mp3
  end
end
