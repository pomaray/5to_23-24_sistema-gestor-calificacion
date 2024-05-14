using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Teacher_s_Student_And_Class_Management_System
{
    public partial class Home : Form
    {
        private string query = "";

        internal string Id
        {
            get;set;
        }
        internal string UserName
        {
            get;set;
        }
        internal string UserType
        {
            get;set;
        }

        bool classroomMenuSeen = false;

        public Home(string id, string name, string userType)
        {
            UserType = userType;
            UserName = name;
            Id = id;
            InitializeComponent();
            panelStu.Hide();

            dgvClassStudents.Hide();
            dgvClasses.Show();
        }

        private void Home_Load(object sender, EventArgs e)
        {
            lblWelcome.Text = "Welcome, "+UserName+".";
            lblWelcomeId.Text ="ID: "+ Id;
            lblAccType.Text = "Account type: "+ UserType;
            //
            //Datagridview of student design code
            //
            DgvStuDesign();
            DgvClaseesDesign();
            DgvClassStudentsDesign();
            DgvNotificationsDesign();
            DgvSendNoticeDesign();
            DgvUsers();
            //RefreshStudentDgvButton();
            if (UserType.StartsWith("A"))
            {
                btnSendNotices.Visible = true;
                btnNotification.Visible = false;
                btnCreateTeacher.Visible = true;
                panelNotifications.Hide();
                panelSendNotice.Hide();
                panelCreateTeacher.Hide();
                panelHome.Hide();
            }

            if (UserType.StartsWith("T"))
            {
                btnSendNotices.Visible = false;
                btnCreateTeacher.Visible = false;
                panelSendNotice.Hide();
                panelCreateTeacher.Hide();
                panelNotifications.Hide();

                btnNotification.Visible = true;
            }
            //}
        }

        private void DgvStuDesign()
        {
            dgvStu.BorderStyle = BorderStyle.None;
            dgvStu.AlternatingRowsDefaultCellStyle.BackColor = Color.FromArgb(238, 239, 249);
            dgvStu.CellBorderStyle = DataGridViewCellBorderStyle.SingleHorizontal;
            dgvStu.DefaultCellStyle.SelectionBackColor = Color.DarkTurquoise;
            dgvStu.DefaultCellStyle.SelectionForeColor = Color.WhiteSmoke;
            dgvStu.BackgroundColor = Color.White;

            dgvStu.EnableHeadersVisualStyles = false;
            dgvStu.ColumnHeadersBorderStyle = DataGridViewHeaderBorderStyle.None;
            dgvStu.ColumnHeadersDefaultCellStyle.BackColor = Color.FromArgb(20, 25, 72);
            dgvStu.ColumnHeadersDefaultCellStyle.ForeColor = Color.White;
        }
        private void DgvClaseesDesign()
        {
            dgvClasses.BorderStyle = BorderStyle.None;
            dgvClasses.AlternatingRowsDefaultCellStyle.BackColor = Color.FromArgb(238, 239, 249);
            dgvClasses.CellBorderStyle = DataGridViewCellBorderStyle.SingleHorizontal;
            dgvClasses.DefaultCellStyle.SelectionBackColor = Color.DarkTurquoise;
            dgvClasses.DefaultCellStyle.SelectionForeColor = Color.WhiteSmoke;
            dgvClasses.BackgroundColor = Color.White;

            dgvClasses.EnableHeadersVisualStyles = false;
            dgvClasses.ColumnHeadersBorderStyle = DataGridViewHeaderBorderStyle.None;
            dgvClasses.ColumnHeadersDefaultCellStyle.BackColor = Color.FromArgb(20, 25, 72);
            dgvClasses.ColumnHeadersDefaultCellStyle.ForeColor = Color.White;
        }
        private void DgvClassStudentsDesign()
        {
            dgvClassStudents.BorderStyle = BorderStyle.None;
            dgvClassStudents.AlternatingRowsDefaultCellStyle.BackColor = Color.FromArgb(238, 239, 249);
            dgvClassStudents.CellBorderStyle = DataGridViewCellBorderStyle.SingleHorizontal;
            dgvClassStudents.DefaultCellStyle.SelectionBackColor = Color.DarkTurquoise;
            dgvClassStudents.DefaultCellStyle.SelectionForeColor = Color.WhiteSmoke;
            dgvClassStudents.BackgroundColor = Color.White;

            dgvClassStudents.EnableHeadersVisualStyles = false;
            dgvClassStudents.ColumnHeadersBorderStyle = DataGridViewHeaderBorderStyle.None;
            dgvClassStudents.ColumnHeadersDefaultCellStyle.BackColor = Color.FromArgb(20, 25, 72);
            dgvClassStudents.ColumnHeadersDefaultCellStyle.ForeColor = Color.White;
        }
        private void DgvNotificationsDesign()
        {
            dgvNotifications.BorderStyle = BorderStyle.None;
            dgvNotifications.AlternatingRowsDefaultCellStyle.BackColor = Color.FromArgb(238, 239, 249);
            dgvNotifications.CellBorderStyle = DataGridViewCellBorderStyle.SingleHorizontal;
            dgvNotifications.DefaultCellStyle.SelectionBackColor = Color.DarkTurquoise;
            dgvNotifications.DefaultCellStyle.SelectionForeColor = Color.WhiteSmoke;
            dgvNotifications.BackgroundColor = Color.White;

            dgvNotifications.EnableHeadersVisualStyles = false;
            dgvNotifications.ColumnHeadersBorderStyle = DataGridViewHeaderBorderStyle.None;
            dgvNotifications.ColumnHeadersDefaultCellStyle.BackColor = Color.FromArgb(20, 25, 72);
            dgvNotifications.ColumnHeadersDefaultCellStyle.ForeColor = Color.White;
        }

        private void DgvSendNoticeDesign()
        {
            dgvSendNotice.BorderStyle = BorderStyle.None;
            dgvSendNotice.AlternatingRowsDefaultCellStyle.BackColor = Color.FromArgb(238, 239, 249);
            dgvSendNotice.CellBorderStyle = DataGridViewCellBorderStyle.SingleHorizontal;
            dgvSendNotice.DefaultCellStyle.SelectionBackColor = Color.DarkTurquoise;
            dgvSendNotice.DefaultCellStyle.SelectionForeColor = Color.WhiteSmoke;
            dgvSendNotice.BackgroundColor = Color.White;

            dgvSendNotice.EnableHeadersVisualStyles = false;
            dgvSendNotice.ColumnHeadersBorderStyle = DataGridViewHeaderBorderStyle.None;
            dgvSendNotice.ColumnHeadersDefaultCellStyle.BackColor = Color.FromArgb(20, 25, 72);
            dgvSendNotice.ColumnHeadersDefaultCellStyle.ForeColor = Color.White;
        }
        private void DgvUsers()
        {
            dgvUsers.BorderStyle = BorderStyle.None;
            dgvUsers.AlternatingRowsDefaultCellStyle.BackColor = Color.FromArgb(238, 239, 249);
            dgvUsers.CellBorderStyle = DataGridViewCellBorderStyle.SingleHorizontal;
            dgvUsers.DefaultCellStyle.SelectionBackColor = Color.DarkTurquoise;
            dgvUsers.DefaultCellStyle.SelectionForeColor = Color.WhiteSmoke;
            dgvUsers.BackgroundColor = Color.White;

            dgvUsers.EnableHeadersVisualStyles = false;
            dgvUsers.ColumnHeadersBorderStyle = DataGridViewHeaderBorderStyle.None;
            dgvUsers.ColumnHeadersDefaultCellStyle.BackColor = Color.FromArgb(20, 25, 72);
            dgvUsers.ColumnHeadersDefaultCellStyle.ForeColor = Color.White;
        }

        private void btnNewClassroom_Click(object sender, EventArgs e)
        {
            try
            {
                int u = DataAccess.ExecuteUpdateQuery(@"INSERT INTO " + Id + "classrooms" + " VALUES(" +
                    "'" + txtClassIdAction.Text + "', " +
                    "'" + txtClassroomNameAction.Text + "'); ");
                if (u == 1)
                {
                    MessageBox.Show("Classroom created successfully!");
                    SeeAllClasses();
                }
                else MessageBox.Show("Error!");
            }
            catch (Exception)
            {
                MessageBox.Show("Use a unique ClassID.");
            }
        }
        //Button addbtnClassroom(int i)
        //{
        //    Button btnnewClassroom = new Button();
        //    btnnewClassroom.BackColor = System.Drawing.SystemColors.ButtonHighlight;
        //    btnnewClassroom.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
        //    btnnewClassroom.Font = new System.Drawing.Font("Century Gothic", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
        //    btnnewClassroom.ForeColor = System.Drawing.Color.Green;
        //    btnnewClassroom.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
        //    btnnewClassroom.Location = new System.Drawing.Point(3, 3);
        //    btnnewClassroom.Name = "btn"+i.ToString();
        //    btnnewClassroom.Size = new System.Drawing.Size(208, 125);
        //    btnnewClassroom.TabIndex = 74;
        //    query = "Select class_name from " + Id + "classrooms where class_id=" + i;
        //    DataAccess.Ds = DataAccess.ExecuteQuery(query);
        //    string className = DataAccess.Ds.Tables[0].Rows[0][0].ToString();
        //    btnnewClassroom.Text = className;
        //    btnnewClassroom.UseVisualStyleBackColor = false;
        //    return btnnewClassroom;
        //}

        private void btnClassroomMenu_Click(object sender, EventArgs e)
        {
            panelStu.Hide();
            panelCreateTeacher.Hide();
            panelSendNotice.Hide();
            panelNotifications.Hide();
            panelHome.Show();


            try
            {
                query = @"CREATE TABLE " + Id + "classrooms" + " (ClassID varchar(50) NOT NULL PRIMARY KEY, Classname varchar(255))";
                DataAccess.ExecuteQuery(query);

                SeeAllClasses();
            }
            catch (Exception ex)
            {
            }
            finally
            {
                query = "SELECT * FROM " + Id + "classrooms;";
                DataAccess.Ds = DataAccess.ExecuteQuery(query);
                int numberOfClasses = DataAccess.Ds.Tables[0].Rows.Count;
                //MessageBox.Show(numberOfClasses.ToString());
                if (numberOfClasses == 0)
                    MessageBox.Show("No classes here. Create some.");
            }
        }

        private void btnStudentMenu_Click(object sender, EventArgs e)
        {
            panelHome.Hide();
            panelCreateTeacher.Hide();
            panelSendNotice.Hide();
            panelNotifications.Hide();
            this.panelStu.Show();
            try
            {
                DataAccess.ExecuteQuery(@"CREATE TABLE " + Id + "students (StudentID varchar(50) NOT NULL PRIMARY KEY, Name varchar(100), Classname varchar(250),AttendanceMID NVARCHAR(50), " +
                "AssignmentMID NVARCHAR(50), QuizMID NVARCHAR(50), Midterm NVARCHAR(50), AttendanceFinal NVARCHAR(50), AssignmentFinal NVARCHAR(50), QuizFinal NVARCHAR(50), Finalterm NVARCHAR(50));");
                RefreshStudentDgvButton();

                FillComboBoxClassname();
            }
            catch (Exception)
            {
                MessageBox.Show("No students here. Add some.");
            }
            finally
            {

            }
        }

        private void btnAddStu_Click(object sender, EventArgs e)
        {
                try
                {
                    int rowCount = DataAccess.ExecuteUpdateQuery(@"Insert into " + Id + "students " +
                                                   "values ('" + txtStuID.Text + "'," +
                                                   "'" + txtStuName.Text + "'," +
                                                   "'" + cmbClassname.SelectedItem + "'," +
                                                   "'" + txtStuAttendanceMID.Text + "'," +
                                                   "'" + txtStuAssignmentMid.Text + "'," +
                                                   "'" + txtStuQuizMid.Text + "'," +
                                                   "'" + txtStuMid.Text + "'," +
                                                   "'" + txtStuAttendanceFinal.Text + "'," +
                                                   "'" + txtStuAssignmentFinal.Text + "'," +
                                                   "'" + txtStuQuizFinal.Text + "'," +
                                                   "'" + txtStuFinalterm.Text + "');");
                    if (rowCount == 1)
                    {
                        MessageBox.Show("Student added successfully.");
                        RefreshStudentDgvButton();
                    }
                    else MessageBox.Show("Adding unsuccessfull. Try again with initializing all fields.");
                }
                catch (Exception)
                {
                    MessageBox.Show("Use a unique ID");
                }
        }

        private void btnRemoveStu_Click(object sender, EventArgs e)
        {
            int rowCount = DataAccess.ExecuteUpdateQuery("DELETE FROM "+Id+"students WHERE StudentID = '"+txtStuID.Text+"';");
            if (rowCount == 1)
            {
                MessageBox.Show("Student deleted successfully!");
            }
            else MessageBox.Show("Removing unsuccessfull. Try again");
            RefreshStudentDgvButton();
        }

        private void btnUpdateStu_Click(object sender, EventArgs e)
        {
            int rowCount= DataAccess.ExecuteUpdateQuery(@"UPDATE " + Id + "students " +
                                           "SET Name= '" + txtStuName.Text + "'," +
                                           "Classname= '" + cmbClassname.SelectedItem.ToString() + "'," +
                                           "AttendanceMID='" + txtStuAttendanceMID.Text + "'," +
                                           "AssignmentMID='" + txtStuAssignmentMid.Text + "'," +
                                           "QuizMID='" + txtStuQuizMid.Text + "'," +
                                           "Midterm='" + txtStuMid.Text + "'," +
                                           "AttendanceFinal='" + txtStuAttendanceFinal.Text + "'," +
                                           "AssignmentFinal='" + txtStuAssignmentFinal.Text + "'," +
                                           "QuizFinal='" + txtStuQuizFinal.Text + "'," +
                                           "Finalterm='" + txtStuFinalterm.Text + "'WHERE StudentID = '"+txtStuID.Text+"';");
            if (rowCount == 1)
            {
                MessageBox.Show("Student modified successfully!");
                RefreshStudentDgvButton();
            }
            else MessageBox.Show("Modifying unsuccessfull. Try again.");
        }

        private void btnViewStu_Click(object sender, EventArgs e)
        {
            RefreshStudentDgvButton();
        }
        private void RefreshStudentDgvButton()
        {
            DataAccess.Ds = DataAccess.ExecuteQuery("SELECT * FROM " + Id + "students;");
            dgvStu.DataSource = DataAccess.Ds.Tables[0];
        }
        private void btnSearchStudents_Click(object sender, EventArgs e)
        {
            DataAccess.Ds = DataAccess.ExecuteQuery("SELECT * FROM "+Id+"students WHERE StudentID = '"+txtSearchStu.Text+"'OR Name = '"+txtSearchStu.Text+"';");
            dgvStu.DataSource = DataAccess.Ds.Tables[0];
        }

        private void btnLogout_Click(object sender, EventArgs e)
        {
            Login login = new Login();
            login.FormClosed += new FormClosedEventHandler(login_FormClosed);     //// event for Home closes, login form also closes
            login.Show();
            this.Hide();
        }

        private void login_FormClosed(object sender, FormClosedEventArgs e)      // When Home closes, login form also closes
        {
            this.Close();
        }

        private void btnMidPresent_Click(object sender, EventArgs e)
        {
            try
            {
                int temp = Convert.ToInt32(txtStuAttendanceMID.Text);
                temp++;
                txtStuAttendanceMID.Text = temp.ToString();
                int rowCount = DataAccess.ExecuteUpdateQuery(@"UPDATE " + Id + "students SET AttendanceMID= '" + txtStuAttendanceMID.Text +
                    "'WHERE StudentID = '" + txtStuID.Text + "';");
                RefreshStudentDgvButton();
            }
            catch (Exception)
            {
                MessageBox.Show("Select a student first.");
            }
        }

        private void btnMidAbscent_Click(object sender, EventArgs e)
        {

        }

        private void btnFinalPresent_Click(object sender, EventArgs e)
        {
            try
            {
                int temp = Convert.ToInt32(txtStuAttendanceMID.Text);
                temp++;
                txtStuAttendanceMID.Text = temp.ToString();
                int rowCount = DataAccess.ExecuteUpdateQuery(@"UPDATE " + Id + "students SET AttendanceFinal= '" + txtStuAttendanceMID.Text +
                    "'WHERE StudentID = '" + txtStuID.Text + "';");
                RefreshStudentDgvButton();
            }
            catch (Exception)
            {

                MessageBox.Show("Select a student first.");
            }
        }

        private void btnAboutMenu_Click(object sender, EventArgs e)
        {
            new About().Show();
        }

        private void btnClearStuBoxes_Click(object sender, EventArgs e)
        {
            txtSearchStu.Clear();
            txtStuAssignmentFinal.Clear();
            txtStuAssignmentMid.Clear();
            txtStuAttendanceFinal.Clear();
            txtStuAttendanceMID.Clear();
            txtStuFinalterm.Clear();
            txtStuID.Clear();
            txtStuMid.Clear();
            txtStuName.Clear();
            txtStuQuizFinal.Clear();
            txtStuQuizMid.Clear();
            cmbClassname.Text = "";
        }

        private void btnSeeAllClasses_Click(object sender, EventArgs e)
        {
            SeeAllClasses();
        }

        private void SeeAllClasses()
        {
            try
            {
                dgvClassStudents.Hide();
                dgvClasses.Show();
                DataAccess.Ds = DataAccess.ExecuteQuery("SELECT * FROM " + Id + "classrooms");
                dgvClasses.DataSource = DataAccess.Ds.Tables[0];
            }
            catch (Exception)
            {
                MessageBox.Show("No classrooms here. Create some.");
            }
        }

        private void btnDeleteClassroom_Click(object sender, EventArgs e)
        {
            try
            {
                int u = DataAccess.ExecuteUpdateQuery("DELETE FROM " + Id + "classrooms WHERE ClassID = '" + txtClassIdAction.Text + "';"); 
                try
                {
                    int v = DataAccess.ExecuteUpdateQuery("DELETE * FROM " + Id + "students WHERE Classname = '" + txtClassroomNameAction + "';");
                }
                catch (Exception)
                {
                    MessageBox.Show("No students were the classroom");
                }

                if (u == 1)
                {
                    MessageBox.Show("Class deleted successfully.");
                    SeeAllClasses();
                }
            }
            catch (Exception)
            {
                MessageBox.Show("First select any classrooms to delete.");
            }
        }

        private void dgvClasses_MouseClick(object sender, MouseEventArgs e)
        {
            try
            {
                txtSelectedClassID.Text=txtClassIdAction.Text = dgvClasses.SelectedRows[0].Cells[0].Value.ToString();
                txtSelectedClass.Text=txtClassroomNameAction.Text = dgvClasses.SelectedRows[0].Cells[1].Value.ToString();

            }
            catch (Exception)
            {
            }
        }

        private void btnSeeAllStudentsOfSelectedClass_Click(object sender, EventArgs e)
        {
            SeeAllStudentsOfSelectedClass();
        }
        private void SeeAllStudentsOfSelectedClass()
        {
            try
            {
                dgvClasses.Hide();
                dgvClassStudents.Show();
                DataAccess.Ds = DataAccess.ExecuteQuery("SELECT StudentID, Name FROM " + Id + "students WHERE Classname = '" + txtClassroomNameAction.Text + "';");
                dgvClassStudents.DataSource = DataAccess.Ds.Tables[0];
            }
            catch
            {
                MessageBox.Show("No students in this class. Add some in Add students sidemenu.");
            }
        }

        private void btnEditClassName_Click(object sender, EventArgs e)
        {
            try
            {
                int u = DataAccess.ExecuteUpdateQuery(@"UPDATE " + Id + "classrooms SET Classname= '" + txtClassroomNameAction.Text + "' " +
                        "WHERE ClassID= '" + txtClassIdAction.Text + "';");
                if (u == 1)
                {
                    MessageBox.Show("Classname edited successfully.");
                    SeeAllClasses();
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Select a class or write ClassID properly.");
            }
        }

        private void FillComboBoxClassname()
        {
            try
            {
                cmbClassname.Items.Clear();
                DataAccess.Ds = DataAccess.ExecuteQuery("SELECT Classname FROM " + Id + "classrooms;");
                foreach (DataRow dr in DataAccess.Ds.Tables[0].Rows)
                cmbClassname.Items.Add( dr["Classname"].ToString());
            }
            catch (Exception)
            {
                MessageBox.Show("No classes were created.");
            }
        }

        private void dgvStu_MouseClick(object sender, MouseEventArgs e)
        {
            txtStuID.Text = dgvStu.SelectedRows[0].Cells[0].Value.ToString();
            txtStuName.Text = dgvStu.SelectedRows[0].Cells[1].Value.ToString();
            txtStuAttendanceMID.Text = dgvStu.SelectedRows[0].Cells[3].Value.ToString();
            txtStuAssignmentMid.Text = dgvStu.SelectedRows[0].Cells[4].Value.ToString();
            txtStuQuizMid.Text = dgvStu.SelectedRows[0].Cells[5].Value.ToString();
            txtStuMid.Text = dgvStu.SelectedRows[0].Cells[6].Value.ToString();
            txtStuAttendanceFinal.Text = dgvStu.SelectedRows[0].Cells[7].Value.ToString();
            txtStuAssignmentFinal.Text = dgvStu.SelectedRows[0].Cells[8].Value.ToString();
            txtStuQuizFinal.Text = dgvStu.SelectedRows[0].Cells[9].Value.ToString();
            txtStuFinalterm.Text = dgvStu.SelectedRows[0].Cells[10].Value.ToString();
        }

        private void dgvClassStudents_MouseClick(object sender, MouseEventArgs e)
        {
            try
            {
                txtSelectedStuID.Text = dgvClassStudents.SelectedRows[0].Cells[0].Value.ToString();
                txtSelectedStuName.Text = dgvClassStudents.SelectedRows[0].Cells[1].Value.ToString();
            }
            catch (Exception)
            {

            }
            finally
            {

            }
        }

        private void btnClsMidAttendance_Click(object sender, EventArgs e)
        {
            ClsMidAttendance();
        }

        private void ClsMidAttendance()
        {
            dgvClasses.Hide();
            dgvClassStudents.Show();
            try
            {
                DataAccess.Ds = DataAccess.ExecuteQuery("SELECT StudentID, Name, AttendanceMID FROM " + Id + "students WHERE Classname = '" + txtSelectedClass.Text + "';");
                dgvClassStudents.DataSource = DataAccess.Ds.Tables[0];
            }
            catch (Exception)
            {
                MessageBox.Show("Select a class first.");
                throw;
            }
        }

        private void btnClsMidPresent_Click(object sender, EventArgs e)
        {
            try
            {
                txtEditMidAttendance.Text = dgvClassStudents.SelectedRows[0].Cells[2].Value.ToString();
                int temp = Convert.ToInt32(txtEditMidAttendance.Text);
                temp++;
                txtEditMidAttendance.Text = temp.ToString();
                int rowCount = DataAccess.ExecuteUpdateQuery(@"UPDATE " + Id + "students SET AttendanceMID= '" + txtEditMidAttendance.Text +
                    "'WHERE StudentID = '" + txtSelectedStuID.Text + "';");
                ClsMidAttendance();
            }
            catch (Exception)
            {
                MessageBox.Show("Select a student first.");
            }
        }

        private void btnEditMidAttendance_Click(object sender, EventArgs e)
        {
            try
            {
                DataAccess.ExecuteUpdateQuery(@"UPDATE " + Id + "students SET AttendanceMID = '" + txtEditMidAttendance.Text +
                    "'WHERE StudentID = '" + txtSelectedStuID.Text + "';");
                ClsMidAttendance();
            }
            catch (Exception)
            {
                MessageBox.Show("Select a student first.");
            }
        }

        private void btnClsMidAssignment_Click(object sender, EventArgs e)
        {
            ClsMidAssignment();
        }

        private void ClsMidAssignment()
        {
            dgvClasses.Hide();
            dgvClassStudents.Show();
            try
            {
                DataAccess.Ds = DataAccess.ExecuteQuery("SELECT StudentID, Name, AssignmentMID FROM " + Id + "students WHERE Classname ='" + txtSelectedClass.Text + "';");
                dgvClassStudents.DataSource = DataAccess.Ds.Tables[0];
            }
            catch (Exception)
            {
                MessageBox.Show("Select a class first.");
            }
            finally
            {

            }
        }

        private void btnEditMidAssignment_Click(object sender, EventArgs e)
        {
            try
            {
                DataAccess.ExecuteUpdateQuery(@"UPDATE " + Id + "students SET AssignmentMID = '" + txtEditMidAssignment.Text +
                    "'WHERE StudentID = '" + txtSelectedStuID.Text + "';");
                ClsMidAssignment();
            }
            catch (Exception)
            {
                MessageBox.Show("Select a student first.");
            }
        }

        private void btnClsMidQuiz_Click(object sender, EventArgs e)
        {
            ClsMidQuiz();

        }
        private void ClsMidQuiz()
        {
            dgvClasses.Hide();
            dgvClassStudents.Show();
            try
            {
                DataAccess.Ds = DataAccess.ExecuteQuery("SELECT StudentID, Name, QuizMID FROM " + Id + "students WHERE Classname ='" + txtSelectedClass.Text + "';");
                dgvClassStudents.DataSource = DataAccess.Ds.Tables[0];
            }
            catch (Exception)
            {
                MessageBox.Show("Select a class first.");
            }
            finally
            {

            }
        }

        private void btnEditMidQuiz_Click(object sender, EventArgs e)
        {
            try
            {
                DataAccess.ExecuteUpdateQuery(@"UPDATE " + Id + "students SET QuizMID = '" + txtEditMidQuiz.Text +
                    "'WHERE StudentID = '" + txtSelectedStuID.Text + "';");
                ClsMidQuiz();
            }
            catch (Exception)
            {
                MessageBox.Show("Select a student first.");
            }
        }

        private void btnClsMidterm_Click(object sender, EventArgs e)
        {
            ClsMidterm();
        }
        private void ClsMidterm()
        {
            dgvClasses.Hide();
            dgvClassStudents.Show();
            try
            {
                DataAccess.Ds = DataAccess.ExecuteQuery("SELECT StudentID, Name, Midterm FROM " + Id + "students WHERE Classname ='" + txtSelectedClass.Text + "';");
                dgvClassStudents.DataSource = DataAccess.Ds.Tables[0];
            }
            catch (Exception)
            {
                MessageBox.Show("Select a class first.");
            }
            finally
            {

            }
        }

        private void btnEditMidterm_Click(object sender, EventArgs e)
        {
            try
            {
                DataAccess.ExecuteUpdateQuery(@"UPDATE " + Id + "students SET Midterm = '" + txtEditMidterm.Text +
                    "'WHERE StudentID = '" + txtSelectedStuID.Text + "';");
                ClsMidterm();
            }
            catch (Exception)
            {
                MessageBox.Show("Select a student first.");
            }
        }

        private void btnClsFinalAttendance_Click(object sender, EventArgs e)
        {
            ClsFinalAttendance();
        }
        private void ClsFinalAttendance()
        {
            dgvClasses.Hide();
            dgvClassStudents.Show();
            try
            {
                DataAccess.Ds = DataAccess.ExecuteQuery("SELECT StudentID, Name, AttendanceFinal FROM " + Id + "students WHERE Classname ='" + txtSelectedClass.Text + "';");
                dgvClassStudents.DataSource = DataAccess.Ds.Tables[0];
            }
            catch (Exception)
            {
                MessageBox.Show("Select a class first.");
            }
            finally
            {

            }
        }

        private void btnEditFinalAttendance_Click(object sender, EventArgs e)
        {
            try
            {
                DataAccess.ExecuteUpdateQuery(@"UPDATE " + Id + "students SET AttendanceFinal = '" + txtEditFinalAttendance.Text +
                    "'WHERE StudentID = '" + txtSelectedStuID.Text + "';");
                ClsFinalAttendance();
            }
            catch (Exception)
            {
                MessageBox.Show("Select a student first.");
            }
        }

        private void btnClsFinalAssignment_Click(object sender, EventArgs e)
        {
            ClsFInalAssignment();
        }
        private void ClsFInalAssignment()
        {
            dgvClasses.Hide();
            dgvClassStudents.Show();
            try
            {
                DataAccess.Ds = DataAccess.ExecuteQuery("SELECT StudentID, Name, AssignmentFinal FROM " + Id + "students WHERE Classname ='" + txtSelectedClass.Text + "';");
                dgvClassStudents.DataSource = DataAccess.Ds.Tables[0];
            }
            catch (Exception)
            {
                MessageBox.Show("Select a class first.");
            }
            finally
            {

            }
        }

        private void btnEditFinalAssignment_Click(object sender, EventArgs e)
        {
            try
            {
                DataAccess.ExecuteUpdateQuery(@"UPDATE " + Id + "students SET AssignmentFinal = '" + txtEditFinalAssignment.Text +
                    "'WHERE StudentID = '" + txtSelectedStuID.Text + "';");
                ClsFInalAssignment();
            }
            catch (Exception)
            {
                MessageBox.Show("Select a student first.");
            }
        }

        private void btnClsFinalQuiz_Click(object sender, EventArgs e)
        {
            ClsFinalQuiz();
        }
        private void ClsFinalQuiz()
        {
            dgvClasses.Hide();
            dgvClassStudents.Show();
            try
            {
                DataAccess.Ds = DataAccess.ExecuteQuery("SELECT StudentID, Name, QuizFinal FROM " + Id + "students WHERE Classname ='" + txtSelectedClass.Text + "';");
                dgvClassStudents.DataSource = DataAccess.Ds.Tables[0];
            }
            catch (Exception)
            {
                MessageBox.Show("Select a class first.");
            }
            finally
            {

            }
        }
        private void btnEditFinalQuiz_Click(object sender, EventArgs e)
        {
            try
            {
                DataAccess.ExecuteUpdateQuery(@"UPDATE " + Id + "students SET QuizFinal = '" + txtEditFinalQuiz.Text +
                    "'WHERE StudentID = '" + txtSelectedStuID.Text + "';");
                ClsFinalQuiz();
            }
            catch (Exception)
            {
                MessageBox.Show("Select a student first.");
            }
        }

        private void btnClsFinalterm_Click(object sender, EventArgs e)
        {
            ClsFinalterm();
        }
        private void ClsFinalterm()
        {
            dgvClasses.Hide();
            dgvClassStudents.Show();
            try
            {
                DataAccess.Ds = DataAccess.ExecuteQuery("SELECT StudentID, Name, Finalterm FROM " + Id + "students WHERE Classname ='" + txtSelectedClass.Text + "';");
                dgvClassStudents.DataSource = DataAccess.Ds.Tables[0];
            }
            catch (Exception)
            {
                MessageBox.Show("Select a class first.");
            }
            finally
            {

            }
        }

        private void btnEditFinal_Click(object sender, EventArgs e)
        {
            try
            {
                DataAccess.ExecuteUpdateQuery(@"UPDATE " + Id + "students SET Finalterm = '" + txtEditFinalterm.Text +
                    "'WHERE StudentID = '" + txtSelectedStuID.Text + "';");
                ClsFinalterm();
            }
            catch (Exception)
            {
                MessageBox.Show("Select a student first.");
            }
        }

        private void btnClsFInalPresent_Click(object sender, EventArgs e)
        {
            try
            {
                txtEditFinalAttendance.Text = dgvClassStudents.SelectedRows[0].Cells[2].Value.ToString();
                int temp = Convert.ToInt32(txtEditFinalAttendance.Text);
                temp++;
                txtEditFinalAttendance.Text = temp.ToString();
                int rowCount = DataAccess.ExecuteUpdateQuery(@"UPDATE " + Id + "students SET AttendanceFinal= '" + txtEditFinalAttendance.Text +
                    "'WHERE StudentID = '" + txtSelectedStuID.Text + "';");
                ClsFinalAttendance();
            }
            catch (Exception)
            {
                MessageBox.Show("Select a student first.");
            }
        }

        private void btnSearchCls_Click(object sender, EventArgs e)
        {
            try
            {
                DataAccess.Ds = DataAccess.ExecuteQuery("SELECT * FROM " + Id + "classrooms WHERE Classname= '" + txtSearchCls.Text + "'OR ClassID='" + txtSearchCls.Text + "'");
                dgvClassStudents.Hide();
                dgvClasses.Show();
                dgvClasses.DataSource = DataAccess.Ds.Tables[0];
            }
            catch (Exception)
            {
            }
        }

        private void btnNotification_Click(object sender, EventArgs e)
        {
            panelHome.Hide();
            panelStu.Hide();
            panelNotifications.Show();
            

            try
            {
                DataAccess.ExecuteQuery("SELECT * FROM Notifications WHERE Receiver ='" + Id + "';");
                dgvNotifications.DataSource = DataAccess.Ds.Tables[0];
            }
            catch
            {
            }
        }

        private void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                int u = DataAccess.ExecuteUpdateQuery("INSERT INTO Notifications VALUES('"+Id+"', '"+comboBoxReceiver.SelectedItem+"', '"+txtMessage.Text+"');");
                if (u == 1)
                {
                    MessageBox.Show("Notice sent successfully!");
                }
            }
            catch
            {
                MessageBox.Show("Failed");
            }
        }

        private void btnSendNotices_Click(object sender, EventArgs e)
        {
            panelStu.Hide();
            panelHome.Hide();
            panelNotifications.Hide();
            panelCreateTeacher.Hide();
            panelSendNotice.Show();
            btnSendNotices.Visible = true;
            try
            {
                comboBoxReceiver.Items.Clear();
                DataAccess.Ds = DataAccess.ExecuteQuery("SELECT * FROM login;");
                foreach (DataRow dr in DataAccess.Ds.Tables[0].Rows)
                    comboBoxReceiver.Items.Add(dr["id"].ToString());
            }
            catch (Exception)
            {
            }
            try
            {
                DataAccess.Ds = DataAccess.ExecuteQuery("SELECT * FROM Notifications WHERE Sender='"+Id+"';");
                dgvSendNotice.DataSource = DataAccess.Ds.Tables[0];
            }
            catch (Exception)
            {
            }
        }

        private void btnCreateTeacher_Click(object sender, EventArgs e)
        {
            panelHome.Hide();
            panelStu.Hide();
            panelSendNotice.Hide();
            panelNotifications.Hide();
            panelCreateTeacher.Show();

            txtCreateTeacherID.ReadOnly = true;
            try
            {
                
                DataAccess.Ds = DataAccess.ExecuteQuery("SELECT * FROM login");
                string u = ((DataAccess.Ds.Tables[0].Rows.Count) + 1).ToString();
                txtCreateTeacherID.Text = "T_" + u + "_" + DateTime.Today.Year.ToString();

                dgvUsers.DataSource = DataAccess.Ds.Tables[0];
            }
            catch (Exception)
            {
                MessageBox.Show("Exception");
            }
        }

        private void btnCreate_Click(object sender, EventArgs e)
        {
            try
            {
                int u = DataAccess.ExecuteUpdateQuery("INSERT INTO login VALUES ('" + txtCreateTeacherID.Text + "','" + txtCreatePass.Text + "','" + txtCreateTeacherName + "','Teacher');");
                if (u == 1)
                {
                    MessageBox.Show("Teacher created succesfully!");
                }
                else MessageBox.Show("Error");
            }
            catch (Exception)
            {
                MessageBox.Show("Exception. Couldn't create.");
            }
        }

        private void btnViewUsers_Click(object sender, EventArgs e)
        {
            DataAccess.Ds = DataAccess.ExecuteQuery("SELECT * FROM login;");
            dgvUsers.DataSource = DataAccess.Ds.Tables[0];
        }

        private void btnRefreshSentNotice_Click(object sender, EventArgs e)
        {
            DataAccess.Ds = DataAccess.ExecuteQuery("SELECT * FROM Notifications WHERE Sender = '"+Id+"';");
            dgvSendNotice.DataSource = DataAccess.Ds.Tables[0];
        }

        private void dgvStu_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }

}
