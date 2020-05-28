#!/usr/bin/env python

import pytest
import testinfra

@pytest.mark.filterwarnings("ignore::Warning")
def test_screen_package(host):
    screen = host.package("screen")
    assert not screen.is_installed

@pytest.mark.filterwarnings("ignore::Warning")
def test_config_file(host):
    if host.system_info.distribution == "debian":
        config = host.file("/tmp/config.conf")

        assert not config.exists
