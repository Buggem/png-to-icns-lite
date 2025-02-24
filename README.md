# PNG to ICNS **_lite_**
<p align="center">
<img width="613" alt="cover_png_to_icns" src="https://user-images.githubusercontent.com/17025808/154702281-8115f8ec-b092-4ba6-9831-e8973b774546.png">
</p>

<p font-family="serif">A <i>lite</i> shell script to transform your PNGs into ICNS'</p>

## Image Requirements
- Format should be PNG (transparency isn't mandatory).
- Dimensions need to be **1024x1024** pixels.

## How to Use
1. Let’s get started by downloading the project, and move into the newly created folder:
```shell
> git clone https://github.com/Buggem/png-to-icns-lit.git
Cloning into 'png-to-icns'...

> cd png-to-icns
```
Or copy/paste the script file `png_to_icns.sh` in a directory

2. Optionally: Place the **1024x1024** pixels image (`.png`) you want to convert in the folder
3. Start the script and give the path to the image as argument:  
`-i` stand for `image_path`
```shell
> ./png_to_icns.sh <path_to_my_image.png> <name_of_new_icon>
>
```
4. Done! The new icon has been created, the path of this `.icns` is indicate on the info message in your terminal.

## Errors / Bugs
If an error occur a message with the error(s) info will appear in the terminal.  
You cannot see or understand the error, open a issue [on the original](https://github.com/BenSouchet/png-to-icns/issues) or [on the fork](https://github.com/Buggem/png-to-icns-lite/issues).

## Others Ressouces & Useful links
- [How to create ICNS files using iconutil](https://stackoverflow.com/questions/12306223/how-to-manually-create-icns-files-using-iconutil)
- [Create icns icons for macOS apps](https://www.codingforentrepreneurs.com/blog/create-icns-icons-for-macos-apps)
- [How to use getopts in bash](https://stackoverflow.com/questions/16483119/an-example-of-how-to-use-getopts-in-bash)

## Author & maintainer
PNG to ICNS was and is currently maintained by [Ben Souchet](https://github.com/BenSouchet).


PNG to ICNS **_LITE_** is maintained by [Buggem](https://buggem.github.io).

The base code presented in this repository is under the [MIT license](https://github.com/BenSouchet/png-to-icns/blob/main/LICENSE).

This modifications this fork has made to the original piece of software is unlicensed free code, meaning that the modifications made can be distributed and accessed freely.
