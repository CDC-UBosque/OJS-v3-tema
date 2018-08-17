{**
 * templates/frontend/pages/indexSite.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Site index.
 *
 *}
{include file="frontend/components/header.tpl"}

<div class="page_index_site">

	{if $about}
		<div class="about_site">
			{$about|nl2br}
		</div>
	{/if}

	<div class="journals">
		<h1>
			{translate key="journal.journals"}
		</h1>
		{if !count($journals)}
			{translate key="site.noJournals"}
		{else}
		
		
		<div class="">
		  <div class='card-columns'>
			  
			  {iterate from=journals item=journal}
					{capture assign="url"}{url journal=$journal->getPath()}{/capture}
					{assign var="thumb" value=$journal->getLocalizedSetting('journalThumbnail')}
					{assign var="description" value=$journal->getLocalizedDescription()}
					
		    <div class='card'>
			    
		      <div {if $thumb} class="has_thumb"{/if}>
			      {if $thumb}
					{assign var="altText" value=$journal->getLocalizedSetting('journalThumbnailAltText')}
					<div class="thumb">
						<a href="{$url|escape}">
							<img src="{$journalFilesPath}{$journal->getId()}/{$thumb.uploadName|escape:"url"}"{if $altText} alt="{$altText|escape}"{/if}>
						</a>
					</div>
				{/if}
		      </div>
		      
		      <div class="body">
					<h3>
						<a href="{$url|escape}" rel="bookmark">
							{$journal->getLocalizedName()}
						</a>
					</h3>
					{if $description}
						<article class="description">
							{$description|nl2br}
						</article>
						
					{/if}
					<ul class="links">
						<li class="view">
							<a href="{$url|escape}">
								{translate key="site.journalView"}
							</a>
						</li>
						<li class="current">
							<a href="{url|escape journal=$journal->getPath() page="issue" op="current"}">
								{translate key="site.journalCurrent"}
							</a>
						</li>
					</ul>
				</div>
		    
		    </div>
			
			 {/iterate}
			
		  </div>
		</div>
		
		
		
		{if $journals->getPageCount() > 0}
					<div class="cmp_pagination">
						{page_info iterator=$journals}
						{page_links anchor="journals" name="journals" iterator=$journals}
					</div>
				{/if}
		{/if}
			
	</div>
	
	
 

</div><!-- .page -->

	
  
{include file="frontend/components/footer.tpl"}
