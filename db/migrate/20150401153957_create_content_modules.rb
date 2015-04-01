class CreateContentModules < ActiveRecord::Migration
  def change
    create_table :content_modules do |t|
      t.string :title
      t.string :subtitle

      t.timestamps
    end
  end
end
