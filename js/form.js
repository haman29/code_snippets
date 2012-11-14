// form の get/post で送られるデータを取得するサンプル
var formdata = {};
var i = 0;
for (var key in document.form) {
    formdata[document.form[key].name] = document.form[key].value;
    if (++i == document.form.length) break;
}
