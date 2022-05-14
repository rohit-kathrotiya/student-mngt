namespace :active_record_count do
  desc "Total students counter"
  task students_count: :environment do
    puts "Total Students : #{Student.count}"
  end

  desc "Total courses counter"
  task courses_count: :environment do
    puts "Total Courses : #{Course.count}"
  end

  desc "Total blogs counter"
  task blogs_count: :environment do
    puts "Total Blogs : #{Blog.count}"
  end

end
