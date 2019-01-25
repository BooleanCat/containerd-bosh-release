# containerd BOSH release

Deploy containerd to BOSH!

This deployment is designed to be co-located with services that wish to use
containerd.

## Deployment

Assuming your bosh director variables are configured, you can use the sample
manifest provided in `manifest/containerd.yml` to craft your own deployment
manifest.

For deploying to the bosh-lite director offered by bosh-deploymentm you can
deploy using `make deploy`. For development work you can use `make deploy-dev`
to create a dev release, upload it to the director and deploy.
