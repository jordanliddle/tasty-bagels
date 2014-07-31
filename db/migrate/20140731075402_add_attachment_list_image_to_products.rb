class AddAttachmentListImageToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :list_image
    end
  end

  def self.down
    remove_attachment :products, :list_image
  end
end
