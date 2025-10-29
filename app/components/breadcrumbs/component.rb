# frozen_string_literal: true

module Breadcrumbs
  class Component < ViewComponent::Base
    def initialize(breadcrumb_trail:)
      @breadcrumb_trail = breadcrumb_trail
    end

    private

    attr_reader :breadcrumb_trail
  end
end
