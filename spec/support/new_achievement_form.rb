class NewAchievementForm
  include Capybara::DSL
  include Rails.application.routes.url_helpers

  def visit_page
    visit(root_path)
    click_on('New Achievement')
    self
  end

  def fill_in_with(params = {})
    byebug
    fill_in('Title', with: params.fetch(:title, 'Default title'))
    fill_in('Description', with: params.fetch(:description, 'Default description'))
    select('Public', from: 'Privacy')
    check('Featured achievement')
    attach_file('Cover image', "#{Rails.root}/spec/fixtures/cover_image.png")
    self
  end

  def submit
    click_on('Create Achievement')
    self
  end
end
