class CreateAnalytics < ActiveRecord::Migration[5.2]
  def change
    create_table :analytics do |t|
      t.integer :event
      t.string :value
      t.datetime :event_time

      t.timestamps
    end
  end
end
