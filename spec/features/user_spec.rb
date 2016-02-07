require 'rails_helper.rb'

describe 'User' do
  it 'can register' do
    visit new_user_registration_path

    fill_in 'Email', with: 'test@test.ru'
    fill_in 'Password', with: '00000000'
    fill_in 'Password confirmation', with: '00000000'

    click_on 'Sign up'

    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end

  it 'can sign out' do
    visit new_user_registration_path

    fill_in 'Email', with: 'test@test.ru'
    fill_in 'Password', with: '00000000'
    fill_in 'Password confirmation', with: '00000000'

    click_on 'Sign up'

    click_on 'Выход'

    expect(page).to have_content 'Signed out successfully.'
  end

  it 'can log in' do
    visit new_user_registration_path

    fill_in 'Email', with: 'test@test.ru'
    fill_in 'Password', with: '00000000'
    fill_in 'Password confirmation', with: '00000000'

    click_on 'Sign up'

    click_on 'Выход'

    visit new_user_session_path

    fill_in 'Email', with: 'test@test.ru'
    fill_in 'Password', with: '00000000'

    click_on 'Log in'

    expect(page).to have_content ('Signed in successfully.')
  end
end
