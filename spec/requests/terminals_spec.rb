 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/terminals", type: :request do
  # Terminal. As you add validations to Terminal, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Terminal.create! valid_attributes
      get terminals_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      terminal = Terminal.create! valid_attributes
      get terminal_url(terminal)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_terminal_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      terminal = Terminal.create! valid_attributes
      get edit_terminal_url(terminal)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Terminal" do
        expect {
          post terminals_url, params: { terminal: valid_attributes }
        }.to change(Terminal, :count).by(1)
      end

      it "redirects to the created terminal" do
        post terminals_url, params: { terminal: valid_attributes }
        expect(response).to redirect_to(terminal_url(Terminal.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Terminal" do
        expect {
          post terminals_url, params: { terminal: invalid_attributes }
        }.to change(Terminal, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post terminals_url, params: { terminal: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested terminal" do
        terminal = Terminal.create! valid_attributes
        patch terminal_url(terminal), params: { terminal: new_attributes }
        terminal.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the terminal" do
        terminal = Terminal.create! valid_attributes
        patch terminal_url(terminal), params: { terminal: new_attributes }
        terminal.reload
        expect(response).to redirect_to(terminal_url(terminal))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        terminal = Terminal.create! valid_attributes
        patch terminal_url(terminal), params: { terminal: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested terminal" do
      terminal = Terminal.create! valid_attributes
      expect {
        delete terminal_url(terminal)
      }.to change(Terminal, :count).by(-1)
    end

    it "redirects to the terminals list" do
      terminal = Terminal.create! valid_attributes
      delete terminal_url(terminal)
      expect(response).to redirect_to(terminals_url)
    end
  end
end