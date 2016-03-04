package ar.com.edu.um.web;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("/buscadornegocios/")
@Controller
public class ControladorBuscadorNegocios {

    @RequestMapping(method = RequestMethod.POST, value = "{id}")
    public void post(@PathVariable Long id, ModelMap modelMap, HttpServletRequest request, HttpServletResponse response) {
    }

    @RequestMapping
    public String index() {
        return "buscadornegocios/index";
    }



	@RequestMapping(value = "/formulario", method = RequestMethod.GET, produces = "text/html")
	public String verTablon (Model uiModel, HttpServletRequest request, HttpServletResponse response) {
				
		
		return "buscadornegocios/forumulario";	
	
	}
	
	

}