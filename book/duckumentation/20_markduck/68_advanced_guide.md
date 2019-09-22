
# Embedding videos {#markduck-vimeo status=ready}

It is possible to embed Vimeo videos in the documentation.

Note: Do not upload the videos to your personal Vimeo account; they must all be
posted to the Duckietown Engineering account.

This is the syntax:

```html
<dtvideo src="vimeo:![vimeo ID]"/>
```

<div class="example-usage" markdown="1">

For example, this code:

```html
<figure id="example-embed">
    <figcaption>Cool Duckietown by night</figcaption>
    <dtvideo src="vimeo:152825632"/>
</figure>
```

produces this result:

 <figure id="example-embed">
  <figcaption>Cool Duckietown by night</figcaption>
  <dtvideo src="vimeo:152825632"/>
 </figure>

</div>


Depending on the output media, the result will change:

* On the online book, the result is that a player is embedded.
* On the e-book version, the result is that a thumbnail is produced, with a link to the video;
* (future improvement) On the dead-tree version, a thumbnail is produced with a QR code linking to the video.

