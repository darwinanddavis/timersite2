# function to save blog post titles  
author <- "Matt Malishev"
blog_post_func <- function(blogtitle){
  blog_title <- blogtitle
  folder_name <- paste0("blog/",gsub(" ","-",blogtitle) ,".Rmd")
  author <- "Matt Malishev"
  blog_dir <- paste0("static/images/blog/",gsub(" ","_",blogtitle),"/")
  dir.create(blog_dir)
  img_file <- paste0(blog_dir,img)
  return(c(blog_title,folder_name,author,img_file))
}


