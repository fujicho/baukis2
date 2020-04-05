require "rails_helper"

RSpec.describe StaffMember, type: :model do
  describe "#password=" do
    example "文字列を与えると、hashed_passwordは長さ60の文字列になる" do
      member = StaffMember.new
      member.password = "baukis"
      expect(member.hashed_password).to be_kind_of(String)
      expect(member.hashed_password.size).to eq(60)
    end

    example "nilを与えると、hashed_passwordはnilになる" do
      member = StaffMember.new(hashed_password: "x")
      member.password = nil
      expect(member.hashed_password).to be_nil
    end
  end

  describe "値の正規化" do
    example "email前後の空白を除去" do
      member = create(:staff_member, email: " test@example.com ")
      expect(member.email).to eq("test@example.com")
    end
  end
end
