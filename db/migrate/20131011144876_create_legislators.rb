require_relative '../config'

class CreateLegislators < ActiveRecord::Migration
  def change
    create_table legislators do |field|
      field.string :title
      field.string :firstname
      field.string :middlename
      field.string :lastname
      field.string :name_suffix
      field.string :party
      field.string :state
      field.string :district
      field.boolean :in_office
      field.string :gender
      field.string :phone
      field.string :fax
      field.string :website
      field.string :webform
      field.string :congress_office
      field.string :twitter_id
      field.date :birthdate

      field.timestamps
    end
  end

end
