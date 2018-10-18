package com.kosmo.ddabang.web;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminItemController {
	// 매물 수집 페이지로 이동
	@RequestMapping("/Admin/ItemCollect.bbs")
	public String collect() throws Exception {
		return "bbs/item/ItemCollect.admin";
	}/// collect
	
	@RequestMapping("/Admin/ItemCollecting.bbs")
	public String collecting() throws Exception {
		/* 여기서 웹 크롤링을 시작 */
		String url="https://www.dabangapp.com/api/2/room/list/search";
		Document doc = Jsoup.connect(url)
				.header("referer","https://www.dabangapp.com/search")
				.header("Accept-Encoding", "gzip, deflate, br")
				.data("page","2") // 2부터 보내는게 편하다
				.data("filters", 
						"{\"deposit-range\":[0,999999],"
						+ "\"price-range\":[0,999999],"
						+ "\"room-type\":[0,1,2,3,4,5],"
						+ "\"deal-type\":[0,1],"
						+ "\"location\":[[126.66888654785157,37.379816027175195],[127.31021345214845,37.74992427153369]]}")
				//.data("_", "1539774882507")
				.ignoreContentType(true)
				.get();
		//System.out.println(doc.text());
		JSONParser parser=new JSONParser();
		JSONObject documentText=(JSONObject)parser.parse(doc.text());
		System.out.println("documentText >> "+documentText);
		//System.out.println("features size : "+((JSONArray)documentText.get("features")).size());
		//JSONObject feature=(JSONObject)((JSONArray) documentText.get("features")).get(0);
		//System.out.println(feature);
		//JSONArray roomInfo=(JSONArray)feature.get("rooms"); // 두개 들어있는데 그거같은데
		JSONArray roomInfos=(JSONArray)documentText.get("rooms");
		System.out.println("roomInfos size : "+roomInfos.size());
		JSONObject roomInfo=(JSONObject)((JSONArray) documentText.get("rooms")).get(0);
		System.out.println("roomInfo size : "+roomInfo.size());
		System.out.println(roomInfo);
		
		Document room_doc = Jsoup.connect("https://www.dabangapp.com/room/"+roomInfo.get("_id").toString())
				.header("Referer", "https://www.dabangapp.com/search")
				.header("Accept-Encoding", "gzip, deflate, br")
				.header("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8")
				.header("Accept-Language", "ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7,la;q=0.6")
				.header("Cache-Control", "max-age=0")
				.header("Upgrade-Insecure-Requests", "1")
				.data("room-id",roomInfo.get("_id").toString())
				.ignoreContentType(true)
				.get();
		//System.out.println("room_doc >> "+room_doc.html());
		String script=room_doc.select("script").get(10).html();
		script=script.substring(script.indexOf("{"), script.lastIndexOf("}")+1);
		JSONObject roomText=(JSONObject)parser.parse(script);
		System.out.println(roomText);
		
		// roomText에서 필요한 값들을 받아서 넣으면 됨
		
		
		//System.out.println(script);
		
		/* 여기서 웹 크롤링을 종료 */
		return "bbs/item/ItemCollect.admin";
	}/// collecting
}/// class
