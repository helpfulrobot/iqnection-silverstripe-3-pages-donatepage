<h1>$Title</h1>
<% if Donation %>
	$RedirectText
	<div class="loader">Loading...</div>
    <form id="frmPaypal" target="_self" action="https://www.paypal.com/cgi-bin/webscr" method="post">
        <input type="hidden" name="business" value="$PayPalAccount" />
        <input type="hidden" name="cmd" value="_xclick" /> 
        <input type="hidden" name="item_name" value="Donation to $SiteConfig.Title" />
        <input type="hidden" name="item_number" value="DONATION ID:{$ID}" />
        <input type="hidden" name="amount" value="$Donation" />    
        <input type="hidden" name="return" value="{$AbsoluteLink}thanks/">
        <input type="hidden" name="cancel_return" value="$AbsoluteLink">
        <input type="hidden" name="notify_url" value="$AbsoluteLink">
        <input type="hidden" name="currency_code" value="USD" />
        <input type="hidden" name="lc" value="US" />
    </form>
<% else %>
    <p>Your donation amount was invalid.</p>
<% end_if %>