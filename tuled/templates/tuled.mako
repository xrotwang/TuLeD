<%inherit file="app.mako"/>

##
## edit contents from here...
##

<%block name="title">Tupían Lexical Database</%block>

<%block name="brand">
    <a href="${request.resource_url(request.dataset)}" class="brand">TuLeD</a>
</%block>

<%block name="footer">

             <div class="row-fluid" style="padding-top: 15px; border-top: 1px solid black;">
</div>
            <div class="span3">
                    <a href="http://uni-tuebingen.de"
                          title="University of Tübingen">
                           <img width="240" src="${request.static_url('tuled:static/Tuebingen_logo.png')}" />
                            
                    </a>
                    
              </div>
                     
                   
                    
             
              
<div class="span4" style="text-align: center;">
      <% license_icon = h.format_license_icon_url(request) %>
                            % if license_icon:
                            <a rel="license" href="${request.dataset.license}">
                                <img alt="License" style="border-width:0" src="${license_icon}" />
                            </a>
                            
                            <br/>
                            
                            % endif
			${request.dataset.formatted_name()}
			is edited by
			<span xmlns:cc="http://creativecommons.org/ns#" property="cc:attributionName" rel="cc:attributionURL">
				Fabrício Ferraz Gerardi and Stanislav Reichert
			</span>
                            
                           and is licensed under a
                            <a rel="license" href="${request.dataset.license}">${request.dataset.jsondata.get('license_name', request.dataset.license)}  </a>.
   
                                                     
 </div>
 
          <div class="span1 hidden-phone" style="margin-top: 1px;">
			<a href="https://erc.europa.eu/" title="European Research Council">
				<img src="${request.static_url('tuled:static/erc_logo.png')}" />
			</a>
		            </div>
              
                            
</%block>



##
## ...to here
##

${next.body()}