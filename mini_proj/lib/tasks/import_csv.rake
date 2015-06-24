require 'csv'
namespace :import_csv do
	desc "Create all survey templates"
  task :all => [:create_users, :create_items, :create_categories, :create_user_items, :create_item_categories]

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
      csv.foreach(filename, :headers => true) do |row|
        Category.create!(row.to_hash)
      end
    end
  end

 	task :create_user_items  => :environment do 
    filename = Rails.root.join "db/seeds/mini_proj-items_users.csv.gz"
    Zlib::GzipReader.open(filename) do |gzip|
      csv = CSV.new(gzip, :headers => true, :col_sep => "\t")
      csv.foreach(filename, :headers => true) do |row|
        UserItem.create!(row.to_hash)
      end
    end
  end

 	task :create_item_categories  => :environment do
    filename = Rails.root.join "db/seeds/mini_proj-categories_items.csv.gz"
    Zlib::GzipReader.open(filename) do |gzip|
      csv = CSV.new(gzip, :headers => true, :col_sep => "\t")
      csv.foreach(filename, :headers => true) do |row|
        ItemCategory.create!(row.to_hash)
      end
    end
  end

end