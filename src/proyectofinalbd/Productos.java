/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinalbd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;
public class Productos extends javax.swing.JFrame {

    /**
     * Creates new form Productos
     */
    public Productos() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        nombrep = new javax.swing.JTextField();
        jSeparator1 = new javax.swing.JSeparator();
        preciop = new javax.swing.JTextField();
        jSeparator2 = new javax.swing.JSeparator();
        jPanel2 = new javax.swing.JPanel();
        agregarP = new javax.swing.JPanel();
        agregarB = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setLocationByPlatform(true);
        setResizable(false);

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel1.setText("Productos");
        jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(320, 30, 150, -1));

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel2.setText("Introduce el Precio del producto");
        jPanel1.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 270, -1, -1));

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel3.setText("Introduce el Nombre del producto");
        jPanel1.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 150, -1, -1));

        nombrep.setFont(new java.awt.Font("Tahoma", 2, 14)); // NOI18N
        nombrep.setToolTipText("");
        nombrep.setBorder(null);
        nombrep.setCursor(new java.awt.Cursor(java.awt.Cursor.TEXT_CURSOR));
        jPanel1.add(nombrep, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 200, 230, -1));

        jSeparator1.setForeground(new java.awt.Color(0, 0, 0));
        jPanel1.add(jSeparator1, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 220, 240, -1));

        preciop.setFont(new java.awt.Font("Tahoma", 2, 14)); // NOI18N
        preciop.setBorder(null);
        preciop.setCursor(new java.awt.Cursor(java.awt.Cursor.TEXT_CURSOR));
        jPanel1.add(preciop, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 320, 230, -1));

        jSeparator2.setForeground(new java.awt.Color(0, 0, 0));
        jPanel1.add(jSeparator2, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 340, 240, -1));

        jPanel2.setBackground(new java.awt.Color(12, 78, 140));

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 770, Short.MAX_VALUE)
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 50, Short.MAX_VALUE)
        );

        jPanel1.add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 20, 770, 50));

        agregarP.setBackground(new java.awt.Color(204, 241, 205));

        agregarB.setFont(new java.awt.Font("Roboto Black", 0, 24)); // NOI18N
        agregarB.setForeground(new java.awt.Color(255, 255, 255));
        agregarB.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        agregarB.setText("Agregar");
        agregarB.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        agregarB.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        agregarB.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                agregarBMouseClicked(evt);
            }
        });

        javax.swing.GroupLayout agregarPLayout = new javax.swing.GroupLayout(agregarP);
        agregarP.setLayout(agregarPLayout);
        agregarPLayout.setHorizontalGroup(
            agregarPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(agregarB, javax.swing.GroupLayout.DEFAULT_SIZE, 170, Short.MAX_VALUE)
        );
        agregarPLayout.setVerticalGroup(
            agregarPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(agregarB, javax.swing.GroupLayout.DEFAULT_SIZE, 100, Short.MAX_VALUE)
        );

        jPanel1.add(agregarP, new org.netbeans.lib.awtextra.AbsoluteConstraints(490, 200, 170, -1));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 488, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void agregarBMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_agregarBMouseClicked
        if (evt.getSource() == agregarB) {
            try {
                Agregar();
            } catch (ClassNotFoundException | SQLException ex) {
                ex.printStackTrace();
            }
        } 
    }//GEN-LAST:event_agregarBMouseClicked

    public void Agregar() throws ClassNotFoundException, SQLException{
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String connectionURL = "jdbc:sqlserver://DESKTOP-NT1UVST\\BDATOS:1433;databaseName=ProyectoFinalBD;user=usuarioSQL;password=fitz;";
        Connection con = DriverManager.getConnection(connectionURL);
        System.out.println("Nos conectamos");

        String nombre = String.valueOf(nombrep.getText());
        int precio = Integer.parseInt(preciop.getText());
        Statement instruccion = con.createStatement();
        instruccion.execute("exec dbo.productoAgregar " + nombre + "," + precio );
        JOptionPane.showMessageDialog(this, "Producto Agregado");
    }
    /**
     * @param args the command line arguments
     */
   
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel agregarB;
    private javax.swing.JPanel agregarP;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JTextField nombrep;
    private javax.swing.JTextField preciop;
    // End of variables declaration//GEN-END:variables
}
