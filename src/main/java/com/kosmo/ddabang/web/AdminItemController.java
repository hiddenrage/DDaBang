package com.kosmo.ddabang.web;

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
		String url="https://www.dabangapp.com/search#/map?id=&type=search&filters=%7B%22deposit-range%22%3A%5B0%2C999999%5D%2C%22price-range%22%3A%5B0%2C999999%5D%2C%22room-type%22%3A%5B0%2C1%2C2%2C3%2C4%2C5%5D%2C%22deal-type%22%3A%5B0%2C1%5D%2C%22location%22%3A%5B%5B126.66888654785157%2C37.379816027175195%5D%2C%5B127.31021345214845%2C37.74992427153369%5D%5D%7D&position=%7B%22center%22%3A%5B126.98955000000001%2C37.5651%5D%2C%22zoom%22%3A11%7D&cluster=%7B%7D";
		Document doc = Jsoup.connect(url).get();
		System.out.println(doc.html());

		/*Element hotNews = doc.select("li.Room-item").get(0);
		Elements news = hotNews.select("a");

		for(Element e : news){
		    System.out.println(e.text());
		    System.out.println(e.getElementsByAttribute("href").attr("href"));
		}*/
		/* 여기서 웹 크롤링을 종료 */
		return "bbs/item/ItemCollect.admin";
	}/// collecting
}/// class
