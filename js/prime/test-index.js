/**
 * index.js のテストコード(ユニットテスト)を記述する
 */
module('hello');
test( "hello qunit", function() {
    // ok(true, "aaaa") だとテストが通る
    // ok(false, "aaaa") だとテストが通らない
    ok(true, "Passed!" );
    ok(1 == "1", "Passed!" );
    ok(func(), "func() Passed!" );

    var actual = func();
    var expected = true;
    deepEqual(expected, actual, "expected === actual")
});

module('prime');
test("isPrime() test", function() {
    ok(true, "passed");
    deepEqual(isPrime(2), true, 'prime(2)');
    deepEqual(isPrime(3), true, 'prime(3)');
    deepEqual(isPrime(4), false, 'prime(4)');
    deepEqual(isPrime(5), true, 'prime(5)');
    deepEqual(isPrime(6), false, 'prime(6)');
});
test("lastPrime test", function() {
    ok(true, "passed");
    deepEqual(lastPrime(2), 2, 'prime(2)');
    deepEqual(lastPrime(3), 3, 'prime(3)');
    deepEqual(lastPrime(4), 3, 'prime(4)');
    deepEqual(lastPrime(5), 5, 'prime(5)');
    deepEqual(lastPrime(6), 5, 'prime(6)');
    deepEqual(lastPrime(13), 13, 'prime(13)');
    deepEqual(lastPrime(14), 13, 'prime(13)');
    deepEqual(lastPrime(96), 89, 'prime(96)');
    deepEqual(lastPrime(97), 97, 'prime(97)');
    deepEqual(lastPrime(98), 97, 'prime(98)');
    deepEqual(lastPrime(100), 97, 'prime(100)');
});
