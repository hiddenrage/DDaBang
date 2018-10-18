package com.kosmo.ddabang.web;

import java.util.Map;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.ddabang.service.ItemService;
import com.kosmo.ddabang.service.MemberDTO;
import com.kosmo.ddabang.service.MemberService;

@Controller
public class AdminItemController {
	@Resource(name="memberServiceImpl")
    private MemberService memberService;
	@Resource(name="itemServiceImpl")
	private ItemService itemService;
	
	// 매물 수집 페이지로 이동
	@RequestMapping("/Admin/ItemCollect.bbs")
	public String collect() throws Exception {
		return "bbs/item/ItemCollect.admin";
	}/// collect
	
	@RequestMapping("/Admin/ItemCollecting.bbs")
	public String collecting(Map map) throws Exception {
		int totalAdded=-1;
		/* 여기서 웹 크롤링을 시작 */
		String url="https://www.dabangapp.com/api/2/room/list/search";
		for(int j=1;j<=2;j++) {
			Document doc = Jsoup.connect(url)
					.header("referer","https://www.dabangapp.com/search")
					.header("Accept-Encoding", "gzip, deflate, br")
					.data("page",String.valueOf(j))
					.data("filters", 
							"{\"deposit-range\":[0,999999],"
							+ "\"price-range\":[0,999999],"
							+ "\"room-type\":[0,1,2,3,4,5],"
							+ "\"deal-type\":[0,1],"
							+ "\"location\":[[126.66888654785157,37.379816027175195],[127.31021345214845,37.74992427153369]]}")
					.ignoreContentType(true)
					.get();
			JSONParser parser=new JSONParser();
			JSONObject documentText=(JSONObject)parser.parse(doc.text());
			//System.out.println("documentText >> "+documentText);
			JSONArray roomInfos=(JSONArray)documentText.get("rooms");
			//System.out.println("roomInfos size : "+roomInfos.size());
			
			for(int i=0;i<roomInfos.size();i++) {
				// 여기부터 반복문 시작
				JSONObject roomSimpleInfo=(JSONObject)((JSONArray) documentText.get("rooms")).get(i);
				//System.out.println("roomSimpleInfo size : "+roomSimpleInfo.size());
				//System.out.println(roomSimpleInfo); // roomSimpleInfo 이게 필요한지 생각좀
				
				String roomUrl="https://www.dabangapp.com/api/3/room/detail"
						+ "?api_version=3.0.1"
						+ "&call_type=web&room_id="+roomSimpleInfo.get("id")
						+ "&use_map=kakao"
						+ "&version=1";
				Document room_doc=Jsoup.connect(roomUrl).get();
				
				System.out.println(room_doc.text());
				// 전체 상세보기 정보
				JSONObject viewInfo=(JSONObject)parser.parse(room_doc.text());
				// 회원 정보
				JSONObject agentInfo=(JSONObject)viewInfo.get("agent");
				// 직책을 얻기위한 유저 정보
				JSONObject userInfo=(JSONObject)viewInfo.get("user");
				// 방 정보
				JSONObject roomInfo=(JSONObject)viewInfo.get("room");
				// 직거래 회원 배제
				if(agentInfo==null) continue;
				// 임시 회원 등록
				map.clear();
				map.put("id",userInfo.get("email"));
				if(memberService.memberSelectOne(map)==null) {
					map.put("id",userInfo.get("email"));
					map.put("name",userInfo.get("name"));
					map.put("tel",userInfo.get("phone"));
					
					map.put("pwd", "ddabang123123");
					
					map.put("office_name",agentInfo.get("name"));
					map.put("address",agentInfo.get("address"));
					map.put("manager_name",agentInfo.get("facename"));
					map.put("manager_tel",agentInfo.get("user_tel"));
					map.put("position","사원");
					map.put("authority",userInfo.get("role_type")==null?"없음":userInfo.get("role_type").toString());
					map.put("broker_number",agentInfo.get("reg_id"));
					map.put("broker_photo","");
					map.put("business_number",agentInfo.get("business_id"));
					map.put("business_photo","");
					memberService.expertInsert(map);
					map.clear();
				}/// if
				
				// 방등록 부분
				//map.put("dabang_id", roomInfo.get("id"));
				//if(itemService.itemSelectOne(map)==null) {
					map.put("id", roomInfo.get("user_id"));
					map.put("address", roomInfo.get("address"));
					String address_detail=(roomInfo.get("dong")==null?"":roomInfo.get("dong").toString())
							+(roomInfo.get("ho")==null?"":roomInfo.get("ho").toString());
					map.put("address_detail", address_detail);
					map.put("kind", roomInfo.get("room_type_str"));
					map.put("dabang_id", roomInfo.get("id"));
					map.put("house_floor", roomInfo.get("building_floor_str"));
					map.put("select_floor", roomInfo.get("room_floor_str"));
					map.put("supply_area", roomInfo.get("provision_size")==null?-1:roomInfo.get("provision_size"));
					map.put("use_area", roomInfo.get("room_size"));
					map.put("manage_money", roomInfo.get("maintenance_cost_main_str"));
					map.put("manage_detail", roomInfo.get("maintenance_items_str").toString());
					map.put("parking", roomInfo.get("parking_cost")==null?-1:(roomInfo.get("parking_cost").toString()=="0.0"?0:roomInfo.get("parking_cost")));
					map.put("heating", roomInfo.get("heating"));
					map.put("animal", roomInfo.get("animal_str")=="가능"?'Y':'N');
					map.put("elevator", roomInfo.get("elevator_str")=="있음"?'Y':'N');
					map.put("movein", roomInfo.get("moving_date"));
					String options=roomInfo.get("full_options")==null?"":roomInfo.get("full_options").toString()
							+roomInfo.get("etc_options")==null?"":roomInfo.get("etc_options").toString();
					map.put("selected_option", options);
					map.put("title", roomInfo.get("title"));
					//map.put("content", roomInfo.get("memo"));
					map.put("content", "많은 버그로 인한 임시 데이터");
					map.put("x", ((JSONArray)roomInfo.get("location")).get(0));
					map.put("y", ((JSONArray)roomInfo.get("location")).get(1));
					totalAdded+=itemService.itemInsert(map);
				//}/// if
			}/// for
		}/// for
		/* 여기서 웹 크롤링을 종료 */
		map.clear();
		System.out.println(totalAdded);
		map.put("totalAdded", totalAdded);
		return "bbs/item/ItemCollect.admin";
	}/// collecting
}/// class
