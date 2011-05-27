require "spec/spec_helper"

describe ISO3166::EUCountry do

  it "should inherit from ISO3166::Country" do
    ISO3166::EUCountry.superclass.should == ISO3166::Country
  end

  it { ISO3166::EUCountry.should respond_to(:codes) }
  describe ".codes" do
    it "should return an array" do
      ISO3166::EUCountry.codes.should be_a_kind_of(Array)
    end
    it "should have the 27 member states" do
      ISO3166::EUCountry.codes.should have(27).member_states
    end
  end

  it { ISO3166::EUCountry.should respond_to(:all) }
  describe ".all" do
    it "should return an array" do
      ISO3166::EUCountry.all.should be_a_kind_of(Array)
    end
    it "should return EUCountry instances" do
      ISO3166::EUCountry.all.each do |country|
        country.should be_a_kind_of(ISO3166::EUCountry)
      end
    end
    describe ":except" do
      context "with a single country" do
        it "should return all but that one country" do
          result = ISO3166::EUCountry.all :except => "GB"
          result.each do |country|
            country.alpha2.should_not == "GB"
          end
        end
      end
      context "with an array of countries" do
        it "should return all but those countries" do
          excluded = %w(AT BE BG CY CZ DK EE FI FR DE GB)
          result = ISO3166::EUCountry.all :except => excluded
          result.size.should == (27-excluded.size)
          result.each do |country|
            excluded.should_not include(country.alpha2)
          end
        end
      end
    end
  end

end
