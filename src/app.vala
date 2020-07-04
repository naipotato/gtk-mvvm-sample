class App : Gtk.Application {

    public App () {
        Object (
            application_id: "com.github.nahuelwexd.gtk-mvvm-sample",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    public static int main (string[] args) {
        return new App ().run (args);
    }

    public override void startup () {
        base.startup ();

        // Register custom widgets
        typeof (StudentView).ensure ();
    }

    public override void activate () {
        var win = this.active_window ?? new MainWindow (this);
        win.present ();
    }
}
