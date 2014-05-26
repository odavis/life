class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.integer :rating
      t.string :note

      t.timestamps
    end
  end
end
