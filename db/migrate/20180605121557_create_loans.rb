class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true
      t.date :borrow_date
      t.date :return_date

      t.timestamps
    end
    rename_column :loans, :user_id, :borrower_id
  end
end
