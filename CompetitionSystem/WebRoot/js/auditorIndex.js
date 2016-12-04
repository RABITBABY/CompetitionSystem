function indexPage(){
	location.href="auditor/toAuditorIndex";
}
function historyPage(){
	location.href="auditor/toHistory";
}
//根据id去审批页面
function competPage(value) {
	location.href="auditor/toCompetition?comId="+value;
}
//根据id去查看页面
function seeComPage(value) {
	location.href="auditor/seeComPage?comId="+value;
}
