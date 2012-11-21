###
# WEB+DB PRESS Vol.70 P70-P72
###
# Rolloverクラス
class Rollover

    # [メモ]
    # ここの $ は変数名の一部で特別な意味はない
    # $ を付与した変数はdom要素を指すといったことが暗示されていると思われる(推測)
    $a: null       # a要素
    $img: null     # img要素
    _src_off: null # 通常のsrc
    _src_on: null  # マウスオーバー時のsrc

    constructor: ($a) ->
        @$a = $a
        @_prepareEls()
        @_prepareSrcs()
        @_preload()
        @_eventify()

    _prepareEls: ->
        @$img = @$a.find 'img'
        @

    _prepareSrcs: ->
        @_src_off = @$img.attr 'src'
        @_src_on  = @_src_off.replace '_off', '_on'
        @

    _preload: ->
        $('<img />').attr 'src', @_src_on
        @

    _eventify: ->
        # [メモ]
        # => は関数を意味するが、その関数内では"this"を外のスコープの"this"として扱わせるように出来る
        @$a.hover =>
            @toOver()
        , =>
            @toNormal()
        @

    toOver: ->
        @$img.attr 'src', @_src_on
        @

    toNormal: ->
        @$img.attr 'src', @_src_off
        @
# 実行
$ ->
    $('.rollover').each ->
        console.log(@);
        new Rollover $(@)
