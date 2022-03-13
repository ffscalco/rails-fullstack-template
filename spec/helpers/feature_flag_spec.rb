require "rails_helper"

describe FeatureFlag do
  subject { described_class }

  describe "#rollout" do
    it "returns a rollout instance" do
      expect(subject.rollout.class).to eq(Rollout)
    end
  end

  describe "#active?" do
    it "returns true if feature is activated" do
      described_class.rollout.activate(:chat)
      expect(subject.active?(:chat)).to be(true)
    end

    it "returns false if feature is deactivated" do
      described_class.rollout.deactivate(:chat)
      expect(subject.active?(:chat)).to be(false)
    end
  end
end
