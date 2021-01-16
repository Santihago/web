library(blogdown)

# After starting R
serve_site()  #(you get to see the website in Viewer)

# Create post
blogdown::new_post(title = "Hi Hugo", 
                   ext = '.Rmarkdown', 
                   subdir = "post")  # path to where you want your post to live, relative to the content/ folder 

# After opening a .Rmarkdown file
# Cmd+Shift+K to knit

# Commit all files in directory to github
# Go to SHELL
git add -A && git commit -m 'staging all files'
# Then go back to GUI and Push