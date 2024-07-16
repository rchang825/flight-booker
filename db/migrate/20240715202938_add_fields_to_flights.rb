class AddFieldsToFlights < ActiveRecord::Migration[7.1]
  def change
    add_column :flights, :date, :datetime
    add_column :flights, :duration, :string
  end
end
