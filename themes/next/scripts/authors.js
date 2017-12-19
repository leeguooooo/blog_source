const dateFormat = require('date-format');

hexo.extend.helper.register('list_authors_better', function() {
    const count_posts = author => this.site.posts.filter(post => post.author === author).length;
    const lastest_post = author => this.site.posts.filter(post => post.author === author).data[0];
    const authors = this.site.authors.sort((a, b) => {
        return new Date(lastest_post(b).date).getTime() - new Date(lastest_post(a).date).getTime();
    }).map(author => {
        let post = lastest_post(author);
        return `
            <li class="author-list-item">
                <a class="author-list-link" href="/authors/${author}/">${author}</a>
                <span class="author-list-count">共 ${count_posts(author)} 篇， 最新发布 <a href="/${post.path}/">《${post.title}》</a> 于 ${dateFormat.asString('yyyy-MM-dd', new Date(post.date))}</span>
            </li>`;
    }).join('');

    return `<ul class="author-list">${authors}</ul>`;
});
