#!/bin/sh

set -e

PYTEST_CURRENT_TEST=1 pytest --cov-report=term --cov=timeseriesfeatures tests
coverage html -d coverage_html
