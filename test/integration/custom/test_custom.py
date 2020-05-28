#!/usr/bin/env python

import pytest
import testinfra

@pytest.mark.filterwarnings("ignore::Warning")
def test_screen_package(host):
    screen = host.package("screen")
    assert screen.is_installed

@pytest.mark.filterwarnings("ignore::Warning")
def test_config_file(host):
    if host.system_info.distribution == "debian":
        config = host.file("/tmp/config.conf")

        assert config.exists
        assert config.is_file
        assert config.user == "root"
        assert config.group == "root"
        assert config.mode == 0o600
        assert config.contains("test string please ignore")
