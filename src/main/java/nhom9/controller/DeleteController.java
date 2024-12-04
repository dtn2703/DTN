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

public class DeleteController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String gameName = req.getParameter("gameName");
        Game game = GameDB.selectGame(gameName);

        GameDB.delete(game);

        GameDB gameDB = new GameDB();
        CategoryDB categoryDB = new CategoryDB();
        List<Game> games = gameDB.selectGames();
        List<Category> categories = categoryDB.selectCategories();

        req.setAttribute("listP", games);
        req.setAttribute("listC", categories);

        req.getRequestDispatcher("/admin.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
