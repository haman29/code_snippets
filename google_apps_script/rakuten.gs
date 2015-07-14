var app = UiApp.createApplication();

var RakutenIchiba = function(){
  var endpoint = 'https://app.rakuten.co.jp/services/api/IchibaItem/Search/20140222';
  var sheet = SpreadsheetApp.getActiveSpreadsheet().getSheetByName('設定情報');
  var params = {
    applicationId: sheet.getRange("B2").getValue(),
    affiliateId: sheet.getRange("C2").getValue()
  };
    var query = function(){
      var serialize = function(obj) {
        var str = [];
        for(var key in obj) {
          if (obj.hasOwnProperty && obj.hasOwnProperty(key)) {
            val = obj[key];
            str.push(encodeURIComponent(key) + "=" + encodeURIComponent(val));
          }
        }
        return str.join("&");
      }
      return serialize(params);
    };
    var getItem = function(itemCode){
      params.itemCode = itemCode;
      response = UrlFetchApp.fetch(endpoint + "?" + query());
      return JSON.parse(response).Items[0].Item;
    };
    
    return {
      getItem: getItem,
      params: params
    };
}();

function getItemCode(url){
  // var url = 'http://item.rakuten.co.jp/public/patagonia-48015tp';
  var response = UrlFetchApp.fetch(url);
  var text = response.getContentText('euc-jp');
  var itemCode = text.match(/<meta property="apprakuten:item_code" content="(.*)">/)[1];
  
  var matched = text.match(/<a href="([^?]*)\?(.*?)" class="see">レビューを見る/);
  var reviewUrl = null;
  if(matched) reviewUrl = matched[1];
  
  matched = text.match(/<span class="sale_desc">(.*)<\/span>/);
  var saleDesc = null;
  if(matched) saleDesc = matched[1];
  
  if(!itemCode) return [['fail..']];
  return [
    ["success!", saleDesc, itemCode, reviewUrl],
  ]
};

function getItemReview(url){
  // var url = 'http://review.rakuten.co.jp/item/1/216424_10006178/1.1/';
  var newest = 'sort6/';
  var response = UrlFetchApp.fetch(url + newest);
  var text = response.getContentText('euc-jp');
  
  var regexp2g = /<dd class="revRvwUserEntryCmt description">([\s\S]*?)<\/dd>/g; // description
  var obj2 = text.match(regexp2g);
  var regexp2 = /<dd class="revRvwUserEntryCmt description">([\s\S]*?)<\/dd>/; // description
  
  var res = ['success!'];
  for(var i in obj2){
    if (obj2.hasOwnProperty && obj2.hasOwnProperty(i)) {
      res.push(obj2[i].match(regexp2)[1].replace(/\n/g, ''));
    }
  }
  return [res];
};

function getItem(item_code){
  var item = new RakutenIchiba.getItem(item_code);
  if(!item) return [['fail..']];
  var imageUrl = null;
  if(item.mediumImageUrls && item.mediumImageUrls[0]) imageUrl = item.mediumImageUrls[0].imageUrl;
  return [
    ['success!', item.catchcopy, item.itemName, item.itemCaption, item.reviewCount, imageUrl, item.affiliateUrl]
  ];
};
function getAffiliateLink(item_code, application_id, affiliate_id){
  if(!application_id || !affiliate_id) return [['設定情報ナシ']];
  RakutenIchiba.params.affiliateId   = affiliate_id;
  RakutenIchiba.params.applicationId = application_id;
  var item = RakutenIchiba.getItem(item_code);
  if(!item) return [['fail..']];
  return [[item.affiliateUrl]];
};
