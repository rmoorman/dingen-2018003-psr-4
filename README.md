Simple example of psr-4 compatible directory structure and autoloading using
composer.


## Things to note

* the example library in here isn't installable by requiring the git repository
  with composer as composer expects that the composer.json is at the root of
  the repo (and I don't want that)

* the [composer monorepo plugin][composer_monorepo_plugin] is an interesting
  approach to host multiple packages within the same repository

[composer_monorepo_plugin]: <https://github.com/beberlei/composer-monorepo-plugin>
