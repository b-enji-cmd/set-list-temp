require 'rails_helper'

RSpec.describe 'the Songs index page' do


	it 'shows each song title and each song play count' do
		song_1 = Song.create(title: 'song 2',play_count: 200 , length: 333)
		song_2 = Song.create(title: 'song 3',play_count: 300, length: 444)

		visit '/songs'

		expect(page).to have_content(song_1.title)
		expect(page).to have_content(song_2.title)

		expect(page).to have_content(song_1.play_count)
		expect(page).to have_content(song_2.play_count)
	end

	describe 'the songs show page' do
	it 'shows a link back to the index page' do
		song_1 = Song.create(title: 'song 2',play_count: 200 , length: 333)
		song_2 = Song.create(title: 'song 3',play_count: 300, length: 444)

		visit "/songs/#{song_1.id}"

		expect(page).to have_link('localhost:3000/songs')

	end
	end

end