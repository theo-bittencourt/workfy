# Workfy

Ruby client to Workfy API, a set of multipurpose tasks like HTML-PDF conversion, image resizing etc.

## Installation


```ruby
gem 'workfy'
```


## Usage

### HTML to PDF Conversion

```ruby
Workfy.web2pdf(content_url, callback_url)
```

Where `content_url` is the page that you want to process.
And `callback_url` will receive a multipart `POST` with `pdf_file` param when the task is completed.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/theo-bittencourt/workfy/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

