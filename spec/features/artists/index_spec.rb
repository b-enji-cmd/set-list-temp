require 'rails_helper'

RSpec.describe 'the Artist index page' do

	describe 'shows the artist index page' do
		it 'shows a list of all artist names' do
			artist_1 = Artist.create(name: 'Michael')

			visit '/artists'

			expect(page).to have_content(artist_1.name)

		end
	end

end