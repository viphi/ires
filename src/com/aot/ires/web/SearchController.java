package com.aot.ires.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.aot.ires.domain.SearchResult;
import com.aot.ires.service.SearchService;

@Controller
public class SearchController {
	//get log4j handler
	private static final Logger logger = Logger.getLogger(SearchController.class);

	@Autowired
	private SearchService searchService;
	
	@RequestMapping(value="/search_form.html")
	public String searchForm(){
		return "searchForm";
	}
	
	@RequestMapping(value="/search_results.html")
	public ModelAndView searchResults(HttpServletRequest request, SearchCommand searchCommand){
		//log it via log4j
		if(logger.isDebugEnabled()){
			logger.debug(searchCommand.getCheckin());
		}
		List<SearchResult> searchResults = searchService.doSearch(searchCommand);
		request.getSession().setAttribute("searchResults", searchResults);
		return new ModelAndView("searchResults");
	}
}
