require 'rails_helper'

RSpec.describe CollectedDatum, type: :model do
  before do
    @collected_data = FactoryBot.create(:collected_datum)
  end

  context "validations" do
    it "is valid with valid attributes" do
      expect(@collected_data).to be_a(CollectedDatum)
      expect(@collected_data).to be_valid
    end
  end

  describe "value" do
    it "is not valid without value" do
      bad_data = FactoryBot.build(:collected_datum, value: nil)
      expect(bad_data).not_to be_valid
      expect(bad_data.errors.include?(:value)).to eq(true)
    end
    it "is valid when equal to numerator/denominator" do
      expect(@collected_data.value).to eq(@collected_data.numerator/@collected_data.denominator)
    end
  end

  describe "numerator" do
    it "is not valid without numerator" do
      bad_data = FactoryBot.build(:collected_datum, numerator: nil)
      expect(bad_data).not_to be_valid
      expect(bad_data.errors.include?(:numerator)).to eq(true)
    end
    it "is valid when numerator is a float" do
      expect(@collected_data.numerator).to be_a(Float)
    end
  end

  describe "denominator" do
    it "is not valid without denominator" do
      bad_data = FactoryBot.build(:collected_datum, denominator: nil)
      expect(bad_data).not_to be_valid
      expect(bad_data.errors.include?(:denominator)).to eq(true)
    end
    it "is valid when denominator is a float" do
      expect(@collected_data.denominator).to be_a(Float)
    end
  end

  describe "first name" do
    it "is not valid without first name" do
      bad_data = FactoryBot.build(:collected_datum, first_name: nil)
      expect(bad_data).not_to be_valid
      expect(bad_data.errors.include?(:first_name)).to eq(true)
    end
    it "is valid when first name is a string" do
      expect(@collected_data.first_name).to be_a(String)
    end
  end

  describe "last name" do
    it "is not valid without last name" do
      bad_data = FactoryBot.build(:collected_datum, last_name: nil)
      expect(bad_data).not_to be_valid
      expect(bad_data.errors.include?(:last_name)).to eq(true)
    end
    it "is valid when last name is a string" do
      expect(@collected_data.last_name).to be_a(String)
    end
  end

  describe "email" do
    it "is not valid without email" do
      bad_data = FactoryBot.build(:collected_datum, email: nil)
      expect(bad_data).not_to be_valid
      expect(bad_data.errors.include?(:email)).to eq(true)
    end
    it "is valid when email has an email formats" do
      @collected_data.email = "email"
      expect(@collected_data.email).not_to match(/\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/)
      @collected_data.email = "email@email"
      expect(@collected_data.email).not_to match(/\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/)
      @collected_data.email = "email.com"
      expect(@collected_data.email).not_to match(/\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/)
      @collected_data.email = "email@email.com"
      expect(@collected_data.email).to match(/\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/)
    end
  end

  describe "company" do
    it "is not valid without company" do
      bad_data = FactoryBot.build(:collected_datum, company: nil)
      expect(bad_data).not_to be_valid
      expect(bad_data.errors.include?(:company)).to eq(true)
    end
    it "is valid when company is a string" do
      expect(@collected_data.company).to be_a(String)
    end
  end

  describe "position" do
    it "is not valid without position" do
      bad_data = FactoryBot.build(:collected_datum, position: nil)
      expect(bad_data).not_to be_valid
      expect(bad_data.errors.include?(:position)).to eq(true)
    end
    it "is valid when position is a string" do
      expect(@collected_data.position).to be_a(String)
    end
  end
end
