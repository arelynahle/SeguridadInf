package Controller;

import Model.Nino;
import Model.Institucion;
import Model.Responsable;
import Model.Contacto;
import Model.Detalle;
import dataAccess.ConnectionDB;
import dataAccess.NinoDAO;
import java.io.*;
import java.sql.Connection;
import java.util.ArrayList;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/NinoServlet")
public class NinoServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        ConnectionDB connection = new ConnectionDB();
        Connection con = connection.getConnectionDB();
        String address = null;
        NinoDAO dao = new NinoDAO(con);
        int opcion = Integer.parseInt(request.getParameter("opcion"));

        if (opcion == 1)
        {
            //int id_nino = Integer.parseInt(request.getParameter("id_nino"));
            String nombre_nino = request.getParameter("nombre_nino");
            String ap_nino = request.getParameter("ap_nino");
            String am_nino = request.getParameter("am_nino");
            int edad_cron = Integer.parseInt(request.getParameter("edad_cron"));
            String modeloplayera_nino = request.getParameter("modeloplayera_nino");
            String tallaplayera_nino = request.getParameter("tallaplayera_nino");
            
            //Otros datos
            int id_inst = Integer.parseInt(request.getParameter("id_inst"));
            int id_res = Integer.parseInt(request.getParameter("id_res"));
            int id_con = Integer.parseInt(request.getParameter("id_con"));
            int id_det = Integer.parseInt(request.getParameter("id_det"));
            
            String discapacidad_det = request.getParameter("discapacidad_det");
            int edad_men_det = Integer.parseInt(request.getParameter("edad_men_det"));
            String escolaridad_det = request.getParameter("escolaridad_det");
            String tratamiento_det = request.getParameter("tratamiento_det");
            String silla_det = request.getParameter("silla_det");
            
            String hospital_con = request.getParameter("hospital_con");
            String parentesco_con = request.getParameter("parentesco_con");
            String nombre_con = request.getParameter("nombre_con");
            String tel_con = request.getParameter("tel_con");
            String cel_con = request.getParameter("cel_con");
            String of_con = request.getParameter("of_con");
           
            Detalle detalle = new Detalle (discapacidad_det, edad_men_det, escolaridad_det, tratamiento_det, silla_det);
            dao.addDet(detalle);
            request.setAttribute("detTemp",detalle);
            
            Contacto contacto = new Contacto (hospital_con, parentesco_con, nombre_con, tel_con, cel_con, of_con);
            dao.addCon(contacto);
            request.setAttribute("conTemp",contacto);
            
            
            Nino ninoNuevo = new Nino (nombre_nino, ap_nino, am_nino, edad_cron, modeloplayera_nino, tallaplayera_nino, id_inst, id_res, id_con, id_det);
            dao.addNino(ninoNuevo);
            request.setAttribute("ninoTemp", ninoNuevo);
            
            address = "displayNewMember.jsp";
        }
        else if (opcion==2)
         {
         int id_nino =Integer.parseInt(request.getParameter("id_nino"));
            Nino ninoNuevo = dao.searchNino(id_nino);
            if (ninoNuevo==null){
                address = "noregistrado.jsp";
            }
            else{
                address = "editarnino.jsp";
            }
            request.setAttribute("ninoTemp", ninoNuevo);
         }
           
         else if (opcion==3)
         {
         ArrayList<Nino> userListServelet=dao.getNinoList();
         request.setAttribute("ninoList", userListServelet);
         address="mininos.jsp";   
         }
        
         else if (opcion == 4)
        {
            int id_nino = Integer.parseInt(request.getParameter("id_nino"));
            String nombre_nino = request.getParameter("nombre_nino");
            String ap_nino = request.getParameter("ap_nino");
            String am_nino = request.getParameter("am_nino");
            int edad_cron = Integer.parseInt(request.getParameter("edad_cron"));
            String modeloplayera_nino = request.getParameter("modeloplayera_nino");
            String tallaplayera_nino = request.getParameter("tallaplayera_nino");
            
            //Otros datos
            int id_inst = Integer.parseInt(request.getParameter("id_inst"));
            int id_res = Integer.parseInt(request.getParameter("id_res"));
            //int id_con = Integer.parseInt(request.getParameter("id_con"));
            //int id_det = Integer.parseInt(request.getParameter("id_det"));
            
            int id_det = Integer.parseInt(request.getParameter("id_det"));
            String discapacidad_det = request.getParameter("discapacidad_det");
            int edad_men_det = Integer.parseInt(request.getParameter("edad_men_det"));
            String escolaridad_det = request.getParameter("escolaridad_det");
            String tratamiento_det = request.getParameter("tratamiento_det");
            String silla_det = request.getParameter("silla_det");
            
            int id_con = Integer.parseInt(request.getParameter("id_con"));
            String hospital_con = request.getParameter("hospital_con");
            String parentesco_con = request.getParameter("parentesco_con");
            String nombre_con = request.getParameter("nombre_con");
            String tel_con = request.getParameter("tel_con");
            String cel_con = request.getParameter("cel_con");
            String of_con = request.getParameter("of_con");
           
            Detalle detalle = new Detalle (id_det,discapacidad_det, edad_men_det, escolaridad_det, tratamiento_det, silla_det);
            dao.updateDet(detalle);
            request.setAttribute("detTemp",detalle);
            
            Contacto contacto = new Contacto (id_con, hospital_con, parentesco_con, nombre_con, tel_con, cel_con, of_con);
            dao.updateCon(contacto);
            request.setAttribute("conTemp",contacto);
            
            Nino ninoNuevo = new Nino  (id_nino,nombre_nino, ap_nino, am_nino, edad_cron, modeloplayera_nino, tallaplayera_nino, id_inst, id_res, id_con, id_det);
            dao.updateNino(ninoNuevo);
            request.setAttribute("ninoTemp", ninoNuevo);
            address = "displayEditedMember.jsp";
        }
        
        else if (opcion == 5)
        {
            int id_nino = Integer.parseInt(request.getParameter("id_nino"));
            dao.deleteNino(id_nino);
            //request.setAttribute("ninoTemp", ninoNuevo);
            address = "ninoborrado.jsp";
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(address);
        dispatcher.forward(request, response);
    }
}
