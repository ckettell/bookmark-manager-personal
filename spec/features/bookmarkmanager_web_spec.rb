feature 'Testing Index Page' do
  scenario 'index page returns hello world' do
    visit('/')
    expect(page).to have_content 'Hello, world'
  end
end


feature 'Viewing bookmarks' do
  scenario 'A user can see the bookmarks' do
    #adding test data
    Bookmark.create(url: 'http://www.makersacademy.com')
    Bookmark.create(url: 'http://www.destroyallsoftware.com')
    Bookmark.create(url: 'http://www.google.com')

    visit('/bookmarks')

    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
  end
end

feature 'Submitting a bookmark' do
  scenario 'bookmarks to be submitted via a form' do
    visit('/bookmarks/new')
    fill_in('url', :with => 'http://www.facebook.com')
    click_button('Submit')

    expect(page).to have_content 'http://www.facebook.com'
  end
end
