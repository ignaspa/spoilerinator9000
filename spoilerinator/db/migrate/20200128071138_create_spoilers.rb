class CreateSpoilers < ActiveRecord::Migration
  def change
    create_table :spoilers do |t|
      t.string :title
      t.string :contents

      t.timestamps null: false
    end
  end
end
