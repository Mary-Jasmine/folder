using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp3
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            new Form2().Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
            new Form4().Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Hide();
            new Form3().Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            this.Hide();
            new Form5().Show();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Hide();
            new Form6().Show();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            label2.Text = Form2.nme;
            label3.Text = Form2.id;
        }
    }
}
