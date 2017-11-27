{* 
* @Module Name: AP Page Builder
* @Website: apollotheme.com - prestashop template provider
* @author Apollotheme <apollotheme@gmail.com>
* @copyright  2007-2015 Apollotheme
* @description: ApPageBuilder is module help you can build content for your shop
*}
<!-- @file modules\appagebuilder\views\templates\hook\ApImageGallery -->
<div class="widget col-lg-12 col-md-12 col-sm-12 col-xs-12 col-sp-12">
	{$apLiveEdit}
    <!-- {$smallimage|escape:'html':'UTF-8'}     -->
    {if isset($images)}
    <div class="widget-images block">
        {if isset($formAtts.title)&&!empty($formAtts.title)}
        <h4 class="title_block">
            {$formAtts.title|rtrim}
        </h4>
        {/if}
        <div class="block_content clearfix">
            <div class="images-list clearfix">    
                <div class="row">
                 {foreach from=$images item=image name=images}
                    <div class="image-item {if $columns == 5} col-md-2-4 {else} col-md-{12/$columns}{/if} col-xs-3">
                        <a class="fancybox" rel="apimagegallery{$formAtts.form_id}" href= "{$image|escape:'html':'UTF-8'}">
                            <img class="replace-2x img-responsive" src="{$image|escape:'html':'UTF-8'}" alt=""/>
                    	</a>
                    </div>
                {/foreach}
                </div>
                <div class="btn-viewall">
                    <a class="fancybox" rel="apimagegallery{$formAtts.form_id}" href= "{$image|escape:'html':'UTF-8'}">
                        <i class="fa fa-instagram"></i>{l s='View all in instagram' mod='appagebuilder'}
                    </a>
                </div>
            </div>
        </div>
    </div>
	{$apLiveEditEnd}
    <script type="text/javascript">
        $(document).ready(function() {
        $(".fancybox").fancybox({
            openEffect : 'none',
            closeEffect : 'none'
        });
    });
    </script>
    {/if} 
</div>