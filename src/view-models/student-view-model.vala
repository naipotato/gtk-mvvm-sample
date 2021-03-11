class GtkMvvmSample.StudentViewModel : Object {
  public ObservableList<Student> students { get; set; }

  public void load_students () {
    this.students = new ObservableList<Student> ({
      new Student () { first_name = "Mark", last_name = "Allain", age = 17 },
      new Student () { first_name = "Allen", last_name = "Brown", age = 22 },
      new Student () { first_name = "Linda", last_name = "Hamerski", age = 19 }
    });
  }

  public void load_more_students () {
    foreach (var student in this.students) {
      this.students.add (student.copy ());
    }
  }

  construct {
    this.load_students ();
  }
}
