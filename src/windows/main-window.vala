[GtkTemplate (ui = "/com/github/nahuelwexd/GtkMvvmSample/main-window.ui")]
class GtkMvvmSample.MainWindow : Gtk.ApplicationWindow {
  public MainWindow (App app) {
    Object (
      application: app
    );
  }
}
