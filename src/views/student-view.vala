[GtkTemplate (ui = "/com/github/nahuelwexd/GtkMvvmSample/student-view.ui")]
class GtkMvvmSample.StudentView : Gtk.Widget {
  private StudentViewModel _view_model = new StudentViewModel ();

  [GtkChild (name = "scrolled-window")]
  private unowned Gtk.ScrolledWindow _scrolled_window;

  [GtkChild (name = "students-list")]
  private unowned Gtk.ListBox _students_list;

  protected override void dispose () {
    this._scrolled_window.unparent ();
    base.dispose ();
  }

  private Gtk.Widget get_row_from_student (Object item) requires (item is Student) {
    return new StudentListRow ((Student) item);
  }

  [GtkCallback (name = "load-more-students")]
  private void load_more_students () {
    this._view_model.load_more_students ();
  }

  construct {
    this._view_model = new StudentViewModel ();
    this._students_list.bind_model (this._view_model.students, this.get_row_from_student);
  }

  static construct {
    set_css_name ("studentview");
  }
}
