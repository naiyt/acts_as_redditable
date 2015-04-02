require 'active_record'

module Acts
  module Redditable
    extend ActiveSupport::Concern

    module ClassMethods
      def acts_as_redditable
        has_one :reddit_post, as: :redditable
      end
    end
  end
end

ActiveRecord::Base.send(:include, Acts::Redditable)