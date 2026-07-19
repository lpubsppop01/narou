@echo off
REM -*- mode: ruby -*-
setlocal
set BUNDLE_GEMFILE=%~dp0\Gemfile
@if not "%~d0" == "~d0" goto WinNT
bundle exec ruby -x narou.bat %1 %2 %3 %4 %5 %6 %7 %8 %9
@goto endofruby
:WinNT
bundle exec ruby -x "%~f0" %*
@goto endofruby
#! ruby

require_relative "narou.rb"

__END__
:endofruby
endlocal
