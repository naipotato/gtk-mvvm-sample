sources = files (
    'models/student.vala',
    'utils/generic-list-model.vala',
    'view-models/student-view-model.vala',
    'views/student-view.vala',
    'widgets/student-item.vala',
    'windows/main-window.vala',
    'app.vala',
)

gnome = import ('gnome')

resources = gnome.compile_resources (
    '@0@.gresource'.format (meson.project_name ()),
    '@0@.gresource.xml'.format (meson.project_name ())
)

deps = [
    gio_dep,
    gtk_dep,
    gee_dep
]

executable (
    meson.project_name (),
    sources, resources,

    dependencies: deps,
         install: true,
         gui_app: true
)
