feature '#viewing_links' do
  scenario 'user views link on homepage' do
    Link.create(title: 'google', url: 'www.google.com' )

    visit '/links'
    expect(page.status_code).to eq 200

    within('ul#links') do
      expect(page).to have_content 'google'
    end
  end
end
