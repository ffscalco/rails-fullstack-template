class FeatureFlag
  class << self
    def active?(*args)
      rollout.active?(*args)
    end

    def rollout
      @rollout ||= Rollout.new(Redis.new)
    end
  end
end
