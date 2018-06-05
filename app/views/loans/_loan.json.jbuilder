json.extract! loan, :id, :user_id, :book_id, :borrow_date, :return_date, :created_at, :updated_at
json.url loan_url(loan, format: :json)
