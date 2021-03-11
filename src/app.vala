class GtkMvvmSample.App : Gtk.Application {
  public App () {
    Object (
      application_id: "com.github.nahuelwexd.GtkMvvmSample"
    );
  }

  private static int main (string[] args) {
    // Configure project localizations
    // See https://developer.gnome.org/glib/stable/glib-I18N.html
    Intl.setlocale (LocaleCategory.ALL);
    Intl.bindtextdomain (Config.GETTEXT_PACKAGE, Config.LOCALEDIR);
    Intl.bind_textdomain_codeset (Config.GETTEXT_PACKAGE, "UTF-8");
    Intl.textdomain (Config.GETTEXT_PACKAGE);

    return new App ().run (args);
  }

  protected override void activate () {
    this.active_window.present ();
  }

  protected override void startup () {
    base.startup ();

    /// TRANSLATORS: This is the app name
    Environment.set_application_name (_("GTK MVVM Sample"));

    // Load the custom stylesheet
    var css_provider = new Gtk.CssProvider ();
    css_provider.load_from_resource (
      "/com/github/nahuelwexd/GtkMvvmSample/styles.css"
    );

    Gdk.Display? display = Gdk.Display.get_default ();
    if (display != null) {
      Gtk.StyleContext.add_provider_for_display (
        display,
        css_provider,
        Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION
      );
    }

    // Register custom widgets
    typeof (StudentView).ensure ();

    // Close the app on CTRL + Q
    var quit_action = new SimpleAction ("quit", null);
    quit_action.activate.connect (this.quit);
    this.set_accels_for_action ("app.quit", { "<Ctrl>q" });
    this.add_action (quit_action);

    // Initialize main window
    new MainWindow (this);
  } 
}
