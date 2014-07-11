/*
/*
 * ajax 省市县 加载 公共 js
 *
 * VERSION  DATE        BY           REASON
 * -------- ----------- ------------ ------------------------------------------
 * 1.00     2011-2-20  WuXiaoGang        程序・发布
 * -------- ----------- ------------ ------------------------------------------
 * Copyright 2011 East System. - All Rights Reserved.
 *
 */
/*
 * 省市县 select 联动
 *
 */
// ajax 数据加载 url:action地址 event:方法 data:数据
function loadArea1(url, event, data) {
	if (url == null || url == "" || event == null || event == "") {
		return;
	}
	if (data == null || data=="" || data=='null') {
		data = "";
	}
	jQuery.ajax({
		async : false,
		url : '/' + url + event+'.ac?'+ data + '&time=' + new Date(),
		success : function(req) {
			data = req;
		},
		error : function() {
			// return 0;
		}
	});
	
	return data;
}
// 取得省信息
//id:省id name:省名称 :divId:要显示在的控件id
function areaA(id, name, divId) {
	var text = "";
	if (id != null && id != '' && id != 'null') {
		text = text + "<option value='" + id + "'>" + name + "</option>";
	} else {
		text = text + "<option  value=''>--请选择省份--</option>";
	}
	text = text + loadArea1("area_", "a", null);
	jQuery("#" + divId).html(text);
}
// 根据省的编号取得城市信息
////fatherId:省id id:市ID name:市名称  order:是预载还是重选null重选  divId:要显示在的控件id countyDiv:要清除的县控件id
function areaB(fatherId, id, name, order, divId, countyDiv) {
	var cityText = "";
	if (fatherId != null && fatherId != "" && fatherId != "null") {
		fatherId = "&id=" + fatherId;
		if (order != null && order != "" && order != 'null') {
			if (id != null && id != '' && id != 'null') {
				cityText = cityText + "<option selected='selected' value='"
						+ id + "'>" + name + "</option>";
			} else {
				cityText = cityText
						+ "<option selected='selected' value=''>--请选择地级市--</option>";
			}

		} else {
			cityText = cityText
					+ "<option selected='selected' value=''>--请选择地级市--</option>";
				if (countyDiv != null && countyDiv != '' && countyDiv != 'null') {
					jQuery("#" + countyDiv).html("<option selected='selected' value=''>--市、县级市、县--</option>");
				}
			}
		cityText = cityText + loadArea1("area_", "b", fatherId);
	} else {
		// alert("根据省的编号取得城市信息error");
		cityText = "<option selected='selected' value=''>--请选择地级市--</option>";
	}
	jQuery("#" + divId).html(cityText);
}
// 根据城市的编号取得县的信息
////fatherId:市id id:县ID name:县名称  order:是预载还是重选null重选 divId:要显示在的控件id
function areaC(fatherId, id, name, order, divId) {
	// alert(value);
	var countyText = "";
	if (fatherId != null && fatherId != "" && fatherId != "null") {
		fatherId = "&id=" + fatherId;
		if (order != null && order != "" && order != 'null') {
			if (id != null && id != '' && id != 'null') {
				countyText = countyText + "<option selected='selected' value='"
						+ id + "'>" + name + "</option>";
			} else {
				countyText = countyText
						+ "<option selected='selected' value=''>--市、县级市、县--</option>";
			}
		} else {
			countyText = countyText
					+ "<option selected='selected' value=''>--市、县级市、县--</option>";
		}
		countyText = countyText
				+ loadArea1("area_", "c", fatherId);
	} else {
		// alert("根据城市的编号取得县的信息error");
		countyText = "<option selected='selected' value=''>--市、县级市、县--</option>";
	}
	// alert(countyText);
	jQuery("#" + divId).html(countyText);
}