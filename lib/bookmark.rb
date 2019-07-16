require 'pg'


class Bookmark

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    result = connection.exec("SELECT * FROM bookmarks")
    result.map { |bookmark| bookmark['url']}
  end

  def self.create(url:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
  end


  private

  # def self.connect_to_db
  #   PG.connect( dbname: 'bookmark_manager' )
  # end
  #
  # def self.select_table
  #   connect_to_db.exec("SELECT * FROM bookmarks;")
  # end
  #
  # def self.bookmark_map
  #   select_table.map { |bookmark| bookmark['url'] }
  # end

end
