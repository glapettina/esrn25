<aside class="main-sidebar">

	<section class="sidebar">

		<ul class="sidebar-menu">

			<li class="active">
				<a href="inicio">

					<i class="fa fa-home"></i>
					<span>Inicio</span>

				</a>
			</li>

 			<?php

			if ($_SESSION["perfil"] == "Administrador" || $_SESSION["perfil"] == "Secretario" || $_SESSION["perfil"] == "Directivo") {

					echo '<li class="treeview">
			          <a href="#">
			            <i class="fa fa-graduation-cap"></i>
			            <span>Alumnos</span>
			            <span class="pull-right-container">
			              <i class="fa fa-angle-left pull-right"></i>
			            </span>
			          </a>
			          <ul class="treeview-menu">
			            <li><a href="primero"><i class="fa fa-circle-o"></i> Primer Año</a></li>
			            <li><a href="segundo"><i class="fa fa-circle-o"></i> Segundo Año</a></li>
			            <li><a href="tercero"><i class="fa fa-circle-o"></i> Tercer Año</a></li>
			            <li><a href="cuarto"><i class="fa fa-circle-o"></i> Cuarto Año</a></li>
			            <li><a href="quinto"><i class="fa fa-circle-o"></i> Quinto Año</a></li>
			          </ul>
		    	    </li>';


    			}

    		?> 

    		<li class="treeview">
            
                <a href="#">
                    <i class="fa fa-calendar" aria-hidden="true"></i> <span>Informes Cualitativos</span>
                    <!-- <span class="pull-right-container badge bg-blue"> -->
                      <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                  
                </a>
               
                <?php
                 
                  if ($_SESSION["perfil"] == "Administrador" || $_SESSION["perfil"] == "Secretario" || $_SESSION["perfil"] == "Directivo" || $_SESSION["perfil"] == "Preceptor") {
  

             echo'<li class="treeview">
                <a href="#">
                  <i class="fa fa-file-pdf-o" aria-hidden="true"></i> <span>Emisión de Informes</span>
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>

                  <ul class="treeview-menu">
                      <li><a href="primero"><i class="fa fa-circle-o"></i> 1er. Año</a></li>
                      <li><a href="segundo"><i class="fa fa-circle-o"></i> 2º Año</a></li>
                      <li><a href="tercero"><i class="fa fa-circle-o"></i> 3er. Año</a></li>
                      <li><a href="cuarto"><i class="fa fa-circle-o"></i> 4º Año</a></li>             
                      <li><a href="quinto"><i class="fa fa-circle-o"></i> 5º Año</a></li>             
                  </ul>           
            </li>';

            }

        ?> 

         <?php

        if ($_SESSION["perfil"] == "Administrador" || $_SESSION["perfil"] == "Directivo" || $_SESSION["perfil"] == "Docente Científica") {
           

 			echo'<li class="treeview">
                <a href="#">
                  <i class="fa fa-graduation-cap" aria-hidden="true"></i> <span>Científica y Tecnológica</span>
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>

               <ul class="treeview-menu">                
                  <li><a href="11tm-cientifica"><i class="fa fa-circle-o"></i> 1º 1ra. TM</a></li>
                  <li><a href="11tt-cientifica"><i class="fa fa-circle-o"></i> 1º 1ra. TT</a></li>
                  <li><a href="12tt-cientifica"><i class="fa fa-circle-o"></i> 1º 2da. TT</a></li>
                  <li><a href="21tm-cientifica"><i class="fa fa-circle-o"></i> 2º 1ra. TM</a></li>
                  <li><a href="21tt-cientifica"><i class="fa fa-circle-o"></i> 2º 1ra. TT</a></li>
                  <li><a href="31tm-cientifica"><i class="fa fa-circle-o"></i> 3º 1ra. TM</a></li>
                  <li><a href="31tt-cientifica"><i class="fa fa-circle-o"></i> 3º 1ra. TT</a></li>
                  <li><a href="32tt-cientifica"><i class="fa fa-circle-o"></i> 3º 2da. TT</a></li>
                  <li><a href="41tm-cientifica"><i class="fa fa-circle-o"></i> 4º 1ra. TM</a></li>             
                  <li><a href="42tm-cientifica"><i class="fa fa-circle-o"></i> 4º 2da. TM</a></li>             
                  <li><a href="41tt-cientifica"><i class="fa fa-circle-o"></i> 4º 1ra. TT</a></li>             
                  <li><a href="51tm-cientifica"><i class="fa fa-circle-o"></i> 5º 1ra. TM</a></li>             
                  <li><a href="51tt-cientifica"><i class="fa fa-circle-o"></i> 5º 1ra. TT</a></li>             
              </ul>

           
            </li>';

             }

        ?> 

         <?php

        if ($_SESSION["perfil"] == "Administrador" || $_SESSION["perfil"] == "Directivo" || $_SESSION["perfil"] == "Docente Sociales") {

            echo '<li class="treeview">
                <a href="#">
                  <i class="fa fa-graduation-cap" aria-hidden="true"></i> <span>Sociales y Humanidades</span>
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>

               <ul class="treeview-menu">
               <li><a href="11tm-cientifica"><i class="fa fa-circle-o"></i> 1º 1ra. TM</a></li>
                  <li><a href="11tt-sociales"><i class="fa fa-circle-o"></i> 1º 1ra. TT</a></li>
                  <li><a href="12tt-sociales"><i class="fa fa-circle-o"></i> 1º 2da. TT</a></li>
                  <li><a href="21tm-sociales"><i class="fa fa-circle-o"></i> 2º 1ra. TM</a></li>
                  <li><a href="21tt-sociales"><i class="fa fa-circle-o"></i> 2º 1ra. TT</a></li>
                  <li><a href="31tm-sociales"><i class="fa fa-circle-o"></i> 3º 1ra. TM</a></li>
                  <li><a href="31tt-sociales"><i class="fa fa-circle-o"></i> 3º 1ra. TT</a></li>
                  <li><a href="32tt-sociales"><i class="fa fa-circle-o"></i> 3º 2da. TT</a></li>
                  <li><a href="41tm-sociales"><i class="fa fa-circle-o"></i> 4º 1ra. TM</a></li>             
                  <li><a href="42tm-sociales"><i class="fa fa-circle-o"></i> 4º 2da. TM</a></li>             
                  <li><a href="41tt-sociales"><i class="fa fa-circle-o"></i> 4º 1ra. TT</a></li>             
                  <li><a href="51tm-sociales"><i class="fa fa-circle-o"></i> 5º 1ra. TM</a></li>             
                  <li><a href="51tt-sociales"><i class="fa fa-circle-o"></i> 5º 1ra. TT</a></li> 
              </ul>
           
            </li>';

            }

        ?> 

         <?php


        if ($_SESSION["perfil"] == "Administrador" || $_SESSION["perfil"] == "Directivo" || $_SESSION["perfil"] == "Docente Lengua y Literatura") {



            echo'<li class="treeview">
                <a href="#">
                  <i class="fa fa-graduation-cap" aria-hidden="true"></i> <span>Lengua y Literatura</span>
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>

               <ul class="treeview-menu">
                  <li><a href="11tm-literatura"><i class="fa fa-circle-o"></i> 1º 1ra. TM</a></li>
                  <li><a href="11tt-literatura"><i class="fa fa-circle-o"></i> 1º 1ra. TT</a></li>
                  <li><a href="12tt-literatura"><i class="fa fa-circle-o"></i> 1º 2da. TT</a></li>
                  <li><a href="21tm-literatura"><i class="fa fa-circle-o"></i> 2º 1ra. TM</a></li>
                  <li><a href="21tt-literatura"><i class="fa fa-circle-o"></i> 2º 1ra. TT</a></li>
                  <li><a href="31tm-literatura"><i class="fa fa-circle-o"></i> 3º 1ra. TM</a></li>
                  <li><a href="31tt-literatura"><i class="fa fa-circle-o"></i> 3º 1ra. TT</a></li>
                  <li><a href="32tt-literatura"><i class="fa fa-circle-o"></i> 3º 2da. TT</a></li>
                  <li><a href="41tm-literatura"><i class="fa fa-circle-o"></i> 4º 1ra. TM</a></li>             
                  <li><a href="42tm-literatura"><i class="fa fa-circle-o"></i> 4º 2da. TM</a></li>             
                  <li><a href="41tt-literatura"><i class="fa fa-circle-o"></i> 4º 1ra. TT</a></li>             
                  <li><a href="51tm-literatura"><i class="fa fa-circle-o"></i> 5º 1ra. TM</a></li>             
                  <li><a href="51tt-literatura"><i class="fa fa-circle-o"></i> 5º 1ra. TT</a></li> 
               </ul>

           
            </li>';

            }

        ?> 

         <?php

        if ($_SESSION["perfil"] == "Administrador" || $_SESSION["perfil"] == "Directivo" || $_SESSION["perfil"] == "Docente Matemática") {


            echo'<li class="treeview">
                <a href="#">
                  <i class="fa fa-graduation-cap" aria-hidden="true"></i> <span>Matemática</span>
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>

               <ul class="treeview-menu">
                  <li><a href="11tm-matematica"><i class="fa fa-circle-o"></i> 1º 1ra. TM</a></li>
                  <li><a href="11tt-matematica"><i class="fa fa-circle-o"></i> 1º 1ra. TT</a></li>
                  <li><a href="12tt-matematica"><i class="fa fa-circle-o"></i> 1º 2da. TT</a></li>
                  <li><a href="21tm-matematica"><i class="fa fa-circle-o"></i> 2º 1ra. TM</a></li>
                  <li><a href="21tt-matematica"><i class="fa fa-circle-o"></i> 2º 1ra. TT</a></li>
                  <li><a href="31tm-matematica"><i class="fa fa-circle-o"></i> 3º 1ra. TM</a></li>
                  <li><a href="31tt-matematica"><i class="fa fa-circle-o"></i> 3º 1ra. TT</a></li>
                  <li><a href="32tt-matematica"><i class="fa fa-circle-o"></i> 3º 2da. TT</a></li>
                  <li><a href="41tm-matematica"><i class="fa fa-circle-o"></i> 4º 1ra. TM</a></li>             
                  <li><a href="42tm-matematica"><i class="fa fa-circle-o"></i> 4º 2da. TM</a></li>             
                  <li><a href="41tt-matematica"><i class="fa fa-circle-o"></i> 4º 1ra. TT</a></li>             
                  <li><a href="51tm-matematica"><i class="fa fa-circle-o"></i> 5º 1ra. TM</a></li>             
                  <li><a href="51tt-matematica"><i class="fa fa-circle-o"></i> 5º 1ra. TT</a></li> 
               </ul>

           
            </li>';

            }

        ?> 

         <?php

        if ($_SESSION["perfil"] == "Administrador" || $_SESSION["perfil"] == "Directivo" || $_SESSION["perfil"] == "Docente Segundas Lenguas") {

            echo'<li class="treeview">
                <a href="#">
                  <i class="fa fa-graduation-cap" aria-hidden="true"></i> <span>Segundas Lenguas</span>
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>

               <ul class="treeview-menu">
                  <li><a href="11tm-ingles"><i class="fa fa-circle-o"></i> 1º 1ra. TM</a></li>
                  <li><a href="11tt-ingles"><i class="fa fa-circle-o"></i> 1º 1ra. TT</a></li>
                  <li><a href="12tt-ingles"><i class="fa fa-circle-o"></i> 1º 2da. TT</a></li>
                  <li><a href="21tm-ingles"><i class="fa fa-circle-o"></i> 2º 1ra. TM</a></li>
                  <li><a href="21tt-ingles"><i class="fa fa-circle-o"></i> 2º 1ra. TT</a></li>
                  <li><a href="31tm-ingles"><i class="fa fa-circle-o"></i> 3º 1ra. TM</a></li>
                  <li><a href="31tt-ingles"><i class="fa fa-circle-o"></i> 3º 1ra. TT</a></li>
                  <li><a href="32tt-ingles"><i class="fa fa-circle-o"></i> 3º 2da. TT</a></li>
                  <li><a href="41tm-ingles"><i class="fa fa-circle-o"></i> 4º 1ra. TM</a></li>             
                  <li><a href="42tm-ingles"><i class="fa fa-circle-o"></i> 4º 2da. TM</a></li>             
                  <li><a href="41tt-ingles"><i class="fa fa-circle-o"></i> 4º 1ra. TT</a></li>             
                  <li><a href="51tm-ingles"><i class="fa fa-circle-o"></i> 5º 1ra. TM</a></li>             
                  <li><a href="51tt-ingles"><i class="fa fa-circle-o"></i> 5º 1ra. TT</a></li> 
               </ul>

           
            </li>';

            }

        ?> 

         <?php

        if ($_SESSION["perfil"] == "Administrador" || $_SESSION["perfil"] == "Directivo" || $_SESSION["perfil"] == "Docente Educación Física") {


            echo'<li class="treeview">
                <a href="#">
                  <i class="fa fa-graduation-cap" aria-hidden="true"></i> <span>Educación Física</span>
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>

               <ul class="treeview-menu">
                  <li><a href="11tm-edfisica"><i class="fa fa-circle-o"></i> 1º 1ra. TM</a></li>
                  <li><a href="11tt-edfisica"><i class="fa fa-circle-o"></i> 1º 1ra. TT</a></li>
                  <li><a href="12tt-edfisica"><i class="fa fa-circle-o"></i> 1º 2da. TT</a></li>
                  <li><a href="21tm-edfisica"><i class="fa fa-circle-o"></i> 2º 1ra. TM</a></li>
                  <li><a href="21tt-edfisica"><i class="fa fa-circle-o"></i> 2º 1ra. TT</a></li>
                  <li><a href="31tm-edfisica"><i class="fa fa-circle-o"></i> 3º 1ra. TM</a></li>
                  <li><a href="31tt-edfisica"><i class="fa fa-circle-o"></i> 3º 1ra. TT</a></li>
                  <li><a href="32tt-edfisica"><i class="fa fa-circle-o"></i> 3º 2da. TT</a></li>
                  <li><a href="41tm-edfisica"><i class="fa fa-circle-o"></i> 4º 1ra. TM</a></li>             
                  <li><a href="42tm-edfisica"><i class="fa fa-circle-o"></i> 4º 2da. TM</a></li>             
                  <li><a href="41tt-edfisica"><i class="fa fa-circle-o"></i> 4º 1ra. TT</a></li>             
                  <li><a href="51tm-edfisica"><i class="fa fa-circle-o"></i> 5º 1ra. TM</a></li>             
                  <li><a href="51tt-edfisica"><i class="fa fa-circle-o"></i> 5º 1ra. TT</a></li> 
               </ul>           
            </li>';

            }

        ?> 

         <?php


        if ($_SESSION["perfil"] == "Administrador" || $_SESSION["perfil"] == "Directivo" || $_SESSION["perfil"] == "Docente Educación Artística") {


            echo'<li class="treeview">
                <a href="#">
                  <i class="fa fa-graduation-cap" aria-hidden="true"></i> <span>Lenguajes Artísticos</span>
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>

               <ul class="treeview-menu">
                  <li><a href="11tm-artistica"><i class="fa fa-circle-o"></i> 1º 1ra. TM</a></li>
                  <li><a href="11tt-artistica"><i class="fa fa-circle-o"></i> 1º 1ra. TT</a></li>
                  <li><a href="12tt-artistica"><i class="fa fa-circle-o"></i> 1º 2da. TT</a></li>
                  <li><a href="21tm-artistica"><i class="fa fa-circle-o"></i> 2º 1ra. TM</a></li>
                  <li><a href="21tt-artistica"><i class="fa fa-circle-o"></i> 2º 1ra. TT</a></li>
                  <li><a href="31tm-artistica"><i class="fa fa-circle-o"></i> 3º 1ra. TM</a></li>
                  <li><a href="31tt-artistica"><i class="fa fa-circle-o"></i> 3º 1ra. TT</a></li>
                  <li><a href="32tt-artistica"><i class="fa fa-circle-o"></i> 3º 2da. TT</a></li>
                  <li><a href="41tm-artistica"><i class="fa fa-circle-o"></i> 4º 1ra. TM</a></li>             
                  <li><a href="42tm-artistica"><i class="fa fa-circle-o"></i> 4º 2da. TM</a></li>             
                  <li><a href="41tt-artistica"><i class="fa fa-circle-o"></i> 4º 1ra. TT</a></li>             
              </ul>

           
            </li>';

               }

            ?> 

<?php

            if ($_SESSION["perfil"] == "Administrador" || $_SESSION["perfil"] == "Directivo" || $_SESSION["perfil"] == "Docente Modalidad Sociales") {


                  echo'<li class="treeview">
                      <a href="#">
                          <i class="fa fa-graduation-cap"></i>  C.O. Economía y Admin.
                          <i class="fa fa-angle-left pull-right"></i>
                      </a>                            

                        <ul class="treeview-menu">
                            <li class="treeview">
                                <a href="#">
                                    <i class="fa fa-circle-o"></i>
                                    3er. Año
                                    <i class="fa fa-angle-left pull-right"></i>
                                </a>

                                <ul class="treeview-menu">
                                    <li class="treeview">
                                      <li>
                                            <a href="3-principio-economia">
                                            <i class="fa fa-check-circle-o"></i>
                                                Ppio. Economía y Admin.                           
                                            </a>
                                      </li>  
                                  </li>
                              </li>
                          </ul>
                          </li>
                            <li class="treeview">
                                <a href="#">
                                    <i class="fa fa-circle-o"></i>
                                    4º Año
                                    <i class="fa fa-angle-left pull-right"></i>
                                </a>
                            
                            <ul class="treeview-menu">
                                <li class="treeview">
                                    <li>
                                          <a href="4-economia-economia">
                                          <i class="fa fa-check-circle-o"></i>
                                              Economía Soc. y Sol.                          
                                          </a>
                                    </li>
                                    <li>
                                          <a href="4-principio-economia">
                                          <i class="fa fa-check-circle-o"></i>
                                              Ppio. Economía y Admin.                          
                                          </a>
                                    </li>
                                    <li>
                                          <a href="4-pymes-economia">
                                          <i class="fa fa-check-circle-o"></i>
                                              Pymes y Cooperativas                          
                                          </a>
                                    </li>
                                </li>
                            </ul>
                            </li>
                            </li>
                            <li class="treeview">
                                  <a href="#">
                                      <i class="fa fa-circle-o"></i>
                                      5º Año
                                      <i class="fa fa-angle-left pull-right"></i>
                                  </a>
                            
                            <ul class="treeview-menu">
                                <li class="treeview">
                                      <li>
                                          <a href="5-pymes-economia">
                                          <i class="fa fa-check-circle-o"></i>
                                              Pymes y Cooperativas                          
                                          </a>
                                      </li>
                                     <li>
                                          <a href="5-problematicas-economia">
                                          <i class="fa fa-check-circle-o"></i>
                                              Probl. Económicas                           
                                          </a>
                                     </li>
                                     <li>
                                          <a href="5-taller-economia">
                                          <i class="fa fa-check-circle-o"></i>
                                              Prácticas Comunitarias                          
                                          </a>
                                      </li>                                                                               
                              </li>
                            </ul>
                            </li>

                      </ul>   
             </li>';

             }

            ?> 

            <?php

            if ($_SESSION["perfil"] == "Administrador" || $_SESSION["perfil"] == "Directivo" || $_SESSION["perfil"] == "Docente Modalidad Informática") {


                  echo'<li class="treeview">
                      <a href="#">
                          <i class="fa fa-graduation-cap"></i>  C.O. Informática
                          <i class="fa fa-angle-left pull-right"></i>
                      </a>                            

                        <ul class="treeview-menu">
                            <li class="treeview">
                                <a href="#">
                                    <i class="fa fa-circle-o"></i>
                                    3er. Año
                                    <i class="fa fa-angle-left pull-right"></i>
                                </a>

                                <ul class="treeview-menu">
                                    <li class="treeview">
                                      <li>
                                            <a href="3-sistemas-informatica">
                                            <i class="fa fa-check-circle-o"></i>
                                                Tec. Sist. Informáicos                          
                                            </a>
                                      </li>  
                                  </li>
                              </li>
                          </ul>
                          </li>
                            <li class="treeview">
                                <a href="#">
                                    <i class="fa fa-circle-o"></i>
                                    4º Año
                                    <i class="fa fa-angle-left pull-right"></i>
                                </a>
                            
                            <ul class="treeview-menu">
                                <li class="treeview">
                                    <li>
                                          <a href="4-aplicaciones-informatica">
                                          <i class="fa fa-check-circle-o"></i>
                                              Ap. Informáticas                          
                                          </a>
                                    </li>
                                    <li>
                                          <a href="4-conectividad-informatica">
                                          <i class="fa fa-check-circle-o"></i>
                                              Tec. de la Conectividad                          
                                          </a>
                                    </li>
                                </li>
                            </ul>
                            </li>
                            </li>
                            <li class="treeview">
                                  <a href="#">
                                      <i class="fa fa-circle-o"></i>
                                      5º Año
                                      <i class="fa fa-angle-left pull-right"></i>
                                  </a>
                            
                            <ul class="treeview-menu">
                                <li class="treeview">
                                      <li>
                                          <a href="5-software-informatica">
                                          <i class="fa fa-check-circle-o"></i>
                                              Tec. Software Libre                          
                                          </a>
                                      </li>
                                     <li>
                                          <a href="5-seguridad-informatica">
                                          <i class="fa fa-check-circle-o"></i>
                                              Seg. y Leg. Informática                          
                                          </a>
                                     </li>
                                     <li>
                                          <a href="5-tecnologico-informatica">
                                          <i class="fa fa-check-circle-o"></i>
                                              Poy. Tec. Informática                         
                                          </a>
                                      </li> 
                              </li>
                            </ul>
                            </li>

                      </ul>   
             </li>';

             }

            ?> 

            
                
        <?php


        if ($_SESSION["perfil"] == "Administrador" || $_SESSION["perfil"] == "Directivo" || $_SESSION["perfil"] == "REVE") {


            echo'<li class="treeview">
                <a href="#">
                  <i class="fa fa-graduation-cap" aria-hidden="true"></i> <span>Espacio EVE</span>
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>

               <ul class="treeview-menu">
                        <li><a href="11tm-eve"><i class="fa fa-circle-o"></i> 1º 1ra. TM</a></li>
                        <li><a href="11tt-eve"><i class="fa fa-circle-o"></i> 1º 1ra. TT</a></li>
                        <li><a href="12tt-eve"><i class="fa fa-circle-o"></i> 1º 2da. TT</a></li>
                        <li><a href="21tm-eve"><i class="fa fa-circle-o"></i> 2º 1ra. TM</a></li>
                        <li><a href="22tm-eve"><i class="fa fa-circle-o"></i> 2º 2da. TM</a></li>
                        <li><a href="21tt-eve"><i class="fa fa-circle-o"></i> 2º 1ra. TT</a></li>
                        <li><a href="22tt-eve"><i class="fa fa-circle-o"></i> 2º 2da. TT</a></li>
                        <li><a href="31tm-eve"><i class="fa fa-circle-o"></i> 3º 1ra. TM</a></li>
                        <li><a href="32tm-eve"><i class="fa fa-circle-o"></i> 3º 2da. TM</a></li>
                        <li><a href="31tt-eve"><i class="fa fa-circle-o"></i> 3º 1ra. TT</a></li>
                        <li><a href="32tt-eve"><i class="fa fa-circle-o"></i> 3º 2da. TT</a></li>
                        <li><a href="41tm-eve"><i class="fa fa-circle-o"></i> 4º 1ra. TM</a></li>             
                        <li><a href="42tm-eve"><i class="fa fa-circle-o"></i> 4º 2da. TM</a></li>             
                        <li><a href="41tt-eve"><i class="fa fa-circle-o"></i> 4º 1ra. TT</a></li>             
                        <li><a href="51tm-eve"><i class="fa fa-circle-o"></i> 5º 1ra. TM</a></li>             
                        <li><a href="52tm-eve"><i class="fa fa-circle-o"></i> 5º 2da. TM</a></li>             
                        <li><a href="51tt-eve"><i class="fa fa-circle-o"></i> 5º 1ra. TT</a></li>
               </ul>

           
            </li>';

               }

            ?>                



</ul>
</li>
</li>



</li>


     		<?php

	    		if ($_SESSION["perfil"] == "Administrador") {

		    	    echo '<li>
						<a href="cursos">

							<i class="fa fa-university"></i>
							<span>Cursos</span>

						</a>
					</li>';

			}

			?> 

			<?php

				if ($_SESSION["perfil"] == "Administrador") {

				echo '<li>
					<a href="usuarios">

						<i class="fa fa-users"></i>
						<span>Usuarios</span>

					</a>
				</li>';

		}

		?>

		

<!--     <?php

    if ($_SESSION["perfil"] == "Administrador") {

      echo '<li>
        <a href="periodos">

          <i class="fa fa-calendar-check-o"></i>
          <span>Períodos</span>

        </a>
      </li>';

    }

    ?> -->

     


		</ul>

	</section>

</aside>