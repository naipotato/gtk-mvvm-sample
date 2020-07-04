[GtkTemplate (ui = "/com/github/nahuelwexd/gtk-mvvm-sample/student-item.ui")]
class StudentItem : Gtk.ListBoxRow {

    public string first_name { get; set; }
    public string last_name { get; set; }
    public string full_name { get; private set; }

    [GtkCallback]
    private void on_property_changed () {
        if (this.first_name == null || this.last_name == null) {
            return;
        }

        this.full_name = @"$first_name $last_name";
    }
}
