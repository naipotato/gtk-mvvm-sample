class GtkMvvmSample.Student : Object {
  public int age { get; set; }
  public string? first_name { get; set; }
  public string? last_name { get; set; }

  public Student copy () {
    return new Student () {
      age = this.age,
      first_name = this.first_name,
      last_name = this.last_name
    };
  }
}
