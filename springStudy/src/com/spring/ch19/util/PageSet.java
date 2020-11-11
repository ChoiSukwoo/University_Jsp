package com.spring.ch19.util;

public class PageSet {
public PageSet(int currPage, int dbCount) {
       this.currPage = currPage;
       this.dbCount = dbCount;
}

private int currPage = 1;       // 현재 페이지 
private int dbCount = 0;        // 전체 행(ROW)의 수 
private int pageSize = 5;       // 한 페이지의 행의 수
private int grpSize = 5;        // 그룹사이즈 	

public int getPageSize() {
  return pageSize;
}
public void setPageSize(int pageSize) {
  this.pageSize = pageSize;
}
public int getDbCount() {
  return dbCount;
}
public void setDbCount(int dbCount) {
  this.dbCount = dbCount;
}
/* 현재 페이지 번호를 리턴  */
public int getCurrPage() {
  int CurrentPage = 1;
  if (this.currPage > 0) {
      return currPage;
  } else {
      return CurrentPage;
  }
}
/* 현재 페이지 번호를 설정  */
public void setCurrPage(int currPage) {
  this.currPage = currPage;
}
/* 페이지의 수를 리턴  */
public int getTotalPage() {
  int pages = getDbCount() / pageSize;
  if (getDbCount() % pageSize > 0) {
       pages++;
  }
  return pages;
}
/* 현재 게시물의 시작번호를 리턴  */
public int getStartRowIndex() {
  return grpSize*(getCurrPage()-1);
}
/* 현재 게시물의 끝번호를 리턴  */
public int getEndRowIndex() {
  return grpSize*getCurrPage()+1;
}
/* 시작 페이지 번호를 리턴  */
private int getIndexOfStartPage() {
  return ((getCurrPage()-1)/pageSize)*pageSize+1;
}
/* 마지막 페이지 번호를 리턴  */
private int getIndexOfEndPage() {
  return (((getIndexOfStartPage()-1)+ pageSize) / pageSize) * pageSize;
}
/**페이지 나열  */
public String getPageList() {
StringBuffer pageBuffer = new StringBuffer();
int startOfPage = getIndexOfStartPage(); //시작 페이지
int endOfPage = getIndexOfEndPage();     //마지막 페이지
if (getTotalPage() <= endOfPage) {
     endOfPage = getTotalPage();
}
pageBuffer.append("<ul class='pageClass'>");

// 첫페이지 이동
if(endOfPage < 2){
    pageBuffer.append("[firstPage] ");
}else{
    pageBuffer.append("<a href=javascript:gotoPage('1'); class ='gotoPage'>[first page] </a>");
}
// 페이지 번호 나열
int movoToPage = startOfPage;
if(endOfPage > 0){
    while (movoToPage <= endOfPage) {
       if (movoToPage == getCurrPage()) {
          pageBuffer.append("<strong>[ ");
          pageBuffer.append(getCurrPage());
          pageBuffer.append(" ]</strong>");
       } else {
          pageBuffer.append(" [ <a href= javascript:gotoPage('"+movoToPage+"'); class='gotoPage'>");
          pageBuffer.append(movoToPage);
          pageBuffer.append(" ] </a>");
       }
       movoToPage++;
    }
} else {
  pageBuffer.append("<strong>[ "+getCurrPage()+" ]</strong>");
}
// 마지막 페이지
if(endOfPage < 2){
    pageBuffer.append(" [lastPage]");
} else {
   pageBuffer.append("<a href=javascript:gotoPage( '"+getTotalPage()+"'); class='gotoPage'> [last page]</a>");
}
pageBuffer.append("</ul>");
return pageBuffer.toString();
}
}
