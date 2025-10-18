module SignInSupport
  def sign_in(user)
    visit root_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on('Log in')
    sleep 1
    expect(page).to have_current_path(root_path)
  end
end