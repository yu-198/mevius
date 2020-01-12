class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|

      t.string :name, nall: false
      t.boolean :is_disable, default:false
      t.timestamps
    end
  end
end
