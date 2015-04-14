package dataAccess;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Model.Nino;
import Model.Responsable;
import Model.Institucion;
import Model.Contacto;
import Model.Detalle;
import static com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Int;

public class NinoDAO {

    private PreparedStatement statement;
    private Connection connection;

    public NinoDAO() {

    }

    public NinoDAO(Connection connection) {
        this.connection = connection;
        try {
            PreparedStatement s = connection.prepareStatement("set search_path=perfilesusuarios,pg_catalog,public");
            s.execute();
        } catch (SQLException sqle) {
            sqle.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }

    public void addNino(Nino nino) {
        try {
            statement = connection.prepareStatement("INSERT INTO nino (nombre_nino,ap_nino,am_nino,edad_cron,modeloplayera_nino,tallaplayera_nino,id_inst,id_res,id_con,id_det) VALUES(?,?,?,?,?,?,?,?,?,?)");
            synchronized (statement) {
                statement.setString(1, nino.getnombre_nino());
                statement.setString(2, nino.getap_nino());
                statement.setString(3, nino.getam_nino());
                statement.setInt(4, nino.getedad_cron());
                statement.setString(5, nino.getmodeloplayera_nino());
                statement.setString(6, nino.gettallaplayera_nino());
                statement.setInt(7, nino.getid_inst());
                statement.setInt(8, nino.getid_res());
                statement.setInt(9, nino.getid_con());
                statement.setInt(10, nino.getid_det());

                statement.executeUpdate();
            }
            statement.close();
        } catch (SQLException sqle) {
            System.out.println(sqle);
        }

    }

    public void updateNino(Nino nino) {
        try {
            statement = connection.prepareStatement("UPDATE nino SET nombre_nino=? ,ap_nino=? ,am_nino=? ,edad_cron=? ,modeloplayera_nino=? ,tallaplayera_nino=?, id_inst=?, id_res=?, id_con=?, id_det=? WHERE id_nino =?");
            synchronized (statement) {
                statement.setString(1, nino.getnombre_nino());
                statement.setString(2, nino.getap_nino());
                statement.setString(3, nino.getam_nino());
                statement.setInt(4, nino.getedad_cron());
                statement.setString(5, nino.getmodeloplayera_nino());
                statement.setString(6, nino.gettallaplayera_nino());
                statement.setInt(7, nino.getid_inst());
                statement.setInt(8, nino.getid_res());
                statement.setInt(9, nino.getid_con());
                statement.setInt(10, nino.getid_det());
                statement.setInt(11, nino.getid_nino());
                statement.executeUpdate();
            }
            statement.close();
        } catch (SQLException sqle) {
            System.out.println(sqle);
        }
    }

    
    public void updateDet(Detalle detalle) {
        try {
            statement = connection.prepareStatement("UPDATE detalle SET discapacidad_det=? ,edad_men_det=? ,escolaridad_det=? ,tratamiento_det=? ,silla_det=? WHERE id_det =?");
            synchronized (statement) {
                statement.setString(1, detalle.getdiscapacidad_det());
                statement.setInt(2, detalle.getedad_men_det());
                statement.setString(3, detalle.getescolaridad_det());
                statement.setString(4, detalle.gettratamiento_det());
                statement.setString(5, detalle.getsilla_det());
                statement.setInt(6,detalle.getid_det());
                statement.executeUpdate();
            }
            statement.close();
        } catch (SQLException sqle) {
            System.out.println(sqle);
        }
    }
    
    
    public void updateCon(Contacto contacto) {
        try {
            statement = connection.prepareStatement("UPDATE contacto SET hospital_con=? ,parentesco_con=? ,nombre_con=? ,tel_con=? ,cel_con=?,of_con=? WHERE id_con =?");
            synchronized (statement) {
                statement.setString(1, contacto.gethospital_con());
                statement.setString(2, contacto.getparentesco_con());
                statement.setString(3, contacto.getnombre_con());
                statement.setString(4, contacto.gettel_con());
                statement.setString(5, contacto.getcel_con());
                statement.setString(6,contacto.getof_con());
                statement.setInt(7,contacto.getid_con());
                statement.executeUpdate();
            }
            statement.close();
        } catch (SQLException sqle) {
            System.out.println(sqle);
        }
    }
    
    public Nino deleteNino(int id_nino) {
        Nino nino = null;
        try {
            statement = connection.prepareStatement("DELETE FROM nino WHERE id_nino = ?");
           statement.setInt(1, id_nino);
            // obtain user
            synchronized (statement) {
                ResultSet results = statement.executeQuery();
		            // get rows data{

                while (results.next()) {
                    nino = new Nino();
                    nino.setid_nino(results.getInt("id_nino"));
                    nino.setnombre_nino(results.getString("nombre_nino"));
                    nino.setap_nino(results.getString("ap_nino"));
                    nino.setam_nino(results.getString("am_nino"));
                    nino.setedad_cron(results.getInt("edad_cron"));
                    nino.setmodeloplayera_nino(results.getString("modeloplayera_nino"));
                    nino.settallaplayera_nino(results.getString("tallaplayera_nino"));
                    nino.setid_inst(results.getInt("id_inst"));
                    nino.setid_res(results.getInt("id_res"));
                    nino.setid_con(results.getInt("id_con"));
                    nino.setid_det(results.getInt("id_det"));
                }
            }
            statement.close();
        } catch (SQLException sqle) {
            System.out.println(sqle);
        }
        return nino;
    }

    public void addDet(Detalle detalle) {
        try {
            statement = connection.prepareStatement("INSERT INTO detalle (discapacidad_det,edad_men_det,escolaridad_det,tratamiento_det,silla_det) VALUES(?,?,?,?,?)");
            synchronized (statement) {
                statement.setString(1, detalle.getdiscapacidad_det());
                statement.setInt(2, detalle.getedad_men_det());
                statement.setString(3, detalle.getescolaridad_det());
                statement.setString(4, detalle.gettratamiento_det());
                statement.setString(5, detalle.getsilla_det());
                statement.executeUpdate();
            }
            statement.close();
        } catch (SQLException sqle) {
            System.out.println(sqle);
        }
    }
    
    public void addCon(Contacto contacto) {
        try {
            statement = connection.prepareStatement("INSERT INTO contacto (hospital_con, parentesco_con, nombre_con, tel_con, cel_con, of_con) VALUES(?,?,?,?,?,?)");
            synchronized (statement) {
                statement.setString(1, contacto.gethospital_con());
                statement.setString(2, contacto.getparentesco_con());
                statement.setString(3, contacto.getnombre_con());
                statement.setString(4, contacto.gettel_con());
                statement.setString(5, contacto.getcel_con());
                statement.setString(6, contacto.getof_con());
                statement.executeUpdate();
            }
            statement.close();
        } catch (SQLException sqle) {
            System.out.println(sqle);
        }

    }

    public ArrayList<Nino> getNinoList() {
        ArrayList<Nino> ninoList = new ArrayList<Nino>();
        try {
            statement = connection.prepareStatement("SELECT * FROM nino");
            // obtain list of users
            synchronized (statement) {
                ResultSet results = statement.executeQuery();
                // get rows data{
                while (results.next()) {
                    Nino nino = new Nino();
                    nino.setid_nino(results.getInt("id_nino"));
                    nino.setnombre_nino(results.getString("nombre_nino"));
                    nino.setap_nino(results.getString("ap_nino"));
                    nino.setam_nino(results.getString("am_nino"));
                    nino.setedad_cron(results.getInt("edad_cron"));
                    nino.setmodeloplayera_nino(results.getString("modeloplayera_nino"));
                    nino.settallaplayera_nino(results.getString("tallaplayera_nino"));
                    nino.setid_inst(results.getInt("id_inst"));
                     nino.setid_res(results.getInt("id_res"));
                     nino.setid_con(results.getInt("id_con"));
                     nino.setid_det(results.getInt("id_det"));
                    ninoList.add(nino);
                }
            }
            statement.close();
        } catch (SQLException sqle) {
            System.out.println(sqle);
        }
        return ninoList;
    }

    public Nino searchNino(int id_nino) {
        Nino nino = null;
        try {
            statement = connection.prepareStatement("SELECT * FROM nino WHERE id_nino = ?");
            statement.setInt(1, id_nino);
            // obtain user
            synchronized (statement) {
                ResultSet results = statement.executeQuery();
		            // get rows data{

                while (results.next()) {
                    nino = new Nino();
                    nino.setid_nino(results.getInt("id_nino"));
                    nino.setnombre_nino(results.getString("nombre_nino"));
                    nino.setap_nino(results.getString("ap_nino"));
                    nino.setam_nino(results.getString("am_nino"));
                    nino.setedad_cron(results.getInt("edad_cron"));
                    nino.setmodeloplayera_nino(results.getString("modeloplayera_nino"));
                    nino.settallaplayera_nino(results.getString("tallaplayera_nino"));
                    nino.setid_inst(results.getInt("id_inst"));
                    nino.setid_res(results.getInt("id_res"));
                    nino.setid_con(results.getInt("id_con"));
                    nino.setid_det(results.getInt("id_det"));
                }
            }
            statement.close();
        } catch (SQLException sqle) {
            System.out.println(sqle);
        }
        return nino;
    }
}
