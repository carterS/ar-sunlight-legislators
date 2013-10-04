require_relative '../config'

class CreateRepresentatives < ActiveRecord::Migration
  def change
    create_table :representatives do |field|
      field.integer :legislator_id
    end
  end
end
