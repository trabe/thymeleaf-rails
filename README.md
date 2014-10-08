# thymeleaf-rails: Thymeleaf.rb for Rails

Future Rails support for [Thymeleaf.rb](https://github.com/trabe/thymeleaf-rb)
(a ruby port of [Thymeleaf](http://www.thymeleaf.org, a natural templating engine)).

**This is a Work In Progress Project**, now at the definition stage. The idea is
to support Thymeleaf.rb as a Rails templating engine.

## Expected usage

Add the gem to the `Gemfile` and get ready to rock.

```
gem 'thymeleaf-rails'
```

Use the `.th` extension in your templates. Yay!

```
<table>
  <thead>
    <tr>
      <th th:text="#{headers.name}">Name</th>
      <th th:text="#{headers.price}">Price</th>
    </tr>
  </thead>
  <tbody>
    <tr th-each="prod : ${all_products}">
      <td th-text="${prod.name}">Oranges</td>
      <td th-text="${number_to_currency(prod.price, precision: 2)}">0.99</td>
    </tr>
  </tbody>
</table>
```

## What needs to be done (at least)

* Register the template engine
* Use Rails I18n backend
* Support for rails helpers usage inside the templates
* Create an example app


## Contributing and help

Refer to the Thymeleaf.rb repo: [trabe/thymeleaf-rb](https://github.com/trabe/thymeleaf-rb)
