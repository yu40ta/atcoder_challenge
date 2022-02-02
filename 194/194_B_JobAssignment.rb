# 標準入力
employee_num = gets.to_i
# タスクA群、B群に分類
task_a, task_b = employee_num.times.map { gets.split.map(&:to_i) }.transpose

# 最小値のインデックスを代入（二重配列からの取り出し）
a_faster_idx = task_a.index(task_a.min)
b_faster_idx = task_b.index(task_b.min)

if a_faster_idx != b_faster_idx
  # 各タスクに異なる従業員を割り当てた場合（時間の長い方が完了時間となる）
  puts [task_a.min, task_b.min].max
else
  # 同じ従業員をタスクA,B両方に割り当てた場合（時間の和が完了時間となる）
  puts [[task_a.min, task_b.min(2)[1]].max, [task_a.min(2)[1], task_b.min].max, task_a.min + task_b.min].min
end