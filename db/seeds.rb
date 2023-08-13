10.times { |n| Wish.create!(context: "私の願いは¥#{n + 1}もらうことです。", writer: "writer#{n + 1}") }
