{* 
* @Module Name: AP Page Builder
* @Website: apollotheme.com - prestashop template provider
* @author Apollotheme <apollotheme@gmail.com>
* @copyright  2007-2015 Apollotheme
* @description: ApPageBuilder is module help you can build content for your shop
*}
<!-- @file modules\appagebuilder\views\templates\hook\ApCategoryImage -->
{function name=menu level=0}
<div class="item">
<ul class="level{$level}">
{foreach $data as $category}
	{if isset($category.children) && is_array($category.children)}
	<li class="cate_{$category.id_category}" >
		<a href="{$link->getCategoryLink($category.id_category, $category.link_rewrite)|escape:'html':'UTF-8'}">
			<span class="cate_content" {if {$category.id_category} == {$id_root}} style="display:none"{/if}>
				<span class="cover-img">
					{if isset($category.image)}
					<img src='{$category["image"]}' alt='{$category["name"]}' 
						 {if {$formAtts.showicons} == 0 || ({$level} gt 0 && {$formAtts.showicons} == 2)} style="display:none"{/if}/>
					{/if}
				</span>
				<label>{$category.name}</label>
			</span>
		</a>
		
		{menu data=$category.children level=$level+1}
	</li>
	{else}
	<li class="cate_{$category.id_category} text-center">
		<h4 class="title_block">
			{$category.name}
		</h4>
		<div class="cate_content">
			<div class="img_cate">
				{if isset($category.image)}
				<img class="img-responsive" src='{$category["image"]}' alt='{$category["name"]}' 
					 {if {$formAtts.showicons} == 0 || ({$level} gt 0 && {$formAtts.showicons} == 2)} style="display:none"{/if}/>
				{/if}
			</div>
			<div class="description">
				{$category.description}
			</div>
			<div class="link_visit">
				<a class="btn button btn-outline" href="{$link->getCategoryLink($category.id_category, $category.link_rewrite)|escape:'html':'UTF-8'}">
					{l s='visit shop' mod='appagebuilder'}
				</a>
			</div>
		</div>
	</li>
	{/if}
{/foreach}
</ul>
</div>
{/function}

{if isset($categories)}
<div class="widget-category_image block">
	{$apLiveEdit}
	{if isset($formAtts.title) && !empty($formAtts.title)}
	<h4 class="title_block">
		{$formAtts.title}
	</h4>
	{/if}
	<div class="block_content">
		<div id="category_image" class="owl-carousel owl-theme">
			
				{foreach from = $categories key=key item =cate}
					{menu data=$cate}
				{/foreach}
			
		</div>
		<div id="view_all_wapper" style="display:none">
			<span class ="view_all"><a href="javascript:void(0)">{l s='View all' mod='appagebuilder'}</a></span>
		</div> 
	</div>
	{$apLiveEditEnd}
</div>
{/if}
<script type="text/javascript">
{literal}
	jQuery(document).ready(function() {
		var limit = {/literal}{$formAtts.limit}{literal};
		var level = {/literal}{$formAtts.cate_depth}{literal};
		$("ul.level0").each(function(){
			var element = $(this).find("ul.level" + level + " >li").length;
			var count = 0;
			$(this).find("ul.level" + level + " >li").each(function(){
			count = count + 1;
			if(count > limit){
				$(this).remove();
			}
			});

			if(element > limit){
				view = $(".view_all","#view_all_wapper").clone(1);
				view.appendTo($(this).find("ul.level" + level));
				var href = $(this).find('a:first').attr('href');
				$("a",view).attr("href", href);
			}
		});
		$('#category_image').owlCarousel({
			direction:'ltr',

	        items : 3,
	        itemsCustom : false,
            itemsDesktop : [1199,3],
            itemsDesktopSmall : [979,1],
            itemsTablet : [768,1],

            itemsMobile : [479,1],
            singleItem : false,         // true : show only 1 item
            itemsScaleUp : false,
            slideSpeed : 200,  //  change speed when drag and drop a item
            paginationSpeed :800, // change speed when go next page

            autoPlay : true,   // time to show each item
            stopOnHover : false,
            navigation : true,
            navigationText : ["&lsaquo;", "&rsaquo;"],

            scrollPerPage :true,
            responsive :true,
            
            pagination : false,
        	paginationNumbers : false,
            
            addClassActive : true,

        });
	});
{/literal}
</script>