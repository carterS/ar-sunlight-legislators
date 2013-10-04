require_relative '../config'

class CreateSenators < ActiveRecord::Migration
  def change
    create_table senators do |field|
      field.integer :legislator_id
    end
  end
end
