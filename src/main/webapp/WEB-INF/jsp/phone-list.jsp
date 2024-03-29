<div class="container-fluid">
	<p>Hello, {{name}}!</p>
	<div class="row">
		<div class="col-md-2">
			<!--Sidebar content-->
			Search: <input ng-model="query"><br/>
			Sort by:
			<select ng-model="orderProp">
				<option value="name">Alphabetical</option>
				<option value="age">Newest</option>
				<option value="-age">Oldest</option>
			</select>
		</div>
		<div class="col-md-10">
			<!--Body content-->
			<ul class="phones">
				<li ng-repeat="phone in phones | filter:query | orderBy:orderProp" class="thumbnail phone-listing">
					<a href="#!/phones/{{phone.id}}" class="thumb"><img ng-src="{{phone.imageUrl}}"></a>
					<a href="#!/phones/{{phone.id}}">{{phone.name}}</a>
					<p>{{phone.snippet}}</p>
				</li>
			</ul>
		</div>
	</div>
	<p>Your search query: {{query}}</p>
	<p>Total number of phones: {{phones.length}}</p>
	<pre>{{phones | filter:query | orderBy:orderProp | json}}</pre>
</div>
