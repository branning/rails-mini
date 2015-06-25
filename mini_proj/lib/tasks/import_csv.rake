require 'csv'
namespace :import_csv do
	desc "Create all survey templates"
  task :all => [:create_users, :create_items, :create_categories, :create_user_items, :create_item_categories]


  # def mass_insert(csv)
  #     CONN = ActiveRecord::Base.connection
  #     inserts = []
  #     csv.each do |row|
  #         inserts.push "(3.0, '2009-01-23 20:21:13', 2, 1)"
  #     end
  #     sql = "INSERT INTO user_node_scores (`score`, `updated_at`, `node_id`, `user_id`) VALUES #{inserts.join(", ")}"
  #     CONN.execute sql
  # end

  task :mass_users => :environment do
    filename = Rails.root.join "db/seeds/mini_proj-users.csv.gz"
    Zlib::GzipReader.open(filename) do |gzip|
      byebug
      csv = CSV.new(gzip, :headers => true, :col_sep => "\t")
      csv.each do |row|
        User.create!(row.to_hash)
      end
    end
  end

  task :create_users => :environment do
    filename = Rails.root.join "db/seeds/mini_proj-users.csv.gz"
    Zlib::GzipReader.open(filename) do |gzip|
      csv = CSV.new(gzip, :headers => true, :col_sep => "\t")
      csv.each do |row|
        User.create!(row.to_hash)
      end
    end
  end

  task :create_items => :environment do
    filename = Rails.root.join "db/seeds/mini_proj-items.csv.gz"
    Zlib::GzipReader.open(filename) do |gzip|
      csv = CSV.new(gzip, :headers => true, :col_sep => "\t")
      csv.each do |row|
        Item.create!(row.to_hash)
      end
    end
  end

  task :create_categories  => :environment do
    filename = Rails.root.join "db/seeds/mini_proj-categories.csv.gz"
    Zlib::GzipReader.open(filename) do |gzip|
      csv = CSV.new(gzip, :headers => true, :col_sep => "\t")
      csv.each do |row|
        Category.create!(row.to_hash)
      end
    end
  end

 	task :create_user_items  => :environment do
    filename = Rails.root.join "db/seeds/mini_proj-items_users.csv.gz"
    Zlib::GzipReader.open(filename) do |gzip|
      csv = CSV.new(gzip, :headers => true, :col_sep => "\t")
      csv.each do |row|
        UserItem.create!(row.to_hash)
      end
    end
  end

 	task :create_item_categories  => :environment do
    filename = Rails.root.join "db/seeds/mini_proj-categories_items.csv.gz"
    Zlib::GzipReader.open(filename) do |gzip|
      csv = CSV.new(gzip, :headers => true, :col_sep => "\t")
      csv.each do |row|
        ItemCategory.create!(row.to_hash)
      end
    end
  end

end