project (
  'gtk-mvvm-sample',
  'vala',
  'c',

  license: 'Unlicense',
  meson_version: '>= 0.49.0',
  default_options: [
    'warning_level=2',
  ]
)

add_project_arguments (
  '-DGETTEXT_PACKAGE=@0@'.format (meson.project_name ()),
  
  language: 'c',
)

i18n = import('i18n')

subdir('data')
subdir('src')
subdir('po')

meson.add_install_script('build-aux/meson/postinstall.py')
