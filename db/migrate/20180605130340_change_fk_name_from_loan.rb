class ChangeFkNameFromLoan < ActiveRecord::Migration[5.1]
  def change
    rename_column :loans, :borrower_id, :user_id
  end
end
