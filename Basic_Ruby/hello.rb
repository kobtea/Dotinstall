# encoding: utf-8
# if you get an error "invalid multibyte char (US-ASCII)",
# write "# encoding: utf-8" on the top

##################################################
# コメント
##################################################
=begin
コメント
コメント
=end


##################################################
# 出力文
##################################################
# 改行しない
print "改行しない", "hogehoge"
# 改行する
puts "改行するよ", "hugahuga"
# debug print, オブジェクトタイプがわかるように出力
p "DEBUG PRINT", "foobar"
=begin OUTPUT
改行しないhogehoge改行するよ
hugahuga
"DEBUG PRINT"
"foobar"
=end


##################################################
# 変数
##################################################
# 先頭は小文字か_
x = 10


##################################################
# 定数
##################################################
# 先頭は大文字
HOGE = "hogehoge"


##################################################
# オブジェクト
##################################################
# メソッドを持っていれば、それはすでにオブジェクトなんじゃよ
"hello".length    # 5


##################################################
# クラス、インスタンス
##################################################
# クラス：オブジェクトの設計図なんじゃよ
# インスタンス：実体化されたもの


##################################################
# 数値オブジェクト
##################################################
# 分数も扱えるすごい
x = Rational(2, 3)  # (2/3)
x += Rational(7, 5)

# 型変換
10.5.to_i     # 整数へ
10.5.to_r     # 分数へ
10.5.round    # 四捨五入
10.4.ceil     # 切り上げ
10.5.floor    # 切り捨て

# 乱数
rand(100)

# Math
Math.sqrt(2)


##################################################
# 文字列オブジェクト
##################################################
x = "ふと\tころ"       # 変数や特殊文字(\n)を展開する
y = 'ヒモになりたい'
puts "i say #{y}"   # 変数の展開

s = "Low2High"
s.length          # 長さ
s.upcase          # uppercase
s.downcase        # lowercase
s.reverse         # 逆順
s.index("i")      # iは何番目にあるか
s.include?("h")   # hを含むか


##################################################
# 破壊的メソッド
##################################################
s1 = "the origin"     # the origin
s2 = s1.upcase        # THE ORIGIN
# メソッドに!をつけると、参照元のオブジェクトについても変更を行う
s2 = s1.upcase!       # THE ORIGIN
s1                    # THE ORIGIN


##################################################
# 配列オブジェクト
##################################################
names = ["himo", "nari", "tie", "NA!"]
names[0..1]   # 範囲指定[0,1]
names[0...3]  # 範囲指定[0,3) => [0,2]
names[-1]     # 後ろから1番目

names[0] = "ikemen"             # ["ikemen", "nari", "tie", "NA!"]
# 0から1番目の要素を置き換える
names[0..1] = ["netaga", "nai"] # ["netaga", "nai", "tie", "NA!"]
# 1番目の要素から2個を置き換える
names[1, 2] = ["hoge", "huga"]  # ["netaga", "hoge", "huga", "NA!"]
# 1番目の要素から0個を置き換える -> 1番目に要素を追加する
names[1, 0] = ["foobar"]        # ["netaga", "foobar", "hoge", "huga", "NA!"]

a = [1, 2, 3, 4]
b = [3, 4, 5, 6]
a & b # 積集合を出力
a | b # 和集合を出力
a - b # 差集合を出力
a + b # 重複ありの和集合を出力

a = [2, 2, 1, 3, 3, 3]
a.uniq    # 重複なしのリスト
a.sort    # ソートしてくれる

# unshift   : 先頭に追加
# shift     : 先頭を削除
# push      : 末尾に追加
# pop       : 末尾を削除
a.push(10)


##################################################
# ハッシュ(連想配列)オブジェクト
##################################################
sales = {"ore"=>10, "omae"=> 25, "aitsu"=>300}
sales["ore"]

# sizeとlengthは同じ？
sales.size
sales.length

sales.empty?
sales.has_key?("ore")
sales.has_value?(10)
