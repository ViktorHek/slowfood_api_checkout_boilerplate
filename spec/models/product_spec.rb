require 'rails_helper'
RSpec.describe Product, type: :model do
  describe 'Products has db columns' do
    it  {is_expected.to have_db_column :id}
    it  {is_expected.to have_db_column :category_id}
    it  {is_expected.to have_db_column :name}
    it  {is_expected.to have_db_column :description}
    it  {is_expected.to have_db_column :price}
  end
  describe 'Validations' do
    it {is_expected.to validate_presence_of :category_id}
    it {is_expected.to validate_presence_of :name}
    it {is_expected.to validate_presence_of :price}
  end
end