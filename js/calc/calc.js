// 多分この var はグローバル変数で良くない書き方
var operator    = '';
var first_value = 0;
var clear_flag  = 0;
var reset_flag  = 0;

function isDot(str) { return str == '.'; }

function hasDot(str) { return str.match(/\./) == '.'; }

function isZero(str) { return parseInt(str) == 0; }

function occuredInputError(input, current) {
    return isDot(input) && hasDot(current);
}

function okAppend(input, current) {
   return ( ! isZero(current) || isDot(input) || (isZero(current) && hasDot(current)));
}

function insert(input) {
    if (clear_flag == 1) {
        clearResult();
        clear_flag = 0;
    }
    var current = document.getElementById('result').value;
    if (occuredInputError(input, current)) {
        return;
    } else if (okAppend(input, current)) {
        document.getElementById('result').value += input;
    } else {
        document.getElementById('result').value = input;
    }
}

function clearResult() {
    document.getElementById('result').value = 0;
}

function setOperator(o) {
    operator = o;
    first_value = parseFloat(document.getElementById('result').value);
    clear_flag = 1;
}

function setAdd() { setOperator('+'); }

function setSub() { setOperator('-'); }

function setMul() { setOperator('*'); }

function setDiv() { setOperator('/'); }

function add(a, b) {
    return a + b;
}

function sub(a, b) {
    return a - b;
}

function mul(a, b) {
    return a * b;
}

function div(a, b) {
    if (b == 0.0) {
        return 'divided by zero error';
    } else {
        return a / b;
    }
}

function reset() {
    operator     = '';
    first_value  = 0;
    second_value = 0;
    clear_flag   = 1;
}

function equal() {
    if (operator == '') return;
    var second_value = parseFloat(document.getElementById('result').value);
    switch (operator) {
        case '+':
            document.getElementById('result').value = add(first_value, second_value);
            break;
        case '-':
            document.getElementById('result').value = sub(first_value, second_value);
            break;
        case '*':
            document.getElementById('result').value = mul(first_value, second_value);
            break;
        case '/':
            document.getElementById('result').value = div(first_value, second_value);
            break;
        default:
            document.getElementById('result').value = 'occured error';
            break;
    }
    reset();
}
