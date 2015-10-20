class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.integer :time_estimate
      t.integer :time_completed
      t.boolean :complete
      t.text :title

      t.timestamps null: false
    end
  end
end
