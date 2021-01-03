/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Config.GenerarSerie;
import Modelo.Cliente;
import Modelo.ClienteDAO;
import Modelo.Empleado;
import Modelo.EmpleadoDAO;
import Modelo.Producto;
import Modelo.ProductoDAO;
import Modelo.Venta;
import Modelo.VentaDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alvarez
 */
public class Controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    Empleado em = new Empleado();
    Producto pr = new Producto();
    Cliente cl = new Cliente();
    EmpleadoDAO edao = new EmpleadoDAO();
    ProductoDAO pdao = new ProductoDAO();
    ClienteDAO cdao = new ClienteDAO();
    int ide;
    int idp;
    int idc;
    Venta v = new Venta();
    List<Venta> lista = new ArrayList<>();
    int item;
    int cod;
    String descripcion;
    double precio;
    int cant;
    double subtotal;
    double totalPagar;
    String numeroserie;
    VentaDAO vdao = new VentaDAO();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion=request.getParameter("accion");
        if (menu.equals("Principal")) {
            request.getRequestDispatcher("Principal.jsp").forward(request, response);
        }
        if (menu.equals("Home")) {
            request.getRequestDispatcher("Home.jsp").forward(request, response);
        }
        if (menu.equals("Empleado")) {
            switch (accion) {
                case "Listar":
                    List lista = edao.listar();
                    request.setAttribute("empleados", lista);
                    break;
                case "Agregar":
                    String dni=request.getParameter("txtDni");
                    String nom=request.getParameter("txtNombres");
                    String tel=request.getParameter("txtTelefono");
                    String est=request.getParameter("txtEstado");
                    String user=request.getParameter("txtUsuario");
                    em.setDni(dni);
                    em.setNom(nom);
                    em.setTel(tel);
                    em.setEstado(est);
                    em.setUser(user);
                    edao.agregar(em);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    ide = Integer.parseInt(request.getParameter("id"));
                    Empleado e = edao.listarId(ide);
                    request.setAttribute("empleado", e);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String dniUpdate = request.getParameter("txtDni");
                    String nomUpdate = request.getParameter("txtNombres");
                    String telUpdate = request.getParameter("txtTelefono");
                    String estUpdate = request.getParameter("txtEstado");
                    String userUpdate = request.getParameter("txtUsuario");
                    em.setDni(dniUpdate);
                    em.setNom(nomUpdate);
                    em.setTel(telUpdate);
                    em.setEstado(estUpdate);
                    em.setUser(userUpdate);
                    em.setId(ide);
                    edao.actualizar(em);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    ide = Integer.parseInt(request.getParameter("id"));
                    edao.eliminar(ide);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Empleado.jsp").forward(request, response);
        }
        if (menu.equals("Cliente")) {
            switch (accion) {
                case "Listar":
                    List lista = cdao.listar();
                    request.setAttribute("clientes", lista);
                    break;
                case "Agregar":
                    String dni=request.getParameter("txtDni");
                    String nom=request.getParameter("txtNombres");
                    String dir=request.getParameter("txtDireccion");
                    String est=request.getParameter("txtEstado");
                    cl.setDni(dni);
                    cl.setNom(nom);
                    cl.setDireccion(dir);
                    cl.setEstado(est);
                    cdao.agregar(cl);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    idc = Integer.parseInt(request.getParameter("id"));
                    Cliente c = cdao.listarId(idc);
                    request.setAttribute("cliente", c);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String dniUpdate = request.getParameter("txtDni");
                    String nomUpdate = request.getParameter("txtNombres");
                    String direcUpdate = request.getParameter("txtDireccion");
                    String estUpdate = request.getParameter("txtEstado");
                    cl.setDni(dniUpdate);
                    cl.setNom(nomUpdate);
                    cl.setDireccion(direcUpdate);
                    cl.setEstado(estUpdate);
                    cl.setId(idc);
                    cdao.actualizar(cl);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    idc = Integer.parseInt(request.getParameter("id"));
                    cdao.eliminar(idc);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Clientes.jsp").forward(request, response);
        }
        if (menu.equals("Producto")) {
            switch (accion) {
                case "Listar":
                    List lista = pdao.listar();
                    request.setAttribute("productos", lista);
                    break;
                case "Agregar":
                    String nom=request.getParameter("txtNom");
                    Double precio=Double.parseDouble(request.getParameter("txtPrecio"));
                    int stock=Integer.parseInt(request.getParameter("txtStock"));
                    String est=request.getParameter("txtEstado");
                    pr.setNom(nom);
                    pr.setPrecio(precio);
                    pr.setStock(stock);
                    pr.setEstado(est);
                    pdao.agregar(pr);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    idp = Integer.parseInt(request.getParameter("id"));
                    Producto p = pdao.listarId(idp);
                    request.setAttribute("producto", p);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String nomUpdate = request.getParameter("txtNom");
                    Double precioUpdate = Double.parseDouble(request.getParameter("txtPrecio"));
                    int stockUpdate = Integer.parseInt(request.getParameter("txtStock"));
                    String estUpdate = request.getParameter("txtEstado");
                    pr.setNom(nomUpdate);
                    pr.setPrecio(precioUpdate);
                    pr.setStock(stockUpdate);
                    pr.setEstado(estUpdate);
                    pr.setId(idp);
                    pdao.actualizar(pr);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    idp = Integer.parseInt(request.getParameter("id"));
                    pdao.eliminar(idp);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Producto.jsp").forward(request, response);
        }
        if (menu.equals("NuevaVenta")) {
            switch (accion) {
                case "BuscarCliente":
                    String dni = request.getParameter("codigocliente");
                    cl.setDni(dni);
                    cl = cdao.buscar(dni);
                    request.setAttribute("c", cl);
                    break;
                case "BuscarProducto":
                    int id = Integer.parseInt(request.getParameter("codigoproducto"));
                    pr = pdao.listarId(id);
                    request.setAttribute("c", cl);
                    request.setAttribute("producto", pr);
                    request.setAttribute("lista", lista);
                    request.setAttribute("totalpagar", totalPagar);
                    request.setAttribute("nserie", numeroserie);
                    break;
                case "Agregar":
                    request.setAttribute("nserie", numeroserie);
                    request.setAttribute("c", cl);
                    totalPagar = 0.0;
                    item = item + 1;
                    cod = pr.getId();
                    descripcion = request.getParameter("nombreproducto");
                    precio = Double.parseDouble(request.getParameter("precio"));
                    cant = Integer.parseInt(request.getParameter("cant"));
                    subtotal = precio * cant;
                    v=new Venta();
                    v.setItem(item);
                    v.setIdproducto(cod);
                    v.setDescripcionp(descripcion);
                    v.setPrecio(precio);
                    v.setCantidad(cant);
                    v.setSubtotal(subtotal);
                    lista.add(v);
                    for (int i = 0; i < lista.size(); i++) {
                        totalPagar = totalPagar + lista.get(i).getSubtotal();
                    }
                    request.setAttribute("totalpagar", totalPagar);
                    request.setAttribute("lista", lista);
                    break;
                case "GenerarVenta":
                    for (int i = 0; i < lista.size(); i++) {
                        //Producto p = new Producto();
                        int cantidad = lista.get(i).getCantidad();
                        int idproducto = lista.get(i).getIdproducto();
                        ProductoDAO aO = new ProductoDAO();
                        pr = aO.buscar(idproducto);
                        int sac = pr.getStock() - cantidad;
                        aO.actualizarstock(idproducto, sac);
                     }
                    
                    v.setIdcliente(cl.getId());
                    v.setIdempleado(8);
                    v.setNumserie(numeroserie);
                    v.setFecha("2021-01-02");
                    v.setMonto(totalPagar);
                    v.setEstado("1");
                    vdao.guardarVenta(v);
                    int idv = Integer.parseInt(vdao.Idventas());
                    for (int i = 0; i < lista.size(); i++) {
                        v = new Venta();
                        v.setId(idv);
                        v.setIdproducto(lista.get(i).getIdproducto());
                        v.setCantidad(lista.get(i).getCantidad());
                        v.setPrecio(lista.get(i).getPrecio());
                        vdao.guardarDetalleventas(v);
                    }
                    break;
                default:
                    numeroserie = vdao.GenerarSerie();
                    if (numeroserie==null) {
                       numeroserie="00000001";
                       request.setAttribute("nserie", numeroserie);
                    }else {
                        int incrementar = Integer.parseInt(numeroserie);
                        GenerarSerie gs = new GenerarSerie();
                        numeroserie = gs.NumeroSerie(incrementar);
                        request.setAttribute("nserie", numeroserie);
                    }
                    request.getRequestDispatcher("RegistrarVenta.jsp").forward(request, response);
                    break;
            }
            request.getRequestDispatcher("RegistrarVenta.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
