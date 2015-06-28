FactoryGirl.define do
  factory :potluck do
    recipe_ids [1,2,3,4]
    total_cost 30_00
    owner_venmo "test_venmo_account"
  end
end
