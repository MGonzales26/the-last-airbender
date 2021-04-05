require 'rails_helper'

RSpec.describe "Member Poro" do
  it "can create a new member" do
    data = {
      :name => "Chan (Fire Nation admiral)",
      :allies => ["Ozai"],
      :enemies => ["Earth Kingdom"],
      :affiliation => ["Fire Nation Navy"]
    }

    member = Member.new(data)
    allies = ["Ozai"]
    enemies = ["Earth Kingdom"]
    affiliation = ["Fire Nation Navy"]

    expect(member.name).to eq("Chan (Fire Nation admiral)")
    expect(member.allies).to eq(allies)
    expect(member.enemies).to eq(enemies)
    expect(member.affiliation).to eq(affiliation)
  end
end