<a name="readme-top"></a>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/ToSeven/Finalzsh">
    <!-- <img src="images/logo.png" alt="Logo" width="80" height="80"> -->
  </a>

<h3 align="center">Finalzsh</h3>
  <p align="center">
    像黑客一样使用你的终端
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

`Finalzsh`通过脚本一键安装、配置现有终端，实现终端外观自定义、命令增强、插件管理等功能。本项目基于`Z shell` 终端模拟器，利用一系列zsh插件增强终端相关功能，达到简单命令完成复杂的界面交互操作目的。

### Feature
- 插件管理器（安装、更新、卸载插件）
- 终端皮肤自定义
- 终端功能操作命令（见Usage）
- 脚本自动化安装、更新、卸载软件
<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

Finalzsh 利用shell脚本编写自动化操作，因此需要类Unix执行环境，Finalzsh支持以下平台：
 - Ubuntu
 - MacOS
 - Parrot
 - Wsl2 (windows)

### Installation
  运行以下脚本
   ```shell
   ./install.sh
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->
## Usage

### 快捷键
`CTRL + \` 命令自动化补全
`ESC` 命令缺乏权限执行失败时，自动添加sudo前缀

### 命令
1.终端皮肤自定义命令
> p10k configuration

2.查找命令 
> fzf

3.目录跳转命令
> j target_dir

4.打开该目录的文件管理器
> jo target_dir

5.跳转上级目录 
> up 1 # 返回上一级目录 

6.打开该项目的GitHub网页
> git-open

7.解压压缩包
> extract

8.自动生成.gitignore文件
>gi 
   


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ROADMAP -->
## Roadmap

- [ ] 终端内置帮助命令 
- [ ] 添加初始化插件  
- [ ] 改进软件更新功能脚本

See the [open issues](https://github.com/ToSeven/finalzsh/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

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
