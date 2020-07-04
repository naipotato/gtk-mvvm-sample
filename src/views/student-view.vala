[GtkTemplate (ui = "/com/github/nahuelwexd/gtk-mvvm-sample/student-view.ui")]
class StudentView : Gtk.Box {

    private StudentViewModel _view_model;
    [GtkChild] private Gtk.ListBox _students_list;

    construct {
        this._view_model = new StudentViewModel ();
        this._students_list.bind_model (this._view_model.students, this.create_student_item);
    }

    private Gtk.Widget create_student_item (Object item) {
        var student = (Student) item;
        var student_item = new StudentItem ();
        student.bind_property ("first-name", student_item, "first-name",
            BindingFlags.BIDIRECTIONAL | BindingFlags.SYNC_CREATE);
        student.bind_property ("last-name", student_item, "last-name",
            BindingFlags.BIDIRECTIONAL | BindingFlags.SYNC_CREATE);

        return student_item;
    }
}
