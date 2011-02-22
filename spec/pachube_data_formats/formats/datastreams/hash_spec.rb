require File.dirname(__FILE__) + '/../../../spec_helper'

describe PachubeDataFormats::Formats::Datastreams::Hash do
  it "should inherit from PachubeDataFormats::Formats::Datastreams::Base" do
    PachubeDataFormats::Formats::Datastreams::Hash.new.should be_a_kind_of(PachubeDataFormats::Formats::Base)
  end

  describe "parser" do
    it "should parse a Pachube hash" do
      attrs = {}
      PachubeDataFormats::Datastream::ALLOWED_KEYS.each do |key|
        attrs[key] = "key #{rand(1000)}"
      end
      hash = PachubeDataFormats::Formats::Datastreams::Hash.parse(attrs.clone)
      hash.should == attrs
    end
  end

  describe "generator" do
    it "should generate Pachube hash" do
      attrs = {}
      PachubeDataFormats::Datastream::ALLOWED_KEYS.each do |key|
        attrs[key] = "key #{rand(1000)}"
      end
      hash = PachubeDataFormats::Formats::Datastreams::Hash.generate(attrs.clone)
      hash.should == attrs
    end
  end
end
