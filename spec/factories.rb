FactoryGirl.define do 
	factory :category do 
		name "foo"
	end

	factory :video do |f|
		f.sequence(:name) { |n| "Test Video #{n}" }
		f.sequence(:uri) { |n| "http://www.test.com/video_#{n}.mp4" }
		f.active true
		f.rating 5
		f.premium false
		f.view_count 100
		f.favorite_count 200
		f.download_count 300
		f.length_in_seconds 300
	end
end