Rollout::UI.configure do
  instance { FeatureFlag.rollout }
end
