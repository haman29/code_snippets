<!-- <br /> なんとかしたい -->
<!DOCTYPE HTML>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>calculator</title>
        <!-- Bootstrap -->
        <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="./calc.js"></script>
    </head>
    <body>
        <div class="container">
            <h1>calculator</h1>
            <form action="#">
                <input type="text" id="result" value="0" style="text-align: right;" />
                <div class="row">
                    <div class="span">
                        <?php foreach (range(1, 9) as $v): ?>
                        <input type="button" class="btn btn-large" value="<?php echo $v; ?>" onClick="insert('<?php echo $v ?>')" /><?php if ($v % 3 === 0): ?><br/><?php endif; ?>

                        <?php endforeach; ?>
                        <input type="button" class="btn btn-large" value="0" onClick="insert(0)"/>
                        <input type="button" class="btn btn-large" value="." onClick="insert('.')"/>
                        <input type="button" class="btn btn-large" value="C" onClick="clearResult()"/>
                    </div>
                    <div class="span">
                        <input type="button" class="btn btn-small" value="+" onClick="setAdd()"/><br />
                        <input type="button" class="btn btn-small" value="-" onClick="setSub()"/><br />
                        <input type="button" class="btn btn-small" value="*" onClick="setMul()"/><br />
                        <input type="button" class="btn btn-small" value="/" onClick="setDiv()"/><br />
                        <input type="button" class="btn btn-large" value="=" onClick="equal()"/><br />
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
