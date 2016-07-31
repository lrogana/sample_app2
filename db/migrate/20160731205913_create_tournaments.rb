class CreateTournaments < ActiveRecord::Migration[5.0]
  def change
    create_table :tournaments do |t|
      t.string :tournamentname
      t.string :sport
      t.string :tournamentlevel
      t.string :tournamentaddress
      t.string :zipcode
      t.string :state
      t.string :zip
      t.string :country

      t.timestamps
    end
  end
end
