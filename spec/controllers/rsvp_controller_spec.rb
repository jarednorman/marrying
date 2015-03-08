require 'rails_helper'

RSpec.describe RsvpController, type: :controller do
  describe 'GET new' do
    subject { get :new }
    it { is_expected.to have_http_status :success }
    it { is_expected.to render_template :new }
  end
end
