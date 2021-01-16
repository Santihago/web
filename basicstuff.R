library(blogdown)

# After starting R
serve_site()

# Create post
blogdown::new_post(title = "Hi Hugo", 
                   ext = '.Rmarkdown', 
                   subdir = "post")  # path to where you want your post to live, relative to the content/ folder 