class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|

      t.string  :ask
      t.string  :answer

      t.timestamps null: false
    end
  end
end
