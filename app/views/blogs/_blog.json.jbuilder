json.extract! blog, :id, :title, :content, :student_id, :created_at, :updated_at
json.url blog_url(blog, format: :json)
