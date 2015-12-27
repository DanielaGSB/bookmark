def sign_up
  visit '/users/new'
  expect(page.status_code).to eq(200)
  fill_in :email, with: 'daniela.g@gmail.com'
  fill_in :password, with: 'hola!'
  fill_in :password_confirmation, with: 'hola!'
  click_button 'Sign up'
end

def failed_sign_up
  visit '/users/new'
  expect(page.status_code).to eq(200)
  fill_in :email, with: 'daniela.g@gmail.com'
  fill_in :password, with: 'hola!'
  fill_in :password_confirmation, with: 'green'
  click_button 'Sign up'
end

def sign_up_no_email
  visit '/users/new'
  expect(page.status_code).to eq(200)
  fill_in :email, with: ' '
  fill_in :password, with: 'hola!'
  fill_in :password_confirmation, with: 'hola'
  click_button 'Sign up'
end
