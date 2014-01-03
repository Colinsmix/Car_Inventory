require 'spec_helper'

feature "Record a New Car", %q(As a car salesperson
                  I want to record a newly acquired car
                  So that I can list it in my lost) do
  scenario "Recording a valid New Car" do
    visit '/cars/new'
    fill_in 'Color', :with => 'Blue'
    fill_in 'Year', :with => 1985
    fill_in 'Mileage', :with => 95000.55
    click_button 'Create Car'

    expect(page).to have_content 'Create a New Car'
    expect(page).to have_content 'Car Created Successfully!'
  end

  scenario "Recording an invalid New Car" do
    visit'cars/new'
    click_button 'Create Car'
    expect(page).to have_content "Color can't be blank"
  end
  

end