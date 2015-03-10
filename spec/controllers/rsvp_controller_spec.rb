require 'rails_helper'

RSpec.describe RsvpController, type: :controller do
  describe 'GET new' do
    subject { get :new }
    it { is_expected.to have_http_status :success }
    it { is_expected.to render_template :new }
  end

  describe 'POST create' do
    subject { post :create, rsvp: rsvp_params }

    context "with valid params" do
      let(:rsvp_params) do
        {
          name: "Alistair Norman",
          email: "alistair@example.com",
          plus_one: "Julia Tschanz",
          plus_one_reason: "She is a nice human.",
          coming: true
        }
      end

      it "saves a new rsvp" do
        expect{subject}.
          to change{Rsvp.count}.
          from(0).to(1)
      end

      it "redirects to the new rsvp" do
        expect(subject).to redirect_to rsvp_path(Rsvp.first)
      end
    end

    context "with invalid params" do
      let(:rsvp_params) do
        {potato_butt: 'cutie'}
      end

      it { is_expected.to render_template :new }

      it "assigns the unpersisted rsvp to @rsvp" do
        subject
        expect(assigns(:rsvp)).not_to be_persisted
        expect(assigns(:rsvp)).to be_a Rsvp
      end
    end
  end
end
