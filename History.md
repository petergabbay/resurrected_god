## 1.1.0 / 2022-06-29

* Major Changes
  * Drop support for Campfire
  * Drop support for Prowl
  * Drop support for Scout
  * Drop support for Sensu
  * Drop support for StatsD
  * Drop support for Twitter
* Bug fixes
  * Use `String#+@` to avoid modify frozen String in `God.running_load`
* Minor Enhancements
  * Enable `frozen_string_literal` entirely
  * Remove unused gems from Gemfile
  * Regenerate documents by using AsciiDoctor
  * Polish documents
  * Avoid modifying constant `CONTACT_DEPS`
  * Remove an unused variable in `God::Configurable#base_name`
    * It was for fix MRI's local scope optimization bug.

## 1.0.0 / 2022-06-22

* Major Changes
  * Drop support for Ruby 2.5 and earlier
    * Now Ruby 2.6+ is required.
  * Drop support for HipChat
    * HipChat has been out of service since February 2019.
  * Drop support for Jabber
    * Sending notices to Jabber requires `xmpp4r`, but this gem is not maintained.  
      (The last commit was made on 2014-12-03)
    * `xmpp4r` prints numerous warnings and they are quite annoying.
* Minor Changes
  * Expand `God.pid_file_directory` to the absolute path
    * Now `~/.god/pids` is expanded to `/home/john/.god/pids`.
* Minor Enhancements
  * Enable `frozen_string_literal` partially
  * Reduce included files to reduce the gem file size
  * Use Gemfile instead of `Gem::Specification#add_development_dependency`
  * Migrate CI from Travis CI to GitHub Actions
  * Improve test codes
  * Introduce RuboCop
  * Format codes with RuboCop
  * Introduce CodeClimate to analyze code quality
  * Introduce CodeCov to analyze test coverage

## 0.14.0 / 2022-03-06

  * Major Changes
    * Renamed to ResurrectedGod (resurrected_god)
  * Minor Enhancements
    * Change the format of History to Markdown
    * Added `god/version.rb` to make version control easier

## 0.13.8 / unreleased

  * Bug fixes
    * Replace `Object#timeout` with `Timeout.timeout` to support Ruby 3.0

## 0.13.7 / 2015-08-19

  * Bug fixes
    * Fixed slack integration (#217)
    * Update twitter gem to support newer rubies (#219)
    * Make stop_all work with newer rubies (#209)
    * Don't start more DRb servers than necessary
  * Minor Enhancements
    * Allow uid and gid to be specified as an integer (#202)

## 0.13.6 / 2015-02-21

  * Minor Enhancements
    * sensu notifier (#199)

## 0.13.5 / 2015-01-09

  * Minor Enhancements
    * statsd notifier (#144)
    * Slack notifier (#172)
  * Bug fixes
    * Add support for Ruby 2.2.0 (#206)
    * Fix tests for Ruby 2.0 (#205)
    * Make group assignment more like login (#159)
    * Flush file descriptors to prevent too many processes from being started (#141)
    * Allow SSL URLs (#168)
  * Documentation fixes
    * Clarify Hipchat privilege requirements (#176)

## 0.13.4 / 2014-03-05

  * Minor Enhancements
    * Hipchat reporter (#162)
    * Re-open log files on SIGUSR1 (#103)
  * Bug fixes
    * Send query params on webhook reporter (#160)
    * Don't throw an exception when there are problems reading pid file (#164)

## 0.13.3 / 2013-09-25

  * Minor Enhancements
    * Invoke commands for all watchers
    * Airbrake reporter
    * Improvements to socket responding condition

## 0.13.2 / 2013-02-26

  * Minor Enhancements
    * Added file_touched condition (#86)
  * Bug fixes
    * Ensure Ruby 1.9 fixes only apply to 1.9.0 and 1.9.1 (#125)
    * Documentation fixes (#109, #84, #92)

## 0.13.1 / 2012-09-18

  * Minor Changes
    * Prevent auto-loading from bundler by requiring $load_god to require (#97)

## 0.13.0 / 2012-09-17

  * Minor Changes
    * Reduce verbosity of non-failing conditions (#111)

## 0.12.1 / 2012-01-21

  * Bug Fixes
    * Fix undefined variable problem in CLI (#82)

## 0.12.0 / 2012-01-13

  * Minor Enhancements
    * Add umask support
    * Add socket response condition (#25)
    * Don't require tests run as sudo under non-linux systems (#15)
    * Add Bundler support
    * Add keepalive simple conditional setups (#71)
    * Better load command to act upon removed watches (#70)
    * Add support for ssl in http_response_code condition (#36)
    * New documentation at http://godrb.com
  * Bug Fixes
    * Use IO.print instead of IO.puts for thread safety (#35)
    * Fix Slashproc poller for commands with spaces (#31)
    * Various segfault and kernel panic fixes
    * Fix SMTP Auth documentation (#29)
    * Fix a bunch of tests that were failing on Ruby 1.9

## 0.11.0 / 2010-07-01

  * Major Changes
    * Rewrite notification system to be more consistent and flexible.

## 0.10.1 / 2010-05-17

  * Bug Fixes
    * Fix date in gemspec

## 0.10.0 / 2010-05-17

  * Minor Enhancements
    * Add stop_timeout and stop_signal options to Watch
  * Bug Fixes
    * Stop command string was being ignored

## 0.9.0 / 2010-04-03

  * Minor Enhancements
    * Allow kqueue for OpenBSD and NetBSD
    * Add err_log and err_log_cmd
    * Add God.terminate_timeout option
    * Respect --log-level in Syslog
    * Add configuration parameters to set permissions on socket
    * Add Scout contact
    * Add Prowl contact
  * Bug Fixes
    * Fix interleaved log messages
  * Experimental
    * Ruby 1.9 support

## 0.8.0 / 2009-11-30

  * Minor Enhancements
    * Rubygems decontamination
    * Use Monitor instead of Mutex to provide ability to wait with a timeout
    * Only generate log messages when they're being used
    * Remove usage of Thread.critical in DriverEventQueue
    * Update to work with latest bleak-house
    * Cache some frequent lookups to reduce object creation
    * Changing the @io.print call in SimpleLogger to not concatenate
      the formatted results before printing
  * Bug fixes
    * Make sure we don't leak hash slots when processes die
    * Make sure the driver is shutdown on Task#unregister!
    * Fix memory leak when issuing "god load" successfully
    * Fix defunct process

### NOTE

At this point I will stop giving credit in the history. Look at the author
and committer in the commit for that info.

## 0.7.22 / 2009-10-29

  * Minor Enhancements
    * Save ARGV so we can get access to it later if we want [github.com/eric]

## 0.7.21 / 2009-10-29

  * Minor Enhancements
    * Cache some frequent lookups to reduce object creation [github.com/eric]
    * Try to make SimpleLogger less leaky [github.com/eric]

## 0.7.20 / 2009-09-24

  * Minor Enhancements
    * Rewrite `god status` command to be not as horrible. Add ability to get
      status for individual tasks.

## 0.7.19 / 2009-09-21

  * Minor Enhancements
    * Teach `god status` to take a task name as a param and return
      an exit code of 0 if all watches are up or a non-zero exit code
      (equal to the number of non-up watches) if they are not.

## 0.7.18 / 2009-09-09

  * Minor Enhancements
    * Better handling of unexpected exceptions in conditions
    * Added support for running processes in a directory other than '/' [github.com/samhendley]
  * Bug Fixes
    * Generate an actual unique identifier for email contact [github.com/underley]

## 0.7.17 / 2009-08-25

  * Bug Fixes
    * Fix the glob and directory config loading for -c option

## 0.7.16 / 2009-08-24

  * Minor Enhancements
    * Better logging for disk_usage condition [github.com/lettherebecode]
  * Bug Fixes
    * Only sleep if driver delay is > 0 [github.com/ps2]
    * Rescue Timeout::Error exception due to smtp server timing out [github.com/ps2]
    * Disk usage condition should use `df -P` to prevent line splitting [github.com/mseppae]
    * Always require YAML so binary works on dumb systems

## 0.7.15 / 2009-08-19

  * Minor Enhancements
    * Support SSL Campfire connections [github.com/eric]
    * Allow wildcards in -c configuration file option

## 0.7.14 / 2009-08-10

  * Minor Enhancements
    * Only store log lines when a client wishes to see them
    * Add a lsb-compliant init script into god/init [Woody Peterson]
    * Never require stop command; use default killer if none is specified
  * Bug Fixes
    * Fix redefinition error for time.h and allow it to compile on Ubuntu Edgy [github.com/tbuser]
    * Fix a memory leak in jabber by adding a call to jabber_client.close [github.com/woahdae]
    * Make jabber code manage one connection to make it faster, use less memory,
      and not leak [github.com/woahdae]

## 0.7.13 / 2009-05-04

  * Bug Fixes
    * Auto daemonized processes are now stopped/unmonitored correctly [github.com/jcapote]

## 0.7.12 / 2008-12-10

  * Bug Fixes
    * Fix capistrano deployability [github.com/eric]
    * Fix event handling [brianw]

## 0.7.11 / 2008-11-14

  * Bug Fixes
    * Make notifications work inside lifecycle blocks

## 0.7.10 / 2008-11-13

  * Major Enhancements
    * Enable sending of arbitrary signals to a task or group via `god signal`
  * Bug Fixes
    * setup logging *after* loading a given config file when daemonized.
      enables logging to the 'God.log_file' specified in a config file. [github.com/jnewland]
  * New Conditions
    * FileMtime < PollCondition - trigger on file mtime durations [github.com/jwilkins]
  * New Contacts
    * Twitter - allow messages to twitter [github.com/jwilkins]
    * Campfire - send messages to 37signals' Campfire [github.com/hellvinz]
  * Minor Enhancements
    * Add watch log_cmd that can be reopened with STDOUT instead of a log file [github.com/jberkel]
    * Added webhook output support [Martyn Loughran]

## 0.7.9 / 2008-08-06

  * Major Enhancements
    * Use a psuedo-priority queue for more efficient driver loop [Darrell Kresge]
  * Bug Fixes
    * Fix file_writable? when using chroot [github.com/eric]

## 0.7.8 / 2008-07-09

  * Bug Fixes
    * Catch all Exceptions from HttpResponseCode condition [github.com/rliebling]
    * Don't error out if the process went away in SlashProcPoller [Kevin Clark]
    * Correction of Task#handle_poll to prevent crash under event registration failure conditions. [github.com/raggi]
    * Cleaned up logging of failed e-mail sends. [github.com/raggi]
    * Listen on 127.0.0.1 when using God as a client. [github.com/halorgium]
  * New Behaviors
    * clean_unix_socket [github.com/gma]
  * New Contacts
    * jabber [github.com/jwulff]
    * email via sendmail [github.com/monde]
  * Minor Enhancements
    * chroot support [github.com/eric]
    * Added God.log_file for the main god log, overridden by command line option. [github.com/raggi]
    * Print groups from `god status` command if present [github.com/pdlug]
    * Allow headers to be specified for http_response_code condition [github.com/pdlug]

## 0.7.7 / 2008-06-17

  * Bug Fixes
    * Fix detection of proc file system [raggi]

## 0.7.6 / 2008-05-13

  * Major Enhancements
    * Implement System::Process methods for Linux based on /proc [Kevin Clark]
  * Minor Enhancements
    * Allowing directories to be loaded at start [Bert Goethals]
  * Bug Fixes
    * Don't leak events on error in the kqueue handler [Kevin Clark]

## 0.7.5 / 2008-02-21

  * Bug Fixes
    * Remove Ruby's Logger and replace with custom SimpleLogger to stop threaded leak

## 0.7.4 / 2008-02-18

  * Bug Fixes
    * Introduce local scope to prevent faulty optimization that causes memory to leak

## 0.7.3 / 2008-02-14

  * Minor Enhancements
    * Add --bleakhouse to make running diagnostics easier
  * Bug Fixes
    * Use ::Process.kill(0, ...) instead of `kill -0` [queso]
    * Fix pid_file behavior in process-centric conditions so they work with tasks [matias]
    * Redirect output of daemonized god to log file or /dev/null earlier [_eric]

## 0.7.2 / 2008-02-04

  * Bug Fixes
    * Start event system for CLI commands
    * Up internal history to 100 lines per watch

## 0.7.1 / 2008-02-04

  * Minor Enhancements
    * Add --no-events option to completely disable events system

## 0.7.0 / 2008-02-01

  * Minor Enhancements
    * Better default pid_file_directory behavior
    * Add --attach <pid> to specify that god should quit if <pid> exits
  * Bug Fixes
    * Handle ECONNRESET in HttpResponseCode

## 0.6.12 / 2008-01-31

  * Minor Enhancements
    * Allow log file output for non-daemonized god
    * Switch to SIGTERM from SIGHUP for default lambda killer

## 0.6.11 / 2008-01-31

  * Major Enhancements
    * HUGE refactor of timer system to simplify scheduling
  * Minor Enhancements
    * Check for a truly working event system and disallow event conditions if none is present

## 0.6.10 / 2008-01-24

  * Bug Fixes
    * Fix ensure_stop nil pid no local variable bug

## 0.6.9 / 2008-01-23

  * Bug Fixes
    * Fix Timer condition dedup behavior

## 0.6.8 / 2008-01-23

  * Minor Enhancements
    * Warn if a command returns a non-zero exit code
    * Ensure that stop command actually stops process

## 0.6.7 / 2008-01-22

  * Minor Enhancements
    * Add --no-syslog option to disable Syslog
    * Allow contact redeclaration (dups are ignored)

## 0.6.6 / 2008-01-07

  * Bug Fixes
    * Redo Timer mutexing to reduce synchronization needs

## 0.6.5 / 2008-01-04

  * Bug Fixes
    * Fix Timer descheduling deadlock issue
    * Change HttpResponseCode to use GET instead of HEAD

## 0.6.4 / 2008-12-31

  * Bug Fixes
    * Refactor Hub to clarify mutexing
    * Eliminate potential iteration problem in Timer
    * Add caching PID accessor to process to solve event deregistration failure

## 0.6.3 / 2007-12-18

  * Minor Enhancements
    * Output ProcessExits registration/deregistration info

## 0.6.2 / 2007-12-17

  * Minor Enhancements
    * Output registered PID for ProcessExits
  * Bug Fixes
    * Fix `god remove <group>` not working for unmonitored watches

## 0.6.1 / 2007-12-14

* Minor Enhancement
  * Log when state change is complete

## 0.6.0 / 2007-12-4

* Minor Enhancement
  * Move Syslog calls into God::Logger and clean up all calling code
  * Remove god's pid file on user requested termination
  * Better handling and cleanup of DRb server's unix domain socket
  * Allow shorthand for requesting a god log
  * Add `god check` to make it easier to diagnose event problems
  * Refactor god binary into class/method structure
  * Implement `god remove` to remove a Task altogether
* New Conditions
  * DiskUsage < PollCondition - trigger if disk usage is above limit on mount [Rudy Desjardins]

## 0.5.2 / 2007-10-10

* Minor Enhancement
  * Allow extra args to pass through to config file

## 0.5.1 / 2007-10-08

* Bug Fixes
  * Rescue connection refused in http response code condition

## 0.5.0 / 2007-10-05

* Major Enhancements
  * Implement lifecycle scoped metric to allow for cross-state conditions
  * Add TriggerCondition for conditions that need info about state changes
  * Implement notification system
  * Add Tasks (a generalization of Watches) to do non-process related tasks
  * Add example init.d file in GOD_INSTALL_DIR/init/god [scott becker]
  * Add human readable info to conditions (and make low level log lines debug)
  * Switch DRb to use a unix domain socket for security reasons
* Minor Enchancements
  * Allow EventConditions to do transition overloading
  * Report errors during god startup instead of failing silently
  * Make transition block optional (default to Always condition returning true)
  * Better usage info for `god --help`
  * Explain what's going on when attempting to rebind to an in-use port
  * Add -b option to god binary to auto-bind to an unused port
  * Add `god quit` to stop god without stopping any tasks
  * Make self-daemonized Watch commands synchronous (as they should be)
  * Allow self-daemonized Watches to specify a log (could be useful)
  * Check for existence of config file if specified
  * Robustify `god load` and report errors back to the command issuer
  * Warn when `god load` tries to set global options
  * Add Configurable.clear method and make built-in conditions clear on entry
* New Conditions
  * Flapping < TriggerCondition - trigger on state change
  * HttpResponseCode < PollCondition - trigger on http response code or timeout (thx scott becker)
* New Contacts
  * Email < Contact - notify via email (smtp)
* Bug Fixes
  * Fix abort not aborting problem
  * Fix -p option not working for god binary
  * Fix God.init not accepting block (thx _eric)
  * Fix SIGHUP ignore (thx _eric)
  * Fix error reporting on `god --help` (don't error report a normal SystemExit)

## 0.4.3 / 2007-09-10

* Bug Fixes
  * fix Process#alive? to not raise on no such file (affects `god terminate`)

## 0.4.2 / 2007-09-10

* Bug Fixes
  * fix netlink buffer issue that prevented events on Linux from working consistently [dkresge]

## 0.4.1 / 2007-09-10

* Bug Fixes
  * require 'stringio' for ruby 1.8.5

## 0.4.0 / 2007-09-10

* Major Enhancements
  * Add the ability for conditions to override transition state (for exceptional cases)
  * Implement dynamic load of config files while god is running (god load <filename>)
  * Add ability to save auto-daemonized process output to a log file
  * Add robust default stop lambda command for auto-daemonized processes (inspired by _eric)
  * Add status command for god binary (shows status of each watch)
  * Create proper logger with timestamps
  * Add log command to god binary to get real time logs for a specific watch from a running god instance
  * Add terminate command for god binary (stop god and all watches)
* Minor Enhancements
  * Enforce validity of Watches
  * Enforce that God.init is not called after a Watch
  * Move pid_file_directory creation and validation to God.start
  * Remove check for at least one Watch during startup (now that dynamic loading exists)
* New Conditions
  * Tries < PollCondition - triggers after the specified number of tries
  * Add :notify_when_flapping behavior to check for oscillation [kevinclark]
  * Add :degrading_lambda condition. [kevinclark]
    It uses a decaying interval (1/2 rate) for 3 cycles before failing.
* Bug Fixes
  * Use exit!(0) instead of exit! in god binary to exit with code 0 (instead of default -1)
  * Command line group control fixed
  * Fix cross-thread return problem

## 0.3.0 / 2007-08-17

* Fix netlink header problem on Ubuntu Edgy [Dan Sully]
* Add uid/gid setting for processes [kevinclark]
* Add autostart flag for watches so they don't necessarily startup with god [kevinclark]
* Change command line call options for god binary to accommodate watch start/stop functionality
* Add individual start/stop/restart grace periods for finer grained control
* Change default DRb port to 17165 ('god'.to_i(32))
* Implement command line control to start/restart/stop/monitor/unmonitor watches/groups by name
* Watches can now belong to a group that can be controlled as a whole
* Allow god to be installed (sans events) on systems that don't support events
* Daemonize and handle PID files for non-daemonizing scripts [kevinclark]
* Fix simple mode lifecycle gap
* Remove necessity to specify pid_file for conditions
* Change config file to use God.init and God.watch directly instead of God.meddle block
* Move god binary command logic to main library
* Enhance god binary with better reporting
* Fix synchronization bug in Timer (reported by Srini Panguluri)
* Add Lambda condition for easy custom conditions [Mike Mintz]
* Add sugar for numerics (seconds, minutes, kilobytes, megabytes, percent, etc)
* Add optional PID and log file generation to god binary for daemon mode
* Add God.load to do glob enabled loading
* Add -V option to god binary for detailed version/build info

## 0.2.0 / 2007-07-18

* Rewrote innards to use a state and event based lifecycle
* Basic support for events via kqueue (bsd/darwin) and netlink/pec (linux) [kevinclark]
* Added advanced syntax (simple syntax calls advanced api underneath)
* Condition returns have changed meaning. With simple syntax, a true return activates block
* Updated http://god.rubyforge.org with updated simple config and new advanced config

## 0.1.0 / 2007-07-07

* 1 major enhancement
  * Birthday!
