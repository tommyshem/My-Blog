# My Hugo Github pages Blog repo

## Setup Only needs to be run once.

```bash
git clone https://github.com/tommyshem/My-Blog.git
cd ./blog
./setup.sh
```

## Workflow for Changing content on posts

### Edit or add content

Edit content in

```bash
cd ./blog/content/post/
```

### Save changes to git

```bash
git add file-names-here
git commit -m "message here"
git push
```

repeat above step until finished changing or adding content.

### Uploading blog website to Github repo

To build the blog website in Hugo and git push changes to github repo.

```bash
deploy.sh
```

## Blog post Website

https://tommyshem.github.io/
