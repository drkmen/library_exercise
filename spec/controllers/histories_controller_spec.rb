require 'rails_helper'

RSpec.describe HistoriesController, type: :controller do

  before(:each) do
    @user = create(:user)
    sign_in @user
    @book = create(:book)
  end

  describe 'POST #create' do
    it 'creates history' do
      expect do
        post :create, params: {
            history: attributes_for(:history, user_id: @user.id, book_id: @book.id),
            book_id: @book.id
        }
      end.to change { History.count }.by(1) and
          have_http_status(200)
    end
  end
end

# # PATCH/PUT /histories/1
# # PATCH/PUT /histories/1.json
# def update
#   respond_to do |format|
#     if @history.update(returned_in: DateTime.now)
#       format.html { redirect_back fallback_location: root_path }
#       format.json { render json: @history, status: :ok }
#     else
#       format.html { redirect_back fallback_location: root_path }
#       format.json { render json: @history.errors, status: :unprocessable_entity }
#     end
#   end
# end