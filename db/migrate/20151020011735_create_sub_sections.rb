class CreateSubSections < ActiveRecord::Migration
  def change
    create_table :sub_sections do |t|
      t.integer :time_estimate
      t.integer :time_completed
      t.boolean :complete
      t.text :title

      t.references :section, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
