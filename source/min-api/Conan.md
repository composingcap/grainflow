# Conan

You can use [conan](https://conan.io/) to integrate the min-api.

## Using Conan

There is [cmake](https://cmake.org/) based project in [examples/min.conan](examples/min.conan)
that uses a version of *min* that is packaged with conan.

This example uses a repository that you may or may not have access to. If you
don't, you can build the conan package locally, as indicated below, before
building the example.

## Creating and Uploading packages

To create a new version of the conan package based on the current checkout,
you'll want to run the commands below, but replace the tags with something
reasonable.

If you tag the git branch you'll make a version of the package with that name,
which will make using it easier later.

```shell
git tag v1.2.3
conan create . xnor/testing
```

To upload, you'll have to have a repository, here I've set up `cycling-jfrog` as a remote.
For example, if the version is `xnor_conan_v1.2.3` and I tagged with `xnor/testing`.

```shell
conan upload min-api/xnor_conan_v1.2.3@xnor/testing --all -r cycling-jfrog
```

Once you've uploaded the package you can use it as detailed below, and if your
repository is public, you can easily share your project with others without having
to include the *min-api* project inside your project.

You can also package *min-api* locally and build without uploading, but others will
have to do that themselves as well if they want to build your project.
