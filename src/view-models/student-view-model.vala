class GtkMvvmSample.StudentViewModel : Object {
  public ObservableList<Student> students {
    get;
    default = new ObservableList<Student> ({
      new Student () { first_name = "Mark", last_name = "Allain", age = 17 },
      new Student () { first_name = "Allen", last_name = "Brown", age = 22 },
      new Student () { first_name = "Linda", last_name = "Hamerski", age = 19 }
    });
  }

  public void load_more_students () {
    this.students.add (this.students[0].copy ());
    this.students.add (this.students[1].copy ());
    this.students.add (this.students[2].copy ());
  }
}
