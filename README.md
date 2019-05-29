# Zesty
Dynamically update your iOS app icons

## Installation and Setup

### Imagemagick
CLI access to the [Imagemagick (imagemagick.org)] library is required to run this script. See [Imagemagick – Install from Source (imagemagick.org)] for setup instructions.

Install Imagemagick via [Homebrew (brew.sh)]: 
``` shell
brew install imagemagick
```

[Imagemagick (imagemagick.org)]: https://imagemagick.org/
[Imagemagick – Install from Source (imagemagick.org)]: https://imagemagick.org/script/install-source.php
[Homebrew (brew.sh)]: https://brew.sh/

## Use
Run `processAppIcon.sh` (located in the `./scripts` directory) to compile app icons. App icon assets will be generated with dynamic text, and will be output to `Zesty/processed/AppIcon.appiconset`. To see an example output, run `sh example.sh` from this directory.

### `processAppIcon.sh`
Use this script to process app icons.

#### Options:
All options are required.

    `-t`    Text to render (string)
    `-p`    Text prefix (string)
    `-s`    Source icon set (string)

#### Usage:
* Process the `delta` icon set, appending the value of `$GITHUB_PR_NUMBER` with a prefix of `#`  
    `sh processAppIcon.sh -t $GITHUB_PR_NUMBER -p "#" -s "delta"`
* Process the `omega` icon set, appending the value of `$GIT_SHA` with a prefix of `#`  
    `sh processAppIcon.sh -t $GIT_SHA -p "#" -s "omega"`
* Process the `beta` icon set, appending the value of `$PACKAGE_VERSION` with a prefix of `v`  
    `sh processAppIcon.sh -t $PACKAGE_VERSION -p "v" -s "beta"`