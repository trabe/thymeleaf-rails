# thymeleaf-rails: Thymeleaf.rb for Rails

Simple Rails support for [Thymeleaf.rb](https://github.com/trabe/thymeleaf-rb)
(a ruby port of [Thymeleaf](http://www.thymeleaf.org, a natural templating engine)).

**This is a Work In Progress Project. It is not ready for production use **

## Usage

Add the gem to the `Gemfile` and get ready to rock.

```
gem 'thymeleaf-rails'
```

Use the `.th` extension in your templates. Yay!

```
<table>
  <thead>
    <tr>
      <th data-th-text="${headers.name}">Name</th>
      <th data-th-text="${headers.price}">Price</th>
    </tr>
  </thead>
  <tbody>
    <tr data-th-each="prod : ${all_products}">
      <td data-th-text="${prod.name}">Oranges</td>
      <td data-th-text="${number_to_currency(prod.price, precision: 2)}">0.99</td>
    </tr>
  </tbody>
</table>
```

## TODO List

* Use Rails I18n backend
* Create an example app


## Contributing and help

Refer to the Thymeleaf.rb repo: [trabe/thymeleaf-rb](https://github.com/trabe/thymeleaf-rb)
