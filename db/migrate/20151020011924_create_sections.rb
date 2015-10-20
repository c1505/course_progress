class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer :time_estimate
      t.integer :time_completed
      t.boolean :complete
      t.text :title

      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
