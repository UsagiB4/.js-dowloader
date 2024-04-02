## Filedownloader Script: Download JS file with `cURL`
---
#### Small talk:
While I was doing bug bounty, I came accorss a problem that many tools like `wget`, `linkfinder` are getting blocked (**403**) by website while downloading or checking `JS` files. But I could access them manually on my browser without any issue.

From that I tried to view the js file using `curl` command and came to an idea.
>> what if I save the result of `curl` and do it for all the js file?

And just like that, I made this tool to download / save js files using `curl` command. it takes `pipe` input and I've provided a simple oneliner on how you can run it.

```bash
while IFS= read -r domain; do bash downloader.sh $domain; done < all-jsfile-link.txt;
```