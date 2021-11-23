
package com.pagina.crud.desarrollo.controller;

import com.pagina.crud.desarrollo.config.Conexion;
import com.pagina.crud.desarrollo.entity.Persona;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controlador {
    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    int id;
    
    @RequestMapping("index.htm")
    public ModelAndView mostrarPersonas(){
        String sql = "select * from personas";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("index");
        return mav;
    }
    
    @RequestMapping(value="create.htm",method=RequestMethod.GET)
   public ModelAndView insertarPersona(){
       mav.addObject(new Persona());
       mav.setViewName("create");
       return mav;
   }
   
     @RequestMapping(value="create.htm",method=RequestMethod.POST)
   public ModelAndView insertarPersona(Persona p){
        String sql = "insert into personas(dni,nombre) values(?,?)";
        this.jdbcTemplate.update(sql,p.getDni(),p.getNombre());
       return new ModelAndView("redirect:/index.htm");
   }
   
   @RequestMapping(value="show.htm", method=RequestMethod.GET)
   public ModelAndView mostrarPersona(HttpServletRequest request){
       id = Integer.parseInt(request.getParameter("id"));
       String sql = "select * from personas where id="+id;
      List datos = this.jdbcTemplate.queryForList(sql);
      mav.addObject("lista", datos);
      mav.setViewName("show");
      return mav;
   }
   
   @RequestMapping(value="edit.htm", method=RequestMethod.GET)
   public ModelAndView editarPersona(HttpServletRequest request){
       id = Integer.parseInt(request.getParameter("id"));
       String sql = "select * from personas where id="+id;
      List datos = this.jdbcTemplate.queryForList(sql);
      mav.addObject("lista", datos);
      mav.setViewName("edit");
      return mav;
   }
   
    @RequestMapping(value="edit.htm", method=RequestMethod.POST)
   public ModelAndView editarPersona(Persona p, HttpServletRequest request){
       id = Integer.parseInt(request.getParameter("id"));
       String sql = "update personas set dni=?,nombre=? where id="+id;
       this.jdbcTemplate.update(sql,p.getDni(),p.getNombre());
       return new ModelAndView("redirect:/index.htm");
   }
   
     @RequestMapping("destroy.htm")
   public ModelAndView eliminarPersona(HttpServletRequest request){
       id = Integer.parseInt(request.getParameter("id"));
       String sql = "delete from personas where id="+id;
       this.jdbcTemplate.update(sql);
       return new ModelAndView("redirect:index.htm");
   }
}
