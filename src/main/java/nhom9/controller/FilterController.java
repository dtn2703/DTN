package nhom9.controller;

import nhom9.DAO.CategoryDB;
import nhom9.DAO.GameDB;
import nhom9.business.Category;
import nhom9.business.Game;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class FilterController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String categoryName = req.getParameter("checkedItem");

        CategoryDB categoryDB = new CategoryDB();

        List<Category> categories = categoryDB.selectCategories();
        List<Game> games = new GameDB().selectGamesByCategory(categoryName);

        req.setAttribute("listP", games);
        req.setAttribute("listC", categories);

        req.getRequestDispatcher("/featured.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
