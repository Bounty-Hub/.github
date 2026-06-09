class AddBountyClaimsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :bounty_claims do |t|
      t.references :bounty, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :github_pr, null: false, foreign_key: true

      t.timestamps
    end
  end
end