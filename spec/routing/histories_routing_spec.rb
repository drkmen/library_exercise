require 'rails_helper'
RSpec.describe 'routes for Histories', type: :routing do
  it do
    expect(post: 'books/1/histories').to route_to(controller: 'histories', action: 'create', book_id: '1')
  end

  it do
    expect(patch: 'books/1/histories/1').to route_to(controller: 'histories', action: 'update', book_id: '1', id: '1')
  end
end