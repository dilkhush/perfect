class AddAttachmentLogoToAccountSettings < ActiveRecord::Migration[5.2]
  def self.up
    change_table :account_settings do |t|
      t.attachment :logo
    end
  end

  def self.down
    drop_attached_file :account_settings, :logo
  end
end
