; $Id$
;
; Example makefile
; ----------------
; This is an example makefile to introduce new users of drush_make to the
; syntax and options available to drush_make. For a full description of all
; options available, see README.txt.

; This make file is a working makefile - try it! Any line starting with a `;`
; is a comment.

; Core version
; ------------
; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.

core = 7.x

; API version
; ------------
; Every makefile needs to declare it's Drush Make API version. This version of
; drush make uses API version `2`.

api = 2

; Core project
; ------------
; In order for your makefile to generate a full Drupal site, you must include
; a core project. This is usually Drupal core, but you can also specify
; alternative core projects like Pressflow. Note that makefiles included with
; install profiles *should not* include a core project.

; Use pressflow instead of Drupal core:
; projects[pressflow][type] = "core"
; projects[pressflow][download][type] = "file"
; projects[pressflow][download][url] = "http://launchpad.net/pressflow/6.x/6.15.73/+download/pressflow-6.15.73.tar.gz"

; CVS checkout of Drupal 6.x core:
; projects[drupal][type] = "core"
; projects[drupal][download][type] = "cvs"
; projects[drupal][download][root] = ":pserver:anonymous:anonymous@cvs.drupal.org:/cvs/drupal"
; projects[drupal][download][revision] = "DRUPAL-6"
; projects[drupal][download][module] = "drupal"

; CVS checkout of Drupal 7.x. Requires the `core` property to be set to 7.x.
; projects[drupal][type] = "core"
; projects[drupal][download][type] = "cvs"
; projects[drupal][download][root] = ":pserver:anonymous:anonymous@cvs.drupal.org:/cvs/drupal"
; projects[drupal][download][revision] = "HEAD"
; projects[drupal][download][module] = "drupal"

projects[] = drupal

; Projects
; --------
; Each project that you would like to include in the makefile should be
; declared under the `projects` key. The simplest declaration of a project
; looks like this:

; To include the most recent views module:

; projects[] = views

projects[views][version] = 3.0-rc1
projects[views][subdir] = "contrib"
projects[views][type] = "module"

projects[token][version] = 1.0-beta4
projects[token][subdir] = "contrib"
projects[token][type] = "module"

projects[pathauto][version] = 1.0-rc2
projects[pathauto][subdir] = "contrib"
projects[pathauto][type] = "module"

projects[admin_menu][version] = 3.x-dev
projects[admin_menu][subdir] = "contrib"
projects[admin_menu][type] = "module"

projects[cck][version] = 7.x-2.x-dev
projects[cck][subdir] = "contrib"
projects[cck][type] = "module"

projects[features][version] = 3.x-dev
projects[features][subdir] = "contrib"
projects[features][type] = "module"

projects[finder] = 1.1
projects[finder][subdir] = "contrib"
projects[finder][type] = "module"

projects[userpoints][version] = 1.1
projects[userpoints][subdir] = "contrib"
projects[userpoints][type] = "module"

projects[nodeaccess_password][version] = 4.0
projects[nodeaccess_password][subdir] = "contrib"
projects[nodeaccess_password][type] = "module"

projects[kcfinder][version] = 1.84
projects[kcfinder][subdir] = "contrib"
projects[kcfinder][type] = "module"

projects[realname_registration][version] = 2.0-rc1
projects[realname_registration][subdir] = "contrib"
projects[realname_registration][type] = "module"

projects[purr_messages][version] = 2.0-beta2
projects[purr_messages][subdir] = "contrib"
projects[purr_messages][type] = "module"

projects[geolocation][version] = 1.0-beta1
projects[geolocation][subdir] = "contrib"
projects[geolocation][type] = "module"

projects[css_injector][version] = 1.6
projects[css_injector][subdir] = "contrib"
projects[css_injector][type] = "module"

projects[uuid][version] = 1.0-alpha2
projects[uuid][subdir] = "contrib"
projects[uuid][type] = "module"

projects[opengraph_meta][version] = 1.1
projects[opengraph_meta][subdir] = "contrib"
projects[opengraph_meta][type] = "module"

projects[fb][version] = 3.x-dev
projects[fb][subdir] = "contrib"
projects[fb][type] = "module"


http://ftp.drupal.org/files/projects/features-7.x-1.0-beta3.tar.gz

; This will, by default, retrieve the latest recommended version of the project
; using its update XML feed on Drupal.org. If any of those defaults are not
; desirable for a project, you will want to use the keyed syntax combined with
; some options.

; If you want to retrieve a specific version of a project:

; projects[cck] = 2.6

; Or an alternative, extended syntax:

; projects[ctools][version] = 1.3

; Check out the latest version of a project from CVS. Note that when using a
; repository as your project source, you must explictly declare the project
; type so that drush_make knows where to put your project.

; projects[data][type] = module
; projects[data][download][type] = cvs
; projects[data][download][module] = contributions/modules/data
; projects[data][download][revision] = DRUPAL-6--1

; Clone a project from github.

; projects[tao][type] = theme
; projects[tao][download][type] = git
; projects[tao][download][url] = git://github.com/developmentseed/tao.git

; If you want to install a module into a sub-directory, you can use the
; `subdir` attribute.

; projects[admin_menu][subdir] = custom

; To apply a patch to a project, use the `patch` attribute and pass in the URL
; of the patch.

; projects[admin_menu][patch][] = "http://drupal.org/files/issues/admin_menu.long_.31.patch"

