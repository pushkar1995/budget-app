require 'rails_helper'

RSpec.describe 'splash/index', type: :view do
  it 'displays the Budget App home page' do
    render

    expect(rendered).to have_selector('h1', text: 'Budget App')
  end
end
