require 'spec_helper'

feature "Inventory manager adds items to inventory", %q{
  As a inventory manager
  I want to be able to add food to my inventory
  So I know exactly how much of a given product I have
} do

  # Acceptance Criteria:
  # Must be able to add the product name
  # Must be able to add a description
  # Must be able to add the qty


  context "Manager visits the add item page, and adds all of the correct items" do
  it "exepect to have content" do
    visit 'items/new'

    fill_in "Name", with: "Steak"
    fill_in "Description", with: "This is some really good food"
    fill_in "Quanity", with: 22
    click_on "Create Item" 

    expect(page).to have_content("Item Added")
    expect(page).to have_content("Name")
    expect(page).to have_content("Description")
    expect(page).to have_content("Quanity")
    end
  end 


  context "Manager visits the add item page, and does not add all require items" do
  it "exepect to have content" do
    visit 'items/new'

    fill_in "Name", with: "Special K"
    fill_in "Description", with: "This is some really good food"
    click_on "Create Item" 

    expect(page).to have_content("is not a number")
    expect(page).to have_content("Name")
    expect(page).to have_content("Description")
    expect(page).to have_content("Quanity")
    end
  end 

end