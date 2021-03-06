class CreateAlternativesTable < ActiveRecord::Migration
  def self.up
    create_table :alternatives, :force => true do |t|
      t.string   "which"
      t.integer  "participants", :default => 0
      t.integer  "conversions",  :default => 0
      t.decimal  "metric",       :default => 0, scale: 2, precision: 10
      t.string   "experiment"

      t.timestamps
    end

    add_index :alternatives, :which
    add_index :alternatives, :experiment

  end

  def self.down
    drop_table :alternatives
  end
end