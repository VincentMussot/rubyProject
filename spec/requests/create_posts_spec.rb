require 'spec_helper'

describe "CreatePosts" do
  describe "GET /new_posts" do
		it "should contain a body text area and a title text area" do
			visit new_post_path
			page.should have_field('post[title]')
			page.should have_field('post[body]')
		end
		it "should contain a button Create Post" do
			visit new_post_path
			page.should have_button('Create Post')
    end
  end
end
