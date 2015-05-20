---
layout: post
title:  "Move to Jekyll and GitHub Pages"
tags:
- tech
---

I haven't posted any new content in a while, but after logging in to my hosting
provider and finding some suspicious files I didn't put there, I decided it was
time to finally move away from WordPress to a static site generator.  I also
wanted to move away from my hosting provider.  Therefore, I figured [GitHub
Pages](https://pages.github.com/) and [Jekyll][jekyll] were my best bet.

I used `JekyllImport::Importers::WordpressDotCom` and more or less
followed the first few steps on
[From Wordpress to Jekyll](http://blog.8thcolor.com/en/2014/05/migrate-from-wordpress/).
This transferred a lot of metadata for each post that I didn't need
for my blog, and some that just flat out broke Jekyll.  So I wrote a
little Ruby script that cleaned that up,
[jekyll-clean-front-matter.rb](https://github.com/ddgenome/ddgenome.github.io/blob/master/jekyll-clean-front-matter.rb).
After that, I applied the
[Start Bootstrap Clean Blog](https://github.com/IronSummitMedia/startbootstrap-clean-blog)
styling, although I should have used the
[Start Bootstrap Clean Blog Jekyll](https://github.com/IronSummitMedia/startbootstrap-clean-blog-jekyll)
repo instead since I ended up doing most of the stuff it did manually
anyway.  After that, I customized the styling a bit:

-   Changed the	header image to something more appropriate, a microarray image derived
    from a public domain image by
    [Louis M. Staudt](https://commons.wikimedia.org/wiki/File:Mouse_cdna_microarray.jpg)
-   Dimmed the image so it was easier to read the text on top of it
-   Reduced the size of the header
-   Reduced the size of the fonts

You can see my customizations in the
[local.css](https://github.com/ddgenome/ddgenome.github.io/blob/master/css/local.css).

The result is a faster, safer blog for everyone. Hopefully that means
I'll be blogging more.

Below are some tips from the dummy Jekyll post that might come in
handy later, so I am keeping them around.

---

Jekyll also offers powerful support for code snippets:

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

Check out the [Jekyll docs][jekyll] for more info on how to get the
most out of Jekyll. File all bugs/feature requests at
[Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask
them on [Jekyll’s dedicated Help repository][jekyll-help].

[jekyll]:      http://jekyllrb.com
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-help]: https://github.com/jekyll/jekyll-help
