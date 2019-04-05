require 'rails_helper'

describe "Notes API" do
  it "sends a list of notes" do
    create_list(:note, 5)

    get "/api/v1/notes"

    expect(response).to be_successful

    notes = JSON.parse(response.body)

    expect(notes["data"].count).to eq(5)
    expect(notes["data"].first).to have_key("title")
    expect(notes["data"].last).to have_key("title")
    expect(notes["data"].first).to have_key("body")
    expect(notes["data"].last).to have_key("body")
  end
end
