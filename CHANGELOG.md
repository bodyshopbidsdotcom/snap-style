# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/)

## 5.0.0 - 2024-10-07

Relax dependency to `rubocop` to enable support for Ruby 3.2

No breaking changes were introduced until this version.

## 4.0.0 - 2023-01-05

Relax dependency to `rubocop` to enable support for Ruby 3.1

Rubocop breaking changes:
- [0.93.0](https://github.com/rubocop/rubocop/blob/v0.93.0/CHANGELOG.md): `RegexpNode#parsed_tree` now processes regexps including interpolation (by blanking the interpolation before parsing, rather than skipping).
- [1.0.0](https://github.com/rubocop/rubocop/blob/v1.0.0/CHANGELOG.md): RuboCop assumes that Cop classes do not define new `on_<type>` methods at runtime (e.g. via `extend` in `initialize`).
- [1.0.0](https://github.com/rubocop/rubocop/blob/v1.0.0/CHANGELOG.md): Enable all pending cops for RuboCop 1.0
- [1.0.0](https://github.com/rubocop/rubocop/blob/v1.0.0/CHANGELOG.md): Change logic for cop department name computation. Cops inside deep namespaces (5 or more levels deep) now belong to departments with names that are calculated by joining module names starting from the third one with slashes as separators. For example, cop `Rubocop::Cop::Foo::Bar::Baz` now belongs to `Foo/Bar` department (previously it was `Bar`)


## 3.0.0 - 2022-10-07

### Updated

Relax dependency to `rubocop` to enable support for Ruby 3.

Rubocop breaking changes:
- [0.82.0](https://github.com/rubocop/rubocop/blob/v0.82.0/CHANGELOG.md): Renamed `Layout/Tab` cop to `Layout/IndentationStyle`.
- [0.83.0](https://github.com/rubocop/rubocop/blob/v0.83.0/CHANGELOG.md): Inspect all files given on command line unless `--only-recognized-file-types` is given.
- [0.83.0](https://github.com/rubocop/rubocop/blob/v0.83.0/CHANGELOG.md): Enabling a cop overrides disabling its department.
- [0.84.0](https://github.com/rubocop/rubocop/blob/v0.84.0/CHANGELOG.md): Change the max line length of `Layout/LineLength` to 120 by default.
- [0.85.0](https://github.com/rubocop/rubocop/blob/v0.85.0/CHANGELOG.md): Remove support for `unindent/active_support/powerpack` from `Layout/HeredocIndentation`, so it only recommends using squiggy heredoc.
- [0.86.0](https://github.com/rubocop/rubocop/blob/v0.86.0/CHANGELOG.md): Cop `Metrics/CyclomaticComplexity` now counts &., ||=, &&= and blocks known to iterate. Default bumped from 6 to 7. Consider using `rubocop -a --disable-uncorrectable` to ease transition.
- [0.87.0](https://github.com/rubocop/rubocop/blob/v0.87.0/CHANGELOG.md): Extensive refactoring of internal classes `Team`, `Commissioner`, `Corrector`. `Cop::Cop#corrections` not completely compatible.
- [0.87.0](https://github.com/rubocop/rubocop/blob/v0.87.0/CHANGELOG.md): `rubocop -a / --auto-correct` no longer run unsafe corrections; `rubocop -A / --auto-correct-all` run both safe and unsafe corrections. Options `--safe-autocorrect` is deprecated.
- [0.87.0](https://github.com/rubocop/rubocop/blob/v0.87.0/CHANGELOG.md): Order for gems names now disregards underscores and dashes unless `ConsiderPunctuation` setting is set to true.
- [0.89.0](https://github.com/rubocop/rubocop/blob/v0.89.0/CHANGELOG.md): Cop `Metrics/AbcSize` now counts ||=, &&=, multiple assignments, for, yield, iterating blocks. &. now count as conditions too (unless repeated on the same variable). Default bumped from 15 to 17. Consider using `rubocop -a --disable-uncorrectable` to ease transition.
- [0.89.0](https://github.com/rubocop/rubocop/blob/v0.89.0/CHANGELOG.md): Cop `Metrics/PerceivedComplexity` now counts else in case statements, &., ||=, &&= and blocks known to iterate. Default bumped from 7 to 8. Consider using `rubocop -a --disable-uncorrectable` to ease transition.


## 2.2.0 - 2022-05-16

### Added

Added unconfigured rules that have default `Enabled` values of `'pending'`:
- Lint/RaiseException: enabled
- Lint/StructNewOverride: enabled
- Style/HashEachMethods: disabled
- Style/HashTransformKeys: disabled
- Style/HashTransformValues: disabled

Disabled cops causing new failures in VBE, Authenticator, or Viceroy:
- Naming/RescuedExceptionsVariableName
- Layout/ArgumentAlignment
- Style/FloatDivision
- Lint/RedundantStringCoercion
- Style/FormatStringToken
- Style/RedundantReturn
- Layout/SpaceInsideStringInterpolation
- Style/RedundantParentheses
- Layout/HashAlignment
- Style/ExpandPathArguments
- Layout/EmptyLineAfterGuardClause
- Migration/DepartmentName

### Fixed

- Upgraded minimum rubocop to support ruby 2.7
- Added rubocop-rails gem—-it was removed from the rubocop gem prior to the version we're updating to here
- Updated outdated rules:
  - Updated Layout/IndentArray to Layout/FirstArrayElementIndentation
  - Updated Layout/AlignHash to Layout/HashAlignment
  - Updated Metrics/LineLength to Layout/LineLength

## 2.1.0 - 2020-11-05

### Added

- Added Layout/SpaceInsideReferenceBrackets and Layout/SpaceInsideArrayLiteralBrackets to replace Style/SpaceInsideBrackets
- Added Layout/IndentArray
- Added Layout/AlignHash for key style

### Fixed

- Upgraded minimum rubocop to support ruby 2.6
- Removed Style/SpaceInsideBrackets
