[GtkTemplate (ui = "/com/github/nahuelwexd/gtk-mvvm-sample/main-window.ui")]
class MainWindow : Gtk.ApplicationWindow {

    public MainWindow (App app) {
        Object (
            application: app
        );
    }
}
