class CreateHates < ActiveRecord::Migration
  def change
    create_table :hates do |t|
      t.string :name
      t.string :content

      t.timestamps
    end
  end
end
