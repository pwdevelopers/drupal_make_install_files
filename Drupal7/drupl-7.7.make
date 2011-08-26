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

; projects[] = viewsprojects[views][version] = 3.0-rc1

projects[views][version] = 3.x-dev
projects[views][subdir] = "contrib"
projects[views][type] = "module"

projects[views_bulk_operations][version] = 3.0-beta2
projects[views_bulk_operations][subdir] = "contrib"
projects[views_bulk_operations][type] = "module"

projects[vcd][version] = 1.0
projects[vcd][subdir] = "contrib"
projects[vcd][type] = "module"

projects[views_ticker][version] = 2.0
projects[views_ticker][subdir] = "contrib"
projects[views_ticker][type] = "module"

projects[token][version] = 1.0-beta4
projects[token][subdir] = "contrib"
projects[token][type] = "module"

projects[pathauto][version] = 1.0-rc2
projects[pathauto][subdir] = "contrib"
projects[pathauto][type] = "module"

projects[cck][subdir] = "contrib"
projects[cck][type] = "module"
projects[cck][version] = 2.x-dev

projects[panels][subdir] = "contrib"
projects[panels][type] = "module"
projects[panels][version] = 3.x-dev

projects[menu_minipanels][subdir] = "contrib"
projects[menu_minipanels][type] = "module"
projects[menu_minipanels][version] = 1.0-rc1


projects[panels_extra_layouts][subdir] = "contrib"
projects[panels_extra_layouts][type] = "module"
projects[panels_extra_layouts][version] = 1.3

projects[panels][subdir] = "contrib"
projects[panels][type] = "module"
projects[panels][version] = 3.x-dev

projects[features][subdir] = "contrib"
projects[features][type] = "module"
projects[features][version] = 1.x-dev

projects[finder] = 1.3
projects[finder][subdir] = "contrib"
projects[finder][type] = "module"

projects[userpoints][subdir] = "contrib"
projects[userpoints][type] = "module"
projects[userpoints][version] = 1.0

projects[nodeaccess_password][version] = 4.0
projects[nodeaccess_password][subdir] = "contrib"
projects[nodeaccess_password][type] = "module"

projects[realname_registration][version] = 2.0-rc1
projects[realname_registration][subdir] = "contrib"
projects[realname_registration][type] = "module"

projects[purr_messages][version] = 2.0-beta2
projects[purr_messages][subdir] = "contrib"
projects[purr_messages][type] = "module"

projects[openlayers][version] = 2.x-dev
projects[openlayers][subdir] = "contrib"
projects[openlayers][type] = "module"

projects[geolocation][version] = 1.0-beta1
projects[geolocation][subdir] = "contrib"
projects[geolocation][type] = "module"

projects[hierarchical_select][version] = 3.0-alpha3
projects[hierarchical_select][subdir] = "contrib"
projects[hierarchical_select][type] = "module"

projects[similarterms][version] = 1.0-beta3
projects[similarterms][subdir] = "contrib"
projects[similarterms][type] = "module"

projects[taxonomy_csv][version] = 5.6
projects[taxonomy_csv][subdir] = "contrib"
projects[taxonomy_csv][type] = "module"

projects[css_injector][version] = 1.6
projects[css_injector][subdir] = "contrib"
projects[css_injector][type] = "module"

projects[date][version] = 2.0-alpha4
projects[date][subdir] = "contrib"
projects[date][type] = "module"

projects[calendar][version] = 3.0-alpha1
projects[calendar][subdir] = "contrib"
projects[calendar][type] = "module"


projects[nodeaccess_password][version] = 4.0
projects[nodeaccess_password][subdir] = "contrib"
projects[nodeaccess_password][type] = "module"


projects[opengraph_meta][version] = 1.1
projects[opengraph_meta][subdir] = "contrib"
projects[opengraph_meta][type] = "module"

projects[dynamic_background][version] = 1.5
projects[dynamic_background][subdir] = "contrib"
projects[dynamic_background][type] = "module"

projects[fb][version] = 3.x-dev
projects[fb][subdir] = "contrib"
projects[fb][type] = "module"

projects[rules][version] = 2.0-rc1
projects[rules][subdir] = "contrib"
projects[rules][type] = "module"

projects[rules_link][version] = 1.0-beta2
projects[rules_link][subdir] = "contrib"
projects[rules_link][type] = "module"

projects[token][version] = 1.0-beta4
projects[token][subdir] = "contrib"
projects[token][type] = "module"

projects[entity][version] = 1.0-beta10
projects[entity][subdir] = "contrib"
projects[entity][type] = "module"


projects[views_jqfx_galleria][version] = 1.x-dev
projects[views_jqfx_galleria][subdir] = "contrib"
projects[views_jqfx_galleria][type] = "module"

projects[views_jqfx][version] = 1.x-dev
projects[views_jqfx][subdir] = "contrib"
projects[views_jqfx][type] = "module"

projects[views_jqfx_imageflow][version] = 1.x-dev
projects[views_jqfx_imageflow][subdir] = "contrib"
projects[views_jqfx_imageflow][type] = "module"

projects[og][version] = 1.1
projects[og][subdir] = "contrib"
projects[og][type] = "module"

projects[rules_autotag][version] = 1.1
projects[rules_autotag][subdir] = "contrib"
projects[rules_autotag][type] = "module"


projects[httpbl][version] = 1.0-rc4
projects[httpbl][subdir] = "contrib"
projects[httpbl][type] = "module"



projects[references][version] = 2.0-beta3
projects[references][subdir] = "contrib"
projects[references][type] = "module"

projects[acdx_references][version] = 1.0-beta3
projects[acdx_references][subdir] = "contrib"
projects[acdx_references][type] = "module"

projects[content_taxonomy][version] = 1.0-beta1
projects[content_taxonomy][subdir] = "contrib"
projects[content_taxonomy][type] = "module"

projects[email][version] = 1.0
projects[email][subdir] = "contrib"
projects[email][type] = "module"

projects[module_filter][version] = 1.5
projects[module_filter][subdir] = "contrib"
projects[module_filter][type] = "module"

projects[boxes][version] = 1.0-beta4
projects[boxes][subdir] = "contrib"
projects[boxes][type] = "module"

projects[webform][version] = 3.12
projects[webform][subdir] = "contrib"
projects[webform][type] = "module"

projects[recommender][version] = 3.0-alpha10
projects[recommender][subdir] = "contrib"
projects[recommender][type] = "module"

projects[history_rec][version] = 1.0-alpha2
projects[history_rec][subdir] = "contrib"
projects[history_rec][type] = "module"





projects[autolink][version] = 2.0-beta5
projects[autolink][subdir] = "contrib"
projects[autolink][type] = "module"

; MEMBERSHIP and LOGIN ********

projects[uuid][version] = 2.4
projects[uuid][subdir] = "contrib"
projects[uuid][type] = "module"

projects[login_one_time][version] = 1.0-alpha2
projects[login_one_time][subdir] = "contrib"
projects[login_one_time][type] = "module"

projects[login_destination][version] = 1.0
projects[login_destination][subdir] = "contrib"
projects[login_destination][type] = "module"

projects[profile2][version] = 1.0
projects[profile2][subdir] = "contrib"
projects[profile2][type] = "module"

projects[rpx][version] = 2.1
projects[rpx][subdir] = "contrib"
projects[rpx][type] = "module"

projects[votingapi][version] = 2.x-dev
projects[votingapi][subdir] = "contrib"
projects[votingapi][type] = "module"

projects[rate][version] = 1.x-dev
projects[rate][subdir] = "contrib"
projects[rate][type] = "module"

projects[fivestar][version] = 2.x-dev
projects[fivestar][subdir] = "contrib"
projects[fivestar][type] = "module"


; ECOMMERCE MODULES ********

projects[commerce][version] = 1.0
projects[commerce][subdir] = "contrib"
projects[commerce][type] = "module"

projects[commerce_file][version] = 1.0-beta1
projects[commerce_file][subdir] = "contrib"
projects[commerce_file][type] = "module"

projects[commerce_paypal][version] = 1.x-dev
projects[commerce_paypal][subdir] = "contrib"
projects[commerce_paypal][type] = "module"

projects[commerce_coupon][version] = 1.0-beta2
projects[commerce_coupon][subdir] = "contrib"
projects[commerce_coupon][type] = "module"

projects[paypal_api][version] = 1.1
projects[paypal_api][subdir] = "contrib"
projects[paypal_api][type] = "module"


; MEDIA MODULES ********

; projects[media_vimeo][version] = 1.1
; projects[media_vimeo][subdir] = "contrib"
; projects[media_vimeo][type] = "module"


; UI and LAYOUT MODULES ********

projects[ds][version] = 1.3
projects[ds][subdir] = "contrib"
projects[ds][type] = "module"

projects[front][version] = 2.0
projects[front][subdir] = "contrib"
projects[front][type] = "module"

projects[fontyourface][version] = 1.6
projects[fontyourface][subdir] = "contrib"
projects[fontyourface][type] = "module"

projects[colorbox][version] = 1.1
projects[colorbox][subdir] = "contrib"
projects[colorbox][type] = "module"


; TAXONOMY RELATED MODULES ********

projects[term_reference_tree][version] = 1.6
projects[term_reference_tree][subdir] = "contrib"
projects[term_reference_tree][type] = "module"

projects[taxonomy_manager][version] = 1.0-beta2
projects[taxonomy_manager][subdir] = "contrib"
projects[taxonomy_manager][type] = "module"

projects[multiselect][version] = 1.8
projects[multiselect][subdir] = "contrib"
projects[multiselect][type] = "module"

projects[autocomplete_deluxe][version] = 1.0-beta5
projects[autocomplete_deluxe][subdir] = "contrib"
projects[autocomplete_deluxe][type] = "module"


; CONTENT MODERATION MODULES ********

projects[workbench][version] = 1.0-beta6
projects[workbench][subdir] = "contrib"
projects[workbench][type] = "module"

projects[workbench_moderation][version] = 1.0-beta8
projects[workbench_moderation][subdir] = "contrib"
projects[workbench_moderation][type] = "module"

projects[workbench_access][version] = 1.0-beta9
projects[workbench_access][subdir] = "contrib"
projects[workbench_access][type] = "module"

projects[workbench_media][version] = 1.0-beta6
projects[workbench_media][subdir] = "contrib"
projects[workbench_media][type] = "module"

projects[workbench_files][version] = 1.0-beta5
projects[workbench_files][subdir] = "contrib"
projects[workbench_files][type] = "module"


; SOCIAL SHARE MODULES *******

projects[google_plusone][version] = 1.1
projects[google_plusone][subdir] = "contrib"
projects[google_plusone][type] = "module"


; ADMIN UTILITY MODULES *******

projects[ctools][version] = 1.0-rc1
projects[ctools][subdir] = "contrib"
projects[ctools][type] = "module"

projects[admin][version] = 2.0-beta3
projects[admin][subdir] = "contrib"
projects[admin][type] = "module"

projects[admin_menu][version] = 1.0-beta1
projects[admin_menu][subdir] = "contrib"
projects[admin_menu][type] = "module"

projects[admin_notes][version] = 3.x-dev
projects[admin_notes][subdir] = "contrib"
projects[admin_notes][type] = "module"

projects[profiler][version] = 2.0-beta1
projects[profiler][subdir] = "contrib"
projects[profiler][type] = "module"

projects[devel][version] = 1.2
projects[devel][subdir] = "contrib"
projects[devel][type] = "module"

projects[examples][version] = 1.x-dev
projects[examples][subdir] = "contrib"
projects[examples][type] = "module"

projects[libraries][version] = 1.0
projects[libraries][subdir] = "contrib"
projects[libraries][type] = "module"

projects[menu_block][version] = 2.2
projects[menu_block][subdir] = "contrib"
projects[menu_block][type] = "module"

projects[honeypot][version] = 1.4
projects[honeypot][subdir] = "contrib"
projects[honeypot][type] = "module"

projects[xray][version] = 1.0-beta2
projects[xray][subdir] = "contrib"
projects[xray][type] = "module"

projects[seckit][version] = 1.2
projects[seckit][subdir] = "contrib"
projects[seckit][type] = "module"


; IMAGE EDITING MODULES ********

projects[filefield_sources][version] = 1.4
projects[filefield_sources][subdir] = "contrib"
projects[filefield_sources][type] = "module"

projects[imagefield_crop][version] = 1.0
projects[imagefield_crop][subdir] = "contrib"
projects[imagefield_crop][type] = "module"

; CONTENT EDITING MODULES ********
projects[wysiwyg][version] = 2.1
projects[wysiwyg][subdir] = "contrib"
projects[wysiwyg][type] = "module"

projects[ckeditor][version] = 1.2
projects[ckeditor][subdir] = "contrib"
projects[ckeditor][type] = "module"

projects[ckeditor_link][version] = 2.0
projects[ckeditor_link][subdir] = "contrib"
projects[ckeditor_link][type] = "module"

projects[kcfinder][version] = 1.84
projects[kcfinder][subdir] = "contrib"
projects[kcfinder][type] = "module"


; THEME ADMIN MODULES ********

projects[omega_tools][version] = 3.0-rc3
projects[omega_tools][subdir] = "contrib"
projects[omega_tools][type] = "module"

; THEMES ********


; LIBRARIES ********

libraries[imageflow][download][type] = "get"
libraries[imageflow][download][url] = "http://finnrudolph.de/content/ImageFlow_1.3.0.zip"
libraries[imageflow][directory_name] = "ImageFlow"
libraries[imageflow][destination] = "libraries/"

libraries[galleria][download][type] = "get"
libraries[galleria][download][url] = "http://galleria.aino.se/static/galleria-1.2.5.zip"
libraries[galleria][directory_name] = "Galleria"
libraries[galleria][destination] = "libraries/"



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

