# Zesty

Zesty is tool that dynamically updates your iOS app icons directly from the command line. 

![Example Dynamic Icons](./assets/example_dynamic_icons.png)

The main script, `processAppIcon.sh`, compiles app icons with dynamic text provided at runtime. It uses the ImageMagick library to generate app icons with the provided text, with options for prefixing. The text is placed at the bottom of the icon, allowing you to create unique and identifiable app icons for different versions or environments of your app.

The script generates app icons of different sizes and places them in the `Zesty/processed/AppIcon.appiconset` directory. You can customize the text, prefix, and icon set to suit your needs, making it a versatile tool for managing your app icons.

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

#### Options:
All options are required when running the `processAppIcon.sh` script:

- `-t`    Text to render (string): This is the text you want to place at the bottom of the icon. It can be anything you like, such as a version number or environment name.
- `-p`    Text prefix (string): This is the prefix for the processed text. It helps you identify the icons generated by this script.
- `-s`    Source icon set (string): This is the set of raw icons you want to use as a base. The script will generate icons of different sizes based on this set.

#### Usage:
* Process the `delta` icon set, appending the value of `$GITHUB_PR_NUMBER` with a prefix of `#`  
    `sh processAppIcon.sh -t $GITHUB_PR_NUMBER -p "#" -s "delta"`
* Process the `omega` icon set, appending the value of `$GIT_SHA` with a prefix of `#`  
    `sh processAppIcon.sh -t $GIT_SHA -p "#" -s "omega"`
* Process the `beta` icon set, appending the value of `$PACKAGE_VERSION` with a prefix of `v`  
    `sh processAppIcon.sh -t $PACKAGE_VERSION -p "v" -s "beta"`

## Contributing

Contributions to enhance Zesty are welcome. If you have ideas for improvements or have found a bug, please open an issue. If you'd like to contribute directly, feel free to fork the repository and submit a pull request. Your help in improving this tool is always appreciated.