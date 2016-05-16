class CreateLearns < ActiveRecord::Migration
  def change
    create_table :learns do |t|

      t.string  :ask
      t.string  :answer

      t.timestamps null: false
    end
  end
end
