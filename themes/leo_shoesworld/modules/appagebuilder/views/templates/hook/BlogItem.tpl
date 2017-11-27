{*
 *  @Module Name: AP Page Builder
 *  @Website: apollotheme.com - prestashop template provider
 *  @author Apollotheme <apollotheme@gmail.com>
 *  @copyright  2007-2015 Apollotheme
 *  @description: ApPageBuilder is module help you can build content for your  
*}
<!-- @file modules\appagebuilder\views\templates\hook\BlogItem -->
<div class="blog-container" itemscope itemtype="http://schema.org/Blog">
    <div class="left-block">
        <div class="blog-image-container">
            <a class="blog_img_link" href="{$blog.link|escape:'html':'UTF-8'}" title="{$blog.title|escape:'html':'UTF-8'}" itemprop="url">
			{if isset($formAtts.bleoblogs_sima) && $formAtts.bleoblogs_sima}
				<img class="replace-2x img-responsive" src="{$blog.preview_url}" 
					 alt="{if !empty($blog.legend)}{$blog.legend|escape:'html':'UTF-8'}{else}{$blog.title|escape:'html':'UTF-8'}{/if}" 
					 title="{if !empty($blog.legend)}{$blog.legend|escape:'html':'UTF-8'}{else}{$blog.title|escape:'html':'UTF-8'}{/if}" 
					 
					 {if isset($formAtts.bleoblogs_width)}width="{$formAtts.bleoblogs_width}"  height="{$formAtts.bleoblogs_height}{/if}
					 {if isset($homeSize)} width="{$homeSize.width}" height="{$homeSize.height}"{/if}
					 itemprop="image" />
			{/if}
            </a>
        </div>
    </div>
    <div class="right-block">
        {if isset($formAtts.show_title) && $formAtts.show_title}
        <h5 class="blog-title" itemprop="title"><a href="{$blog.link}" title="{$blog.title}">{$blog.title|strip_tags:'UTF-8'|truncate:80:'...'}</a></h5>
        {/if}
		
		{if isset($formAtts.bleoblogs_saut) && $formAtts.bleoblogs_saut}
		<span class="author">
			<span class="icon-author"> {l s='Author' mod='blockleoblogs'}:</span> {$blog.author}
		</span>
		{/if}
		
		{if isset($formAtts.bleoblogs_scat) && $formAtts.bleoblogs_scat}
		<span class="cat"> <span class="icon-list">{l s='In' mod='blockleoblogs'}</span> 
			<a href="{$blog.category_link}" title="{$blog.category_title|escape:'html':'UTF-8'}">{$blog.category_title}</a>
		</span>
		{/if}
		
		{if isset($formAtts.bleoblogs_scre) && $formAtts.bleoblogs_scre}
		<span class="created"><span class=""></span>
			<span class="icon-calendar"> {l s='On' mod='blockleoblogs'} </span> 
			<time class="date">{strtotime($blog.date_add)|date_format:"%A, %B %e, %Y"}</time>
		</span>
		{/if}
		
		{if isset($formAtts.bleoblogs_scoun) && $formAtts.bleoblogs_scoun}
		<span class="nbcomment">
			<span class="icon-comment"> {l s='Comment' mod='blockleoblogs'}:</span> {$blog.comment_count}
		</span>
		{/if}
		
		{if isset($formAtts.bleoblogs_shits) && $formAtts.bleoblogs_shits}
		<span class="hits">
			<span class="icon-hits"> {l s='Hits' mod='blockleoblogs'}:</span> {$blog.hits}
		</span>	
		{/if}
		
		{if isset($formAtts.show_desc) && $formAtts.show_desc}
        <p class="blog-desc" itemprop="description">
            {$blog.description|strip_tags:'UTF-8'|truncate:80:'...'}
        </p>
        {/if}
    </div>
</div>