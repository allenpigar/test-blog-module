
<div class="container">
    <div class="header">
        <h1>{{this.blog_title}}</h1>
    </div>
    <hr />
    <div class="articles">
        {{each articles as article sort by date DESC limit 20}}
            <div class="article">
                <div class="feature-image">
                    <img src="{{article.article_feature_image.getImage() }}" style="width:240px;" />
                </div>
                <div>
                    <h1 class="article-header">{{ article.article_title }}</h1>
                    <h4>{{article.article_sub_title}}</h6>	
                    <p>{{article.article_content.striptags(0,220)}}... <a href="{{article.getUrl()}}">read more</a></p>
                  
                   
                </div>
                
            </div>
        {{end-each}}
    </div>
</div>