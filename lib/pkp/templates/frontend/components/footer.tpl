{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}

	</div><!-- pkp_structure_main -->

	{* Sidebars *}
	{if empty($isFullWidth)}
		{call_hook|assign:"sidebarCode" name="Templates::Common::Sidebar"}
		{if $sidebarCode}
			<div class="pkp_structure_sidebar left" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
				{$sidebarCode}
			</div><!-- pkp_sidebar.left -->
		{/if}
	{/if}
</div>
<!-- pkp_structure_content -->

{*
<div id="pkp_content_footer" class="pkp_structure_footer_wrapper" role="contentinfo">

	<div class="pkp_structure_footer">

		{if $pageFooter}
			<div class="pkp_footer_content">
				{$pageFooter}
			</div>
		{/if}

		<div class="pkp_brand_footer" role="complementary" aria-label="{translate|escape key="about.aboutThisPublishingSystem"}">
			<a href="{url page="about" op="aboutThisPublishingSystem"}">
				<img alt="{translate key=$packageKey}" src="{$baseUrl}/{$brandImage}">
			</a>
			<a href="{$pkpLink}">
				<img alt="{translate key="common.publicKnowledgeProject"}" src="{$baseUrl}/lib/pkp/templates/images/pkp_brand.png">
			</a>
		</div>
	</div>

</div>
*}
<!-- pkp_structure_footer_wrapper -->

             <!-- UEB footer -->
<footer id="footer">
	
	<div class="section-1">
		
			<!-- sede bogota -->
			<div id="bogota">
				<h4 class="title">Universidad El Bosque</h4>
				
				<div class="legal">
					<div class="icn">
						<figure><img alt="Instalaciones Bogotá" src="{$baseUrl}/plugins/themes/default/images/svg/sede_bogota.svg"></figure>
					</div>
					<div class="info">
						<h4>Instalaciones Bogotá</h4>
						<p>Ediﬁcio Fundadores Av. Cra 9 No. 131 A - 02<br>Línea Gratuita 018000 113033<br>PBX (571) 6489000</p>
					</div>
				</div>
				
			</div>
			<!-- end sede bogota -->
			
			<!-- sede chia -->
			<div id="chia">
				
				<div class="legal">
					<div class="icn">
						
						<figure><img alt="Instalaciones Chía" src="{$baseUrl}/plugins/themes/default/images/svg/sede_chia.svg"></figure>
					</div>
					<div class="info">
						<h4>Instalaciones Chía</h4>
						<p>Autopista Norte, Km 14 via Tunja<br>Línea Gratuita 018000 113033<br>PBX (571) 6489000</p>
					</div>
				</div>
				
			</div>
			<!-- end sede chia -->
			
			<!-- admisiones -->
			<div id="admisiones">
				<h4>Admisiones</h4>
				
				<div class="legal">
					<div class="info">
						<p>6489000 Ext.1170<br>Línea Gratuita 018000 113033</p>
						<a href="mailto:admisiones@uelbosque.edu.co">admisiones@uelbosque.edu.co</a>
					</div>
				</div>
				
				<h4 class="title">Biblioteca</h4>
				
				<div class="legal">
					<div class="info">
						<p>PBX (571) 6489000 Ext.: 1247 - 1248<br>Av. Cra. 9 No. 131 A - 02, Bloque D, Piso 3<br>Horario: De lunes a viernes de 6:00 a.m. a 10:00 p.m. y sábados de 8:00 a.m. a 5:00 p.m. </p>
						<!--<a href="mailto:educon@unbosque.edu.co">educon@unbosque.edu.co</a>-->
					</div>
				</div>
				
			</div>
			<!-- end admisiones -->
			
			<!-- legal -->
			<div id="legal">
				<h4 class="title">Información Legal</h4>
				
				<div class="info">
					<div>
						<a href="/mod/book/view.php?id=106491" target="_blank">Uso del Campus Virtual Docentes</a>
						<a href="/mod/book/view.php?id=132100" target="_blank">Instructivos para Estudiantes</a>
						<a href="http://www.uelbosque.edu.co/institucional/documentos/politicas/educacion_virtual_distancia" target="_blank">Política de Educación Virtual y a Distancia</a>
						<a href="http://www.uelbosque.edu.co/institucional/documentos/politicas/uso_tic" target="_blank">Política de Uso de TIC</a>
						<a href="http://www.uelbosque.edu.co/sites/default/files/pdf/institucional/lineamientos/lineamientos_educacion_virtual_distancia.pdf" target="_blank">Lineamientos de la Educación Virtual y a Distancia</a>
						<a href="http://ubosquemoodle.unbosque.edu.co/diseno/sitio_moodle/Documents/Lineamiento-para-el-Desarrollo-de-Recursos-Educativos-en-Ambientes-Virtuales.pdf" target="_blank">Lineamiento para el Desarrollo de Recursos Educativos en Ambientes Virtuales</a>
						<a href="http://ubosquemoodle.unbosque.edu.co/diseno/sitio_moodle/Documents/Lineamientos-para-la-Innovacion-Tecno-pedagogica-en-la-Educacion-Virtual-y-a-Distancia.pdf" target="_blank">Lineamientos para la Innovación Tecno-pedagógica en la Educación Virtual y a Distancia</a>
						<a href="http://www.uelbosque.edu.co/institucional/documentos/estatutos-reglamentos/reglamento-estudiantil" target="_blank">Reglamento Estudiantil</a>
					</div>
				</div>
				
			</div>
			<!-- end legal -->
		
		</div>
		
		<div class="section-2"><p>Vigilada Mineducación. Personería Jurídica otorgada mediante resolución 11153 del 4 de Agosto de 1978.</p></div>
    
</footer>

</div><!-- pkp_structure_page -->

{*
{load_script context="frontend"}

{call_hook name="Templates::Common::Footer::PageFooter"}
*}

</body>
</html>
