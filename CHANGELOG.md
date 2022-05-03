# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/)

## 2.2.0 - 2022-5-16

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
