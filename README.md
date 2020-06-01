<br />
<p align="center">
  <a href="https://github.com/ioilmio/web-scraper">
    <img src="microverse-logo.webp" alt="Logo" width="100" height="100">
  </a>

  <h3 align="center">Dev.to latest posts</h3>

  <p align="center">
    This is the Capstone Project of the Microverse Ruby curriculum!
    <br />
    <a href="https://github.com/ioilmio/web-scraper"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/ioilmio/web-scraper/issues">Report Bug</a>
    ·
    <a href="https://github.com/ioilmio/web-scraper/issues">Request Feature</a>
  </p>
</p>


## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
  * [Usage](#usage)
* [Author](#author)
* [Contributing](#contributing)
* [Acknowledgements](#acknowledgements)

## About The Project

This is a scraper, a program written in Ruby.This specific scraper is built to scrape posts and authors from "Dev.to" site.Using the Nokogiri Gem to parse the HTML frome the site,open URI to open the sile in security, and some string manipulations to format them better for human readability.



### Built With
This project was built using these technologies.
* Ruby
* Rubocop
* VsCode
* Open URI 
* Nokogiri Gem
* Bundler Gem (for repl.it live Demo)


### Usage

If you want to install and use the scraper you need: 
* Ruby installed in your computer, version 2.6.5 recommended.
  - Clone over HTTPS:
  ```
   $ git clone https://github.com/ioilmio/web-scraper.git
  ```
* and type on your terminal bin/scraper.rb to get the list of articles.

You will get a lixt.txt file containing an Hash, in this Hash you can find clickable links for your article of interest.

### Automated test ###

To run automated tests you can just type rspec in the terminal inside the main directory.
You can also take a look at the doc for the test running rspec --format doc in the same directory.


## Author

👤 **Illuminato Salvatore** 
- Twitter: [@ioilmio](https://twitter.com/ioilmio) 
- Github: [@ioilmio](https://github.com/ioilmio) 
- LinkedIn [@IlluminatoSalvatore](https://www.linkedin.com/in/illuminato-salvatore/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/ioilmio/web-scraper/issues).

## Show your support

Give a ⭐️ if you like this project!


## Acknowledgements
* [Microverse](https://www.microverse.org/)
* [The Odin Project](https://www.theodinproject.com/)
* [Ruby Documentation](https://www.ruby-lang.org/en/documentation/)
* [Nokogiri tutorial](https://www.youtube.com/watch?v=b3CLEUBdWwQ)
