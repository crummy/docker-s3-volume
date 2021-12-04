# docker-s3-volume

This modified version of the original fork is designed to work with Tencent's S3 alternative
called COS. This is because as of today (Dec 4 2021) COS has broken compatibility with `aws-cli`
when syncing folders of >1000(?) files. The issue is similar to the one described here:

https://github.com/aws/aws-cli/issues/3917

When/if Tencent fixes their problem, I suggest using the original S3 branch, to allow flexibility
in using other S3 endpoints in future (if we decide to migrate off Tencent for example, perhaps
due to their lack of API stability...)

## License

This repository is released under the MIT license:

* www.opensource.org/licenses/MIT
