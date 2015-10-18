class CreateRequestHeaders < ActiveRecord::Migration
  def change
    create_table :request_headers do |t|
			t.string :remote_ip
			t.string :remote_host
			t.string :server_name
      t.timestamps null: false
    end
  end
end
