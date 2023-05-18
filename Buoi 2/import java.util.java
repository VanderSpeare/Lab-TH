import java.util.ArrayList;


public class Course {
    private String courseName;
    private int noOfStudents;
    private String teacher;
    public static int instances = 0;
private ArrayList<Student> studentList;

    //Getters
    public String getCourseName(){
        return this.courseName;
    }
    public int getNoOfStudents(){
        return this.noOfStudents;
    }
    public String getTeacher(){
        return this.teacher;
    }

    //Setters
    public void setCourseName(String courseName){
        this.courseName = courseName;
    }
    public void setNoOfStudents(int noOfStudents){
        this.noOfStudents = noOfStudents;
    }
    public void setTeacher(String teacher){
        this.teacher = teacher;
    }

    /**
     * Default constructor. Populates course name, number of students with defaults
     */
    public Course(){
        instances++;
        this.noOfStudents = 0;
        this.courseName = "Not Set";
        this.teacher = "Not Set";
    }

    /** 
     * Constructor with parameters 
     * @param noOfStudents integer
     * @param courseName String with the Course name
     * @param teacher String with the teacher
    */
    public Course(int noOfStudents, String courseName, String teacher){
        this.studentList = new ArrayList<Student>();
        this.courseName = courseName;
        this.teacher = teacher;
    }

    public boolean addStudent(Student student){
        if (student==null || studentList.contains(student)) {
            return false;
        }
        studentList.add(student);
        return true;
    }

    public void printStudents(){
    for(Student s : studentList)
            System.out.println(s.getName() + ", with " + s.getAge() + " year(s)");
    }

public static class Student{
        private int number;
        private String name;
        private int age;
        // Basically anything that makes sense for a student.

        public Student(int number, String name, int age){
            this.number = number;
            this.name = name;
            this.age = age;
        }

        // .... Getters and Setters.

        public int getNumber(){ 
            return this.number;
        }

        public String getName(){
            return this.name;
        }

        public int getAge(){
            return this.age;
        }
}
    // Testing code
    public static void main(String[] args){
        Course oop = new Course(6, "Object Oriented Programming", "LeBron James");
        oop.addStudent(new Course.Student(6, "Michael Jordan", 56));
        oop.addStudent(new Course.Student(23, "Kyrie Irving", 24));
        oop.addStudent(new Course.Student(14, "Kevin Love", 27));
        System.out.println(oop.getCourseName() + " has the following students");
        oop.printStudents();

    }

}