This README file contains information on the contents of the meta-seeed-cm4 layer.

This repo is modified by @FakeApate to make building an image for reTerminal simpler.

# Supported Devices

This meta layer supports the following Seeed Studio devices:

- **seeed-reterminal**: reTerminal (Raspberry Pi CM4)

Each device has both standard and Mender-enabled variants for OTA updates.

# Branch description

branch main: meta-layer for the future LTS of yocto (scarthgap for now)

# For more detail of project compiling

Please see the GitHub Actions workflow file:

- `.github/workflows/seeed-boards.yml`: Automated builds for all supported devices with Mender integration

## Building Images

You can build images for supported devices using the KAS configuration files in the `kas/` directory:

- `seeed-reterminal-mender.yml`: reTerminal with Mender  


After several hours of compiling, you can get the image in `build/tmp/deploy/images/<machine-name>/` with `.wic.bz2` suffix.
