class CreateAdvertisers < ActiveRecord::Migration
  def change
    create_table :advertisers do |t|
      t.string :company_name
      t.string :contact_person
      t.string :website

      t.timestamps null: false
    end
  end
end
