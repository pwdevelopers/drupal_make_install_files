; $Id$
; Core version; ------------
core = 7.x

; API version; ------------
api = 2

; Core project; ------------
projects[drupal][type] = core
projects[drupal][download][type] = "git"
projects[drupal][download][module] = "contributions/profiles/drupal"
projects[drupal][download][revision] = "7.7"

; Modules; --------
projects[admin_menu][subdir] = contrib
projects[contemplate][subdir] = contrib

; Themes
; --------
projects[] = fusion