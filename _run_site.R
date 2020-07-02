install.packages("blogdown")
require(blogdown)
blogdown::install_hugo()
blogdown::update_hugo()
hugo_version()

setwd("/Users/malishev/Documents/Melbourne Uni/Programs/blogdown_test/timersite2/timersite2")
# run once
# new_site(theme="themefisher/timer-hugo") 

# serve_site() # just need to do once per r session  
build_site() # update site  

# create new blog post --------------------------------------------------------------

source("blog_post_func.R") # source blog function 
blogtitle <- "Creating code chunks"
tags <- c("south america","mde")
img <- "mde.jpg" 

# need to figure out how to get img in newly created blog folder working. 
# only run once to create post, then edit RMD file  
new_post(title=blog_post_func(blogtitle)[1],
         file=blog_post_func(blogtitle)[2],
         author=blog_post_func(blogtitle)[3],
         tags=tags,
         categories = tags
         )
paste0("image: ",blog_post_func(blogtitle)[4]) # get blog metadata for yaml 



