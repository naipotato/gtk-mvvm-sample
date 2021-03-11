gtk_mvvm_sample_sources = [
  'models/student.vala',
  
  'utils/observable-list.vala',

  'view-models/student-view-model.vala',

  'views/student-view.vala',

  'widgets/student-list-row.vala',

  'windows/main-window.vala',

  'app.vala',
]

prefix = get_option ('prefix')

config_h = configuration_data ()
config_h.set_quoted ('GETTEXT_PACKAGE', meson.project_name ())
config_h.set_quoted ('LOCALEDIR', prefix / get_option ('localedir'))

configure_file (
  output: 'config.h',
  configuration: config_h,
)

confinc = include_directories ('.')

valac = meson.get_compiler ('vala')
vapidir = meson.source_root () / 'vapi'

gtk_mvvm_sample_deps = [
  dependency ('gee-0.8', version: '>= 0.20'),
  dependency ('gio-2.0', version: '>= 2.66'),
  dependency ('gtk4', version: '>= 4.1'),
  valac.find_library ('config', dirs: vapidir),
]

gnome = import ('gnome')

gtk_mvvm_sample_sources += gnome.compile_resources(
  'gtk_mvvm_sample-resources',
  'gtk_mvvm_sample.gresource.xml',

  c_name: 'gtk_mvvm_sample',
)

executable(
  'gtk-mvvm-sample',
  gtk_mvvm_sample_sources,

  vala_args: '--target-glib=2.66',
  dependencies: gtk_mvvm_sample_deps,
  install: true,
  gui_app: true,
  include_directories: confinc,
)
