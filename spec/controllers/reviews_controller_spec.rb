require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.
#
# Also compared to earlier versions of this generator, there are no longer any
# expectations of assigns and templates rendered. These features have been
# removed from Rails core in Rails 5, but can be added back in via the
# `rails-controller-testing` gem.

RSpec.describe ReviewsController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # review. As you add validations to review, be sure to
  # adjust the attributes here as well.
  let(:user) { create(:user) }
  let(:category) { create(:category) }
  let!(:user_article) { create(:article, user_id: user.id, category_id: category.id) }
  let!(:review) { create(:review, user_id: user.id, article_id: user_article.id) }

  context 'when user is logged in' do
    before do
      sign_in(user)
    end

    describe 'review #create' do
      # describe 'when user is provided' do
      #   it 'creates the new review' do
      # rubocop:disable Layout/LineLength
      #     expect{user_article :create, params: { review: { article_id: user_article.id, user_id: user.id} }}.to change{Review.count}.by(1)
      # rubocop:enable Layout/LineLength

      #     expect(user_article.reviews.first.user_id).to eq user.id
      #   end
      # end
    end
  end

  context 'when user is not logged in' do
    # describe 'review #create' do
    #   it 'does not create review and redirects to login' do
    #       expect{article :create, params: { review: { article_id: user_article.id} }}.to change{Review.count}.by(0)

    #   end
    # end
  end
end
