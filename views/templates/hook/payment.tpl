{*
* 2007-2015 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
* @author    PrestaShop SA <contact@prestashop.com>
* @copyright 2007-2015 PrestaShop SA
* @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
* International Registered Trademark & Property of PrestaShop SA
*}

<div class="row">
	<div class="col-xs-12 col-md-12">
		<p class="payment_module" id="psp_hipay_payment_button">
			{if $cart->getOrderTotal() < 2}
				<a href="#">
					<img src="{$domain|cat:$payment_button|escape:'html':'UTF-8'}" alt="{l s='Pay by credit card' mod='psphipay'}" class="pull-left" width="234px" height="57px" />
					<span>
						{l s='Minimum amount required in order to pay by credit card:' mod='psphipay' } {convertPrice price=2}

						{if isset($psphipay_prod) && (!$psphipay_prod)}
							<em>{l s='(sandbox / test mode)' mod='psphipay'}</em>
						{/if}
					</span>
				</a>
			{else}
				<a href="{$link->getModuleLink('psphipay', 'redirect', array(), true)|escape:'htmlall':'UTF-8'}" title="{l s='Pay by credit card' mod='psphipay'}">
					<img src="{$domain|cat:$payment_button|escape:'html':'UTF-8'}" alt="{l s='Pay by credit card' mod='psphipay'}" class="pull-left" width="234px" height="57px" />
					<span>
						{l s='Pay by credit card' mod='psphipay'}

						{if isset($psphipay_prod) && (!$psphipay_prod)}
							<em>{l s='(sandbox / test mode)' mod='psphipay'}</em>
						{/if}
					</span>
				</a>
			{/if}
		</p>
	</div>
</div>
