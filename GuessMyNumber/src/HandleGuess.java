import javax.jms.Session;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class HandleGuess extends javax.servlet.http.HttpServlet {
    public void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();

        HttpSession session=request.getSession();
        Integer integer=(Integer)session.getAttribute("saveNumber");
        int guessno =Integer.parseInt(request.getParameter("guessno"));
        int guesses =0;

        int realno= integer;
        System.out.println(realno);
        System.out.println(guessno);

        if (guessno>realno){
            session.setAttribute("message","The number is too big");
            System.out.println("big no");
            response.sendRedirect("inputno.jsp");
        }else if(guessno<realno){
            session.setAttribute("message","The number is too small");
            System.out.println("small no");
            response.sendRedirect("inputno.jsp");
        }else{
            session.setAttribute("message","guess rigth");
            System.out.println("Right");
            response.sendRedirect("inputno.jsp");
        }


    }


    public void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request,response);
    }
}
