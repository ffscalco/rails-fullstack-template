class FeatureFlag
  class << self
    def active?(*)
      rollout.active?(*)
    end

    def rollout
      @rollout ||= Rollout.new(Redis.new)
    end
  end
end
