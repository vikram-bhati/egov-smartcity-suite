<%@ include file="/includes/taglibs.jsp"%>
<%--
  ~    eGov  SmartCity eGovernance suite aims to improve the internal efficiency,transparency,
  ~    accountability and the service delivery of the government  organizations.
  ~
  ~     Copyright (C) 2017  eGovernments Foundation
  ~
  ~     The updated version of eGov suite of products as by eGovernments Foundation
  ~     is available at http://www.egovernments.org
  ~
  ~     This program is free software: you can redistribute it and/or modify
  ~     it under the terms of the GNU General Public License as published by
  ~     the Free Software Foundation, either version 3 of the License, or
  ~     any later version.
  ~
  ~     This program is distributed in the hope that it will be useful,
  ~     but WITHOUT ANY WARRANTY; without even the implied warranty of
  ~     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  ~     GNU General Public License for more details.
  ~
  ~     You should have received a copy of the GNU General Public License
  ~     along with this program. If not, see http://www.gnu.org/licenses/ or
  ~     http://www.gnu.org/licenses/gpl.html .
  ~
  ~     In addition to the terms of the GPL license to be adhered to in using this
  ~     program, the following additional terms are to be complied with:
  ~
  ~         1) All versions of this program, verbatim or modified must carry this
  ~            Legal Notice.
  ~            Further, all user interfaces, including but not limited to citizen facing interfaces,
  ~            Urban Local Bodies interfaces, dashboards, mobile applications, of the program and any
  ~            derived works should carry eGovernments Foundation logo on the top right corner.
  ~
  ~            For the logo, please refer http://egovernments.org/html/logo/egov_logo.png.
  ~            For any further queries on attribution, including queries on brand guidelines,
  ~            please contact contact@egovernments.org
  ~
  ~         2) Any misrepresentation of the origin of the material is prohibited. It
  ~            is required that all modified versions of this material be marked in
  ~            reasonable ways as different from the original version.
  ~
  ~         3) This license does not grant any rights to any user of the program
  ~            with regards to rights under trademark law for use of the trade names
  ~            or trademarks of eGovernments Foundation.
  ~
  ~   In case of any queries, you can reach eGovernments Foundation at contact@egovernments.org.
  ~
  --%>

<style>
table.workflowHistory {
	background-color : transparent;
	color : navy;
	width :100%;
}
table.workflowHistory th {
	color:black;
	text-align: center;
	font-size: 15px;
	border:1px solid gray;
}

table.workflowHistory td {
	text-align:center;
	padding : 5px;
	color:navy;
	font-size : 11px;
	border : 1px solid gray;
		
}
</style>
<div align="center">
<div class="headingsmallbg">
					<span class="bold"><s:text name='approval.existingdetails.title' />
					</span>
				</div>  		       
	<c:choose>	
			<c:when test="${!workflowHistory.isEmpty()}">
				<table id="workflowHistory" class="workflowHistory"  >
					<thead>
						<th>Date</th>
						<th>Sender</th>
						<th>Status</th>
						<th>Action to Perform</th>
						<th>Comments</th>				
					</thead> 
					<tbody>
							<c:forEach  var="contact"  items="${workflowHistory}" varStatus="counter">
									<tr>
										<td class="blueborderfortd">${contact.lastModifiedDate}</td>
										<td class="blueborderfortd">${contact.senderName}</td>
										<td class="blueborderfortd">${contact.value}</td>
										<td class="blueborderfortd">${contact.nextAction}</td>
										<td class="blueborderfortd">${contact.comments}</td>
									</tr>
							</c:forEach>						
					</tbody>
				</table>
			</c:when>
			<c:otherwise>No data found.</c:otherwise>
	</c:choose>					
</div>					