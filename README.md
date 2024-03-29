<a name="readme-top"></a>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/ToSeven/Finalzsh">
    <!-- <img src="images/logo.png" alt="Logo" width="80" height="80"> -->
  </a>

<h3 align="center">Finalzsh</h3>
  <p align="center">
    Use Your Terminal Like A Hacker
    <br />
    <a href="https://github.com/ToSeven/finalzsh"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/ToSeven/finalzsh">View Demo</a>
    ·
    <a href="https://github.com/ToSeven/finalzsh/issues">Report Bug</a>
    ·
    <a href="https://github.com/ToSeven/finalzsh/issues">Request Feature</a>
  </p>
</div>

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

## README

- en [English](README.md)
- zh_CN [简体中文](README_zh.md)


<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](./images/screenshot.png)

Finalzsh aims to configure your terminal with one click through scripts to realize terminal appearance customization, enhanced commands, plugin management, and other functions. This project is based on the Z shell terminal simulator, using a series of Zsh plugins to improve the terminal and achieve simple commands to complete complex interactive interface operations.

### Feature

- Plugin Manager (Install, Update, Uninstall Plugins)
- Terminal appearance customization 
- Enhanced Command
- Automatic installation, update and uninstall software through scripts
<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

Finalzsh utilizes shell scripts to execute automated operations, thus requiring a Unix-like platform environment. Finalzsh supports the following platforms:

 - Ubuntu
 - MacOS
 - Parrot
 - Wsl2 (windows)

### Installation

  run the following script:
  ```shell
   ./install.sh
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->
## Usage

### Shortcut keys 

- `CTRL + \` Automatically complete commands
- `ESC` Automatically add sudo prefix when failing commands because of Execution permissions. 

### Command 

1. customize the appearance of your terminal
> p10k configuration

2. find some files
> fzf

3. jump the target directory 
> j target_dir

4. jump and open the target directory 
> jo target_dir

5. return to the previous directory （note that 1 is a level） 
> up 1 

6. Open the GitHub webpage of the project
> git-open

7.Decompress the file 
> extract

8.generate the .gitignore template
>gi 
   


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ROADMAP -->
## Roadmap

- [ ] Add a command like help 
- [ ] Add some extra initial plugins
- [ ] Improve the install.sh scripts

See the [open issues](https://github.com/ToSeven/finalzsh/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTRIBUTING -->
## Contributing

Contributions are what makes the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<!-- CONTACT -->
## Contact

ToSeven - Byone.heng@gmail.com 

Project Link: [https://github.com/ToSeven/finalzsh](https://github.com/ToSeven/finalzsh)


<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [Shell]()

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/ToSeven/finalzsh.svg?style=for-the-badge
[contributors-url]: https://github.com/ToSeven/finalzsh/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/ToSeven/finalzsh.svg?style=for-the-badge
[forks-url]: https://github.com/ToSeven/finalzsh/network/members
[stars-shield]: https://img.shields.io/github/stars/ToSeven/finalzsh.svg?style=for-the-badge
[stars-url]: https://github.com/ToSeven/finalzsh/stargazers
[issues-shield]: https://img.shields.io/github/issues/ToSeven/finalzsh.svg?style=for-the-badge
[issues-url]: https://github.com/ToSeven/finalzsh/issues
[license-shield]: https://img.shields.io/github/license/ToSeven/finalzsh.svg?style=for-the-badge
[license-url]: https://github.com/ToSeven/finalzsh/LICENSE.txt
[product-screenshot]: images/screenshot.png
