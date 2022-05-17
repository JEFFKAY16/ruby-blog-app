class AddConfirmableToDeviseV1 < ActiveRecord::Migration[7.0]
  def change
    add_index  :users, :confirmation_token, :unique => true
  end
end
