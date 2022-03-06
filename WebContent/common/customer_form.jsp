		<table class="form">
			<tr>
				<td align="right">E-mail:</td>
				<td align="left"><input type="email" name="email" size="45" value="${customer.email}" required minlength="5" maxlength="64" /></td>
			</tr>
			<tr>
				<td align="right">First Name:</td>
				<td align="left"><input type="text" name="firstname" size="45" value="${customer.firstname}" required minlength="2" maxlength="30" /></td>
			</tr>
			<tr>
				<td align="right">Last Name:</td>
				<td align="left"><input type="text" name="lastname" size="45" value="${customer.lastname}" required minlength="2" maxlength="30"/></td>
			</tr>			
			<tr>
				<td align="right">Password:</td>
				<td align="left"><input type="password" id="password" name="password" size="45" value="${customer.password}" required minlength="5" maxlength="16" /></td>
			</tr>
			<tr>
				<td align="right">Confirm Password:</td>
				<td align="left">
					<input type="password" name="confirmPassword" size="45" 
							value="${customer.password}" required minlength="5" maxlength="16"
							oninput="checkPasswordMatch(this)" />
				</td>
			</tr>			
			<tr>
				<td align="right">Phone Number:</td>
				<td align="left"><input type="text" name="phone" size="45" value="${customer.phone}" required minlength="9" maxlength="15"/></td>
			</tr>
			<tr>
				<td align="right">Address Line 1:</td>
				<td align="left"><input type="text" name="address1" size="45" value="${customer.addressLine1}" required minlength="10" maxlength="128"/></td>
			</tr>
			<tr>
				<td align="right">Address Line 2:</td>
				<td align="left"><input type="text" name="address2" size="45" value="${customer.addressLine2}" required maxlength="128"/></td>
			</tr>			
			<tr>
				<td align="right">City:</td>
				<td align="left"><input type="text" name="city" size="45" value="${customer.city}" required minlength="2" maxlength="32" /></td>
			</tr>
			<tr>
				<td align="right">State:</td>
				<td align="left"><input type="text" name="state" size="45" value="${customer.state}" required minlength="2" maxlength="45" /></td>
			</tr>			
			<tr>
				<td align="right">Zip Code:</td>
				<td align="left"><input type="text" name="zipCode" size="45" value="${customer.zipcode}" required minlength="3" maxlength="24" /></td>
			</tr>
			<tr>
				<td align="right">Country:</td>
				<td align="left">
					<select name="country" required>
					<c:forEach items="${mapCountries}" var="country">
						<option value="${country.value}" <c:if test='${customer.country eq country.value}'>selected='selected'</c:if> >${country.key}</option>
					</c:forEach>
					</select>
					
				</td>
			</tr>																
			<tr><td>&nbsp;</td></tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">Save</button>&nbsp;&nbsp;&nbsp;
					<input type="button" value="Cancel" onclick="history.go(-1);" />
				</td>
			</tr>				
		</table>