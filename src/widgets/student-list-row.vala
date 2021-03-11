[GtkTemplate (ui = "/com/github/nahuelwexd/GtkMvvmSample/student-list-row.ui")]
class GtkMvvmSample.StudentListRow : Gtk.ListBoxRow {
  [GtkChild (name = "first-name-entry")]
  private unowned Gtk.Entry _first_name_entry;

  [GtkChild (name = "last-name-entry")]
  private unowned Gtk.Entry _last_name_entry;

  public Student? student { get; construct; }

  public StudentListRow (Student student) {
    Object (
      student: student
    );
  }

  [GtkCallback (name = "get-full-name")]
  private string get_full_name (string first_name, string last_name) {
    return @"$first_name $last_name";
  }

  construct {
    if (this.student != null) {
      this.student.bind_property (
        "first-name",
        this._first_name_entry,
        "text",
        BindingFlags.BIDIRECTIONAL | BindingFlags.SYNC_CREATE
      );

      this.student.bind_property (
        "last-name",
        this._last_name_entry,
        "text",
        BindingFlags.BIDIRECTIONAL | BindingFlags.SYNC_CREATE
      );
    }
  }
}
