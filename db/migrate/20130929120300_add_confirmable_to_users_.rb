# see https://github.com/plataformatec/devise/wiki/How-To:-Add-:confirmable-to-Users

class AddConfirmableToUsers < ActiveRecord::Migration
  # Note: you can't use change, as User.update_all will fail in the down migration
  def self.up
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_sent_at, :datetime
    add_column :users, :unconfirmed_email, :string # Only if using reconfirmable

    User.update_all(:confirmed_at => Time.now)
  end

  def self.down
    remove_column :users, :confirmation_token, :confirmed_at, :confirmation_sent_at
    remove_column :users, :unconfirmed_email # Only if using reconfirmable
  end
end