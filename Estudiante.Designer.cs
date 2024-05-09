namespace gestor_calificaciones
{
    partial class Estudiante
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.guna2Panel1 = new Guna.UI2.WinForms.Guna2Panel();
            this.btnexit = new Guna.UI2.WinForms.Guna2CircleButton();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.label3 = new System.Windows.Forms.Label();
            this.btnbuscar = new Guna.UI2.WinForms.Guna2Button();
            this.btneliminar = new Guna.UI2.WinForms.Guna2Button();
            this.btnagregar = new Guna.UI2.WinForms.Guna2Button();
            this.txtbuscar = new Guna.UI2.WinForms.Guna2TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.cbtecnica = new Guna.UI2.WinForms.Guna2ComboBox();
            this.ID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NOMBRE = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.APELLIDO = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.FECHA_NACIMIENTO = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.FECHA_INGRESO = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.FECHA_SALIDA = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.CONTACTO = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TIPO_CONTACTO = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TECNICA = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dBregistroDataSet = new gestor_calificaciones.DBregistroDataSet();
            this.dBregistroDataSetBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.guna2Panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dBregistroDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dBregistroDataSetBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // guna2Panel1
            // 
            this.guna2Panel1.BackColor = System.Drawing.Color.White;
            this.guna2Panel1.BorderRadius = 20;
            this.guna2Panel1.BorderStyle = System.Drawing.Drawing2D.DashStyle.Custom;
            this.guna2Panel1.Controls.Add(this.btnexit);
            this.guna2Panel1.Controls.Add(this.dataGridView1);
            this.guna2Panel1.Controls.Add(this.label3);
            this.guna2Panel1.Controls.Add(this.btnbuscar);
            this.guna2Panel1.Controls.Add(this.btneliminar);
            this.guna2Panel1.Controls.Add(this.btnagregar);
            this.guna2Panel1.Controls.Add(this.txtbuscar);
            this.guna2Panel1.Controls.Add(this.label2);
            this.guna2Panel1.Controls.Add(this.cbtecnica);
            this.guna2Panel1.Location = new System.Drawing.Point(-10, -8);
            this.guna2Panel1.Name = "guna2Panel1";
            this.guna2Panel1.Size = new System.Drawing.Size(923, 517);
            this.guna2Panel1.TabIndex = 1;
            this.guna2Panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.guna2Panel1_Paint);
            // 
            // btnexit
            // 
            this.btnexit.DisabledState.BorderColor = System.Drawing.Color.DarkGray;
            this.btnexit.DisabledState.CustomBorderColor = System.Drawing.Color.DarkGray;
            this.btnexit.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(169)))), ((int)(((byte)(169)))), ((int)(((byte)(169)))));
            this.btnexit.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(141)))), ((int)(((byte)(141)))), ((int)(((byte)(141)))));
            this.btnexit.FillColor = System.Drawing.Color.Green;
            this.btnexit.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnexit.ForeColor = System.Drawing.Color.Silver;
            this.btnexit.Location = new System.Drawing.Point(859, 17);
            this.btnexit.Name = "btnexit";
            this.btnexit.ShadowDecoration.Mode = Guna.UI2.WinForms.Enums.ShadowMode.Circle;
            this.btnexit.Size = new System.Drawing.Size(46, 46);
            this.btnexit.TabIndex = 37;
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ID,
            this.NOMBRE,
            this.APELLIDO,
            this.FECHA_NACIMIENTO,
            this.FECHA_INGRESO,
            this.FECHA_SALIDA,
            this.CONTACTO,
            this.TIPO_CONTACTO,
            this.TECNICA});
            this.dataGridView1.DataSource = this.dBregistroDataSetBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(25, 183);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            this.dataGridView1.RowHeadersVisible = false;
            this.dataGridView1.Size = new System.Drawing.Size(867, 309);
            this.dataGridView1.TabIndex = 12;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(31, 105);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(52, 20);
            this.label3.TabIndex = 10;
            this.label3.Text = "Buscar";
            // 
            // btnbuscar
            // 
            this.btnbuscar.BorderColor = System.Drawing.Color.DarkGreen;
            this.btnbuscar.BorderRadius = 15;
            this.btnbuscar.BorderThickness = 2;
            this.btnbuscar.DisabledState.BorderColor = System.Drawing.Color.DarkGray;
            this.btnbuscar.DisabledState.CustomBorderColor = System.Drawing.Color.DarkGray;
            this.btnbuscar.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(169)))), ((int)(((byte)(169)))), ((int)(((byte)(169)))));
            this.btnbuscar.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(141)))), ((int)(((byte)(141)))), ((int)(((byte)(141)))));
            this.btnbuscar.FillColor = System.Drawing.Color.White;
            this.btnbuscar.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.btnbuscar.ForeColor = System.Drawing.Color.DimGray;
            this.btnbuscar.Location = new System.Drawing.Point(686, 128);
            this.btnbuscar.Name = "btnbuscar";
            this.btnbuscar.Size = new System.Drawing.Size(144, 36);
            this.btnbuscar.TabIndex = 9;
            this.btnbuscar.Text = "Buscar";
            this.btnbuscar.Click += new System.EventHandler(this.btnbuscar_Click);
            // 
            // btneliminar
            // 
            this.btneliminar.BorderColor = System.Drawing.Color.DarkGreen;
            this.btneliminar.BorderRadius = 15;
            this.btneliminar.BorderThickness = 2;
            this.btneliminar.DisabledState.BorderColor = System.Drawing.Color.DarkGray;
            this.btneliminar.DisabledState.CustomBorderColor = System.Drawing.Color.DarkGray;
            this.btneliminar.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(169)))), ((int)(((byte)(169)))), ((int)(((byte)(169)))));
            this.btneliminar.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(141)))), ((int)(((byte)(141)))), ((int)(((byte)(141)))));
            this.btneliminar.FillColor = System.Drawing.Color.White;
            this.btneliminar.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.btneliminar.ForeColor = System.Drawing.Color.DimGray;
            this.btneliminar.Location = new System.Drawing.Point(516, 128);
            this.btneliminar.Name = "btneliminar";
            this.btneliminar.Size = new System.Drawing.Size(150, 36);
            this.btneliminar.TabIndex = 8;
            this.btneliminar.Text = "Eliminar";
            // 
            // btnagregar
            // 
            this.btnagregar.BorderColor = System.Drawing.Color.DarkGreen;
            this.btnagregar.BorderRadius = 15;
            this.btnagregar.BorderThickness = 2;
            this.btnagregar.DisabledState.BorderColor = System.Drawing.Color.DarkGray;
            this.btnagregar.DisabledState.CustomBorderColor = System.Drawing.Color.DarkGray;
            this.btnagregar.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(169)))), ((int)(((byte)(169)))), ((int)(((byte)(169)))));
            this.btnagregar.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(141)))), ((int)(((byte)(141)))), ((int)(((byte)(141)))));
            this.btnagregar.FillColor = System.Drawing.Color.White;
            this.btnagregar.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.btnagregar.ForeColor = System.Drawing.Color.DimGray;
            this.btnagregar.Location = new System.Drawing.Point(349, 128);
            this.btnagregar.Name = "btnagregar";
            this.btnagregar.Size = new System.Drawing.Size(146, 36);
            this.btnagregar.TabIndex = 7;
            this.btnagregar.Text = "Agregar";
            this.btnagregar.Click += new System.EventHandler(this.btnagregar_Click);
            // 
            // txtbuscar
            // 
            this.txtbuscar.BackColor = System.Drawing.Color.White;
            this.txtbuscar.BorderColor = System.Drawing.Color.White;
            this.txtbuscar.BorderRadius = 15;
            this.txtbuscar.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.txtbuscar.DefaultText = "";
            this.txtbuscar.DisabledState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(208)))), ((int)(((byte)(208)))));
            this.txtbuscar.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(226)))), ((int)(((byte)(226)))), ((int)(((byte)(226)))));
            this.txtbuscar.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtbuscar.DisabledState.PlaceholderForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtbuscar.FillColor = System.Drawing.Color.Gainsboro;
            this.txtbuscar.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtbuscar.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.txtbuscar.ForeColor = System.Drawing.Color.DimGray;
            this.txtbuscar.HoverState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtbuscar.Location = new System.Drawing.Point(35, 128);
            this.txtbuscar.Name = "txtbuscar";
            this.txtbuscar.PasswordChar = '\0';
            this.txtbuscar.PlaceholderText = "";
            this.txtbuscar.SelectedText = "";
            this.txtbuscar.Size = new System.Drawing.Size(308, 36);
            this.txtbuscar.TabIndex = 5;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(31, 30);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(58, 20);
            this.label2.TabIndex = 4;
            this.label2.Text = "Técnica";
            // 
            // cbtecnica
            // 
            this.cbtecnica.BackColor = System.Drawing.Color.White;
            this.cbtecnica.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.cbtecnica.BorderRadius = 9;
            this.cbtecnica.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.cbtecnica.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbtecnica.FocusedColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.cbtecnica.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.cbtecnica.Font = new System.Drawing.Font("Segoe UI", 11.25F);
            this.cbtecnica.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(68)))), ((int)(((byte)(88)))), ((int)(((byte)(112)))));
            this.cbtecnica.ItemHeight = 30;
            this.cbtecnica.Items.AddRange(new object[] {
            "Informática",
            "Gastronomía",
            "Electronica",
            "Electricidad",
            "Contabilidad",
            "Mercadeo"});
            this.cbtecnica.Location = new System.Drawing.Point(35, 53);
            this.cbtecnica.Name = "cbtecnica";
            this.cbtecnica.Size = new System.Drawing.Size(210, 36);
            this.cbtecnica.TabIndex = 1;
            // 
            // ID
            // 
            this.ID.HeaderText = "ID";
            this.ID.Name = "ID";
            this.ID.ReadOnly = true;
            // 
            // NOMBRE
            // 
            this.NOMBRE.HeaderText = "NOMBRE";
            this.NOMBRE.Name = "NOMBRE";
            this.NOMBRE.ReadOnly = true;
            // 
            // APELLIDO
            // 
            this.APELLIDO.HeaderText = "APELLIDO";
            this.APELLIDO.Name = "APELLIDO";
            this.APELLIDO.ReadOnly = true;
            // 
            // FECHA_NACIMIENTO
            // 
            this.FECHA_NACIMIENTO.HeaderText = "FECHA NACIMIENTO";
            this.FECHA_NACIMIENTO.Name = "FECHA_NACIMIENTO";
            this.FECHA_NACIMIENTO.ReadOnly = true;
            // 
            // FECHA_INGRESO
            // 
            this.FECHA_INGRESO.HeaderText = "FECHA INGRESO";
            this.FECHA_INGRESO.Name = "FECHA_INGRESO";
            this.FECHA_INGRESO.ReadOnly = true;
            // 
            // FECHA_SALIDA
            // 
            this.FECHA_SALIDA.HeaderText = "FECHA SALIDA";
            this.FECHA_SALIDA.Name = "FECHA_SALIDA";
            this.FECHA_SALIDA.ReadOnly = true;
            // 
            // CONTACTO
            // 
            this.CONTACTO.HeaderText = "CONTACTO";
            this.CONTACTO.Name = "CONTACTO";
            this.CONTACTO.ReadOnly = true;
            // 
            // TIPO_CONTACTO
            // 
            this.TIPO_CONTACTO.HeaderText = "TIPO CONTACTO";
            this.TIPO_CONTACTO.Name = "TIPO_CONTACTO";
            this.TIPO_CONTACTO.ReadOnly = true;
            // 
            // TECNICA
            // 
            this.TECNICA.HeaderText = "TECNICA";
            this.TECNICA.Name = "TECNICA";
            this.TECNICA.ReadOnly = true;
            // 
            // dBregistroDataSet
            // 
            this.dBregistroDataSet.DataSetName = "DBregistroDataSet";
            this.dBregistroDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // dBregistroDataSetBindingSource
            // 
            this.dBregistroDataSetBindingSource.DataSource = this.dBregistroDataSet;
            this.dBregistroDataSetBindingSource.Position = 0;
            // 
            // Estudiante
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.WhiteSmoke;
            this.ClientSize = new System.Drawing.Size(902, 500);
            this.Controls.Add(this.guna2Panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Estudiante";
            this.Text = "Estudiante";
            this.guna2Panel1.ResumeLayout(false);
            this.guna2Panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dBregistroDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dBregistroDataSetBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Guna.UI2.WinForms.Guna2Panel guna2Panel1;
        private Guna.UI2.WinForms.Guna2CircleButton btnexit;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label3;
        private Guna.UI2.WinForms.Guna2Button btnbuscar;
        private Guna.UI2.WinForms.Guna2Button btneliminar;
        private Guna.UI2.WinForms.Guna2Button btnagregar;
        private Guna.UI2.WinForms.Guna2TextBox txtbuscar;
        private System.Windows.Forms.Label label2;
        private Guna.UI2.WinForms.Guna2ComboBox cbtecnica;
        private System.Windows.Forms.DataGridViewTextBoxColumn ID;
        private System.Windows.Forms.DataGridViewTextBoxColumn NOMBRE;
        private System.Windows.Forms.DataGridViewTextBoxColumn APELLIDO;
        private System.Windows.Forms.DataGridViewTextBoxColumn FECHA_NACIMIENTO;
        private System.Windows.Forms.DataGridViewTextBoxColumn FECHA_INGRESO;
        private System.Windows.Forms.DataGridViewTextBoxColumn FECHA_SALIDA;
        private System.Windows.Forms.DataGridViewTextBoxColumn CONTACTO;
        private System.Windows.Forms.DataGridViewTextBoxColumn TIPO_CONTACTO;
        private System.Windows.Forms.DataGridViewTextBoxColumn TECNICA;
        private System.Windows.Forms.BindingSource dBregistroDataSetBindingSource;
        private DBregistroDataSet dBregistroDataSet;
    }
}