require 'rails_helper.rb'

describe 'Photo' do
  it 'could be created' do
    visit new_photo_path

    fill_in 'Название', with: 'Test photo'
    attach_file 'Изображение', 'spec/factories/files/awesome.jpg'

    click_on 'Сохранить'

    expect(page).to have_content 'Test photo'
    expect(page).to have_content 'Photo was successfully created.'
  end

  it 'could be edited' do
    visit new_photo_path

    fill_in 'Название', with: 'Test photo'
    attach_file 'Изображение', 'spec/factories/files/awesome.jpg'

    click_on 'Сохранить'
    click_on 'Редактировать'

    fill_in 'Название', with: 'Updated photo'
    click_on 'Сохранить'

    expect(page).to_not have_content 'Test photo'
    expect(page).to have_content 'Updated photo'
    expect(page).to have_content 'Photo was successfully updated.'
  end

  it 'could be deleted' do
    visit new_photo_path

    fill_in 'Название', with: 'Test photo'
    attach_file 'Изображение', 'spec/factories/files/awesome.jpg'

    click_on 'Сохранить'

    expect(page).to have_content 'Test photo'

    click_on 'Удалить'

    expect(page).to have_content 'Photo was successfully destroyed.'
  end
end
