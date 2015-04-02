require 'spec_helper'

class Redditable < ActiveRecord::Base
	acts_as_redditable
end

describe Redditable do
  let(:reddit_post) { RedditPost.create!(url: 'https://reddit.com') }
	let(:redditable) { Redditable.create!(reddit_post: reddit_post) }

	it 'allows you to create a RedditPost ' do
    expect(redditable.reddit_post).to eq reddit_post
	end
end
