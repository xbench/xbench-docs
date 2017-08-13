hugo
call s3cmd sync public/ S3://docs.xbench.net/
aws cloudfront create-invalidation --distribution-id E4LL9AOZB3W7E --paths /*