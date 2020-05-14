<%inherit file="../home_comp.mako"/>

<%def name="sidebar()">
    <div class="well">

        <p>
            The data is being collected by Fabrício Ferraz Gerardi and Stanislav Reichert.
        </p>

        <p>
            For the source code of the web application, refer to the
            <a href="https://clld.org="clld project">clld framework</a>.
        </p>

    </div>


    <div class="well">

        <h3>How to cite TuLeD Online</h3>
        <p>
          It is important to cite the specific chapter that you are taking your information from,
          not just the general work
          "Tupían Lexical Database" (Ferraz Gerardi, F., Reichert, S., Blaschke, V., DeMattos, E., Gao, Z., Manolescu, M., and Wu, N. (2020)),
          unless you are citing data from more than 25 chapters simultaneously.
        </p>
        <p>

            Ferraz Gerardi, F., Reichert, S., Blaschke, V., DeMattos, E., Gao, Z., Manolescu, M., 
       and Wu, N. (2020) Tupían lexical database. ${h.cite_button(request, ctx)}
        </p>  
    </div>



</%def>

<h2>Welcome to the Tupían Lexical Database (TuLeD)</h2>

<!--
<p class="lead">
    Abstract.
</p>
-->
<p>
    TuLeD (Tupían Lexical Database) is being compiled within the <a href="https://uni-tuebingen.de/fakultaeten/philosophische-fakultaet/fachbereiche/neuphilologie/seminar-fuer-sprachwissenschaft/arbeitsbereiche/allg-sprachwissenschaft/projekte/crosslingference/"> CrossLingference </a> project. It offers a comprehensive
    list of concepts comprising both Swadesh and Tupían culturally relevant items for all branches of the language family. Semantic fields in the dataset are taken from <a https://wold.clld.org"> The World Loanword Database (WOLD) </a>.
    The data is presented in a unified encoding aimed at historical and computational linguists focusing on language evolution and language contact. </p>

  <p>  
    The current release version 0.7 includes 332 concepts across 66 languages, living and extinct, with a coverage ranging from 49% to 100%.
    </p>
    
        
    
   <h3>Terms of use</h3>
   <p>
    
The content of this web site is published under a Creative Commons Licence. We invite the community of users to think about further applications for the available data and look forward to your comments, feedback and questions.
    </p>
    
    
    
   <h3>Acknowledgements</h3>
   
   <p>
    TuLeD is supported by European Research Council (ERC) under the European Union’s Horizon 2020 research and innovation 
    programme (Grant agreement No. 834050).
    </p>
    
     <div class="well">
        <h3 style="color:red">Important!</h3>
        <p>
           This is a pre-release version (0.7) which contain errors. The TuLeD team is working on all aspects of the database to improve it and allow for the first official release.
        </p>  
        
        <p>
           A list of work done using TuLeD will be disclosed soon, including a paper describing the upcomming official relaease (version 1.0).
        </p> 
        
        
    </div>
