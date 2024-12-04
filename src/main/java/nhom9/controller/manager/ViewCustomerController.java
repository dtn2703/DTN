package nhom9.controller.manager;

import nhom9.DAO.CustomerDB;
import nhom9.business.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet(value = "/viewcustomer")
public class ViewCustomerController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CustomerDB customerDB = new CustomerDB();

        List<Customer> customers = customerDB.selectCustomers();

        req.setAttribute("listP", customers);

        req.getRequestDispatcher("/viewcustomer.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
