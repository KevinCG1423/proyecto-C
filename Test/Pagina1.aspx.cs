using System;
using System.Web.UI;

namespace Test
{
    public partial class Pagina1 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CalculateGrade(object sender, EventArgs e)
        {
            try
            {
                // Obtener los valores de las notas
                double eva1 = Convert.ToDouble(this.eva1.Text);
                double eva2 = Convert.ToDouble(this.eva2.Text);
                double eva3 = Convert.ToDouble(this.eva3.Text);
                double epe1 = Convert.ToDouble(this.epe1.Text);
                double epe2 = Convert.ToDouble(this.epe2.Text);
                double epe3 = Convert.ToDouble(this.epe3.Text);
                double finalExam = Convert.ToDouble(this.finalExam.Text);

                // Calcular la nota final con los porcentajes correspondientes
                double finalGrade = (eva1 * 0.07) + (eva2 * 0.07) + (eva3 * 0.14) +
                                    (epe1 * 0.07) + (epe2 * 0.14) + (epe3 * 0.21) +
                                    (finalExam * 0.30);

                // Mostrar el resultado
                this.resultLabel.Text = $"Nota Final: {finalGrade:F2}";
            }
            catch (Exception ex)
            {
                this.resultLabel.Text = "Error en el cálculo de la nota. Asegúrese de ingresar todos los valores correctamente.";
            }
        }
    }
}
