class CreateHates < ActiveRecord::Migration
  def change
    create_table :hates do |t|

      t.timestamps
    end
  end
end
