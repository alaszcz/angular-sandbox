<div class="phone-images">
	<img ng-src="../{{img}}" class="phone" ng-repeat="img in phone.images" ng-class="{active:mainImageUrl==img}">
</div>


<h1>{{phone.name}}</h1>

<p>{{phone.description}}</p>

<ul class="phone-thumbs">
	<li ng-repeat="img in phone.images">
		<img ng-src="../{{img}}" ng-mouseenter="setImage(img)">
	</li>
</ul>

<ul class="specs">
	<li>
		<span>Availability and Networks</span>
		<dl>
			<dt>Availability</dt>
			<dd ng-repeat="availability in phone.availability">{{availability}}</dd>
		</dl>
	</li>
	<li>
		<dl>
			<dt>{{phone.connectivity.infrared | checkmark}} Infrared</dt>
			<dt>{{phone.connectivity.gps | checkmark}} GPS</dt>
		</dl>
	</li>
	<li>
		<span>Additional Features</span>
		<dd>{{phone.additionalFeatures}}</dd>
	</li>
</ul>