class CreateListingProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :listing_profiles do |t|
      t.string :name
      t.string :photos
      t.string :address
      t.string :description
      t.string :amenities
      t.string :directions_and_parking
      t.string :terms_and_conditions
      t.string :number_of_people
      t.string :area
      t.string :Peak_price
      t.string :off_peak_price

      t.timestamps
    end
  end
end
