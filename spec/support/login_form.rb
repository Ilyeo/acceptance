class LoginForm
  include Capybara::DSL
  include Rails.application.routes.url_helpers

  def visit_page
    visit(user_session_path)
    self
  end

  def login_as(user)
    fill_in("Email", with: user.email)
    fill_in("Password", with: user.password)
    click_on("Log in")
    self
  end
end
