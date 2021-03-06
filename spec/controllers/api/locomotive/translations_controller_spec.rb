# require 'spec_helper'

# module Locomotive
#   module Api
#     describe TranslationsController do

#       let(:site)     { create(:site, domains: %w{www.acme.com}) }
#       let(:account)  { create(:account) }
#       let!(:membership) do
#         create(:membership, account: account, site: site, role: 'admin')
#       end
#       let!(:translation) { create(:translation, site: site) }

#       before do
#         request_site site
#         sign_in account
#       end

#       describe "#GET index" do
#         subject { get :index, locale: :en, format: :json }
#         it { is_expected.to be_success }
#         specify do
#           subject
#           expect(assigns(:translations).all).to eq([translation])
#         end
#       end

#       describe "#GET show" do
#         subject { get :show, id: translation.id, locale: :en, format: :json }
#         it { is_expected.to be_success }
#       end

#       describe "#POST create" do
#         let(:translation_attributes) do
#           attributes_for(:translation, site: site)
#         end
#         subject do
#           post :create, locale: :en, translation: translation_attributes, format: :json
#         end
#         it { is_expected.to be_success }
#         specify do
#           expect { subject }.to change(Locomotive::Translation, :count).by(+1)
#         end
#       end

#       describe "#PUT update" do
#         subject do
#           put :update, id: translation.id, locale: :en, translation: { }, format: :json
#         end
#         it { is_expected.to be_success }
#       end

#       describe "#DELETE destroy" do
#         subject do
#           delete :destroy, id: translation.id, locale: :en, format: :json
#         end
#         it { is_expected.to be_success }
#         specify do
#           expect { subject }.to change(Locomotive::Translation, :count).by(-1)
#         end
#       end

#     end
#   end
# end
