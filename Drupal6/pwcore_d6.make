; drush make --prepare-install --contrib-destination=profiles/pwcore ./.make/pwcore.make [destination]

core = 6.x

api = 2

; Drupal core
projects[drupal][type] = "core"

; Install profile
projects[pwcore][type] = "profile"
projects[pwcore][download][type] = "git"
projects[pwcore][download][url] = "file:///Users/Shared/Repositories/pw/profiles/pwcore"

; PubWorks module
projects[pwmod][type] = "module"
projects[pwmod][subdir] = "pubworks"
projects[pwmod][download][type] = "git"
projects[pwmod][download][url] = "file:///Users/Shared/Repositories/pw/modules/pwmod"

; PubWorks features
projects[admin_help_menu][type] = "module"
projects[admin_help_menu][subdir] = "features"
projects[admin_help_menu][download][type] = "git"
projects[admin_help_menu][download][url] = "file:///Users/Shared/Repositories/pw/features/admin_help_menu"
projects[manage_site][type] = "module"
projects[manage_site][subdir] = "features"
projects[manage_site][download][type] = "git"
projects[manage_site][download][url] = "file:///Users/Shared/Repositories/pw/features/manage_site"
projects[news][type] = "module"
projects[news][subdir] = "features"
projects[news][download][type] = "git"
projects[news][download][url] = "file:///Users/Shared/Repositories/pw/features/news"
projects[pubworks_core][type] = "module"
projects[pubworks_core][subdir] = "features"
projects[pubworks_core][download][type] = "git"
projects[pubworks_core][download][url] = "file:///Users/Shared/Repositories/pw/features/pubworks_core"

; Content
projects[cck][subdir] = "contrib"
projects[emfield][subdir] = "contrib"
projects[diff][subdir] = "contrib"
projects[link][subdir] = "contrib"
projects[search_config][subdir] = "contrib"
projects[search_config][version] = "1.6"

; Blocks
projects[boxes][subdir] = "contrib"

; Views
projects[views][subdir] = "contrib"
projects[views][version] = 3
projects[views_bulk_operations][subdir] = "contrib"
projects[viewfield][subdir] = "contrib"
projects[views_cycle][subdir] = "contrib"
libraries[jquery_cycle][download][type] = "get"
libraries[jquery_cycle][download][url] = "http://www.malsup.com/jquery/cycle/release/jquery.cycle.zip?v2.86"
libraries[jquery_cycle][directory_name] = "jquery.cycle"
; Add pausing on hover to views_cycle: http://drupal.org/node/865236
projects[views_cycle][patch][] = "http://drupal.org/files/issues/views_cycle-865236-1.patch"
projects[draggableviews][subdir] = "contrib"

; Users
projects[administerusersbyrole][subdir] = "contrib"
projects[administerusersbyrole][patch][] = "http://drupal.org/files/issues/administerusersbyrole-DRUPAL-6--1-Views_editatble_filter-1.patch"
projects[roleassign][subdir] = "contrib"

; WYSIWYG
projects[wysiwyg][subdir] = "contrib"
projects[wysiwyg][patch][] = "http://dl.dropbox.com/u/1804559/wysiwyg-exportables_and_features_with_ui-1060846-11.patch"
projects[imce][subdir] = "contrib"
projects[imce_wysiwyg][subdir] = "contrib"
libraries[tinymce][download][type] = "get"
libraries[tinymce][download][url] = "http://downloads.sourceforge.net/project/tinymce/TinyMCE/3.3.8/tinymce_3_3_8.zip"
libraries[tinymce][directory_name] = "tinymce"
projects[wysiwyg_template][subdir] = "contrib"

; Backend modifications
projects[vertical_tabs][subdir] = "contrib"
projects[better_formats][subdir] = "contrib"
projects[nodeformcols][subdir] = "contrib"
projects[page_title][subdir] = "contrib"

; File/Images
projects[imageapi][subdir] = "contrib"
projects[imagecache][subdir] = "contrib"
projects[admin][subdir] = "contrib"
projects[transliteration][subdir] = "contrib"
projects[wysiwyg_imagefield][subdir] = "contrib"
projects[wysiwyg_imagefield][version] = "1.x-dev"
projects[insert][subdir] = "contrib"
projects[imagefield][subdir] = "contrib"
projects[filefield][subdir] = "contrib"
projects[filefield_paths][subdir] = "contrib"
projects[filefield_paths][version] = "1.x-dev"
projects[filefield_sources][subdir] = "contrib"

; Administration
projects[admin][subdir] = "contrib"
projects[admin][version] = "2"
projects[backup_migrate][subdir] = "contrib"
projects[context_admin][subdir] = "contrib"

; Menus
projects[nice_menus][subdir] = "contrib"
projects[nice_menus][version] = 2
projects[menu_block][subdir] = "contrib"
projects[ctm][subdir] = "contrib"

; Display Suite
projects[ds][subdir] = "contrib"
projects[nd][subdir] = "contrib"
projects[nd_contrib][subdir] = "contrib"

; Search
project[search_config][subdir] = "contrib"

; Utility
projects[jquery_ui][subdir] = "contrib"
projects[token][subdir] = "contrib"
projects[pathauto][subdir] = "contrib"
libraries[jquery_ui][download][type] = "get"
libraries[jquery_ui][download][url] = "http://jquery-ui.googlecode.com/files/jquery.ui-1.6.zip"
libraries[jquery_ui][directory_name] = "jquery.ui"
libraries[jquery_ui][destination] = "modules/contrib/jquery_ui"
projects[auto_nodetitle][subdir] = "contrib"
projects[date][subdir] = "contrib"
projects[globalredirect][subdir] = "contrib"
projects[google_analytics][subdir] = "contrib"
projects[install_profile_api][subdir] = "contrib"
projects[site_verify][subdir] = "contrib"
projects[libraries][subdir] = "contrib"
projects[webform][subdir] = "contrib"
projects[xmlsitemap][subdir] = "contrib"
projects[ctools][subdir] = "contrib"
projects[features][subdir] = "contrib"
projects[strongarm][subdir] = "contrib"
projects[exportables][subdir] = "contrib"
projects[exportables][version] = "2.0-beta1"
projects[input_formats][subdir] = "contrib"
projects[uuid][subdir] = "contrib"
projects[uuid_features][subdir] = "contrib"
projects[uuid_features][version] = "1.x-dev"
projects[context][subdir] = "contrib"
projects[module_filter][subdir] = "contrib"
projects[purr_messages][subdir] = "contrib"
libraries[jquery-purr][download][type] = "get"
libraries[jquery-purr][download][url] = "http://jquery-purr.googlecode.com/files/jquery-purr0-1-0.zip"

; Themes
projects[zen][type] = "theme"
projects[zen][subdir] = "contrib"
projects[tao][type] = "theme"
projects[tao][subdir] = "contrib"
projects[rubik][type] = "theme"
projects[rubik][subdir] = "contrib"
; @TODO - Revert when http://github.com/developmentseed/rubik/issues/#issue/107 committed
; projects[rubik][location] = http://code.developmentseed.org/fserver
;projects[rubik][download][type] = "git"
;projects[rubik][download][url] = "git://github.com/Decipher/rubik.git"

; Development
projects[custom_formatters][subdir] = "devel"
projects[custom_formatters][version] = "1.x-dev"
projects[devel][subdir] = "devel"
projects[coder][subdir] = "devel"
projects[environment_indicator][subdir] = "devel"
projects[ctools][subdir] = "contrib"
projects[ctools][version] = "1.x-dev"
projects[ie_css_optimizer][subdir] = "devel"
