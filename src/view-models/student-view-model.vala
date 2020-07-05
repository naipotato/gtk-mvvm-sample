class StudentViewModel : Object {

    public GenericListModel<Student> students { get; set; }

    construct {
        this.load_students ();
    }

    public void load_students () {
        var students = new GenericListModel<Student> ();

        students.add (new Student () { first_name = "Mark", last_name = "Allain", age = 17 });
        students.add (new Student () { first_name = "Allen", last_name = "Brown", age = 22 });
        students.add (new Student () { first_name = "Linda", last_name = "Hamerski", age = 19 });

        this.students = students;
    }
    public void load_more_students () {

        // Vala lacks a way to clone objects, so converting the current
        // collection into an array in order to have two differents
        // collections with the same contents

        this.students.add_all_array (this.students.to_array ());
    }
}
