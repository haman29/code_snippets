/**
 * jsのfunctionを記述する
 */
var func = function() {
    return true;
};

/**
 * 1より大きく整数nより小さい範囲の中で、最大の素数を返却する
 * 1 < n <= 100
 * @param integer n
 * @return current_max_prime
 */
var lastPrime = function(n) {
    var current_max_prime = 2;
    for(var i = 2; i <= n; i++) {
        if (isPrime(i)) {
            current_max_prime = i;
        }
    }
    return current_max_prime;
};

/**
 * 素数であるか
 *
 * @param integer n
 * @return boolean true/false
 */
var isPrime = function(n) {
    for(var i = 2; i < n; i++) {
        if (n % i === 0) {
            return false;
        }
    }
    return true;
};
