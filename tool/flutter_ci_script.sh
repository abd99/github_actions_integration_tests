#!/bin/bash

set -e

echo "== Testing course_camp_flutter =="

# Grab packages.
flutter pub get

# Run the analyzer to find any static analysis issues.
flutter analyze

# Run the formatter on all the dart files to make sure everything's linted.
flutter format -n --set-exit-if-changed .

# Run the actual tests.
flutter test

flutter drive --driver integration_test/driver.dart --target integration_test/app_test.dart