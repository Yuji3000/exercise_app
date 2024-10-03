require 'rails_helper'

describe 'Dashboard Index Page' do

    let!(:user1) {User.create(name: "first user", email: "first@user.com", height_inches: 51 , body_weight: 151)}
    let!(:program1) {Program.create(name: "New Years Pump Up", description: "Doin cool stuff this year")}
    let!(:user_program1) {UserProgram.create(user_id: user1.id, program_id: program1.id)}
    let!(:workout1) {Workout.create(name: "Chest", day_of_week: "monday", program_id: user_program1)}
    let!(:workout2) {Workout.create(name: "Back", day_of_week: "wednesday", program_id: user_program1)}
    let!(:workout3) {Workout.create(name: "Legs", day_of_week: "friday", program_id: user_program1)}
    
    
    
  it 'should have button to a users programs index page' do
    visit user_dashboard_index_path(user1)
    expect(page).to have_button('Programs')

    click_button 'Programs'
    expect(current_path).to eq(user_programs_path(user1))
  end

  it 'should have button to add a workout entry' do
    visit user_dashboard_index_path(user1)
    expect(page).to have_button('Add A Workout Entry')

    click_button 'Add A Workout Entry'
    expect(current_path).to eq(user_workouts_path(user1))
  end
end
