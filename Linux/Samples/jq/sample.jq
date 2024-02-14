[
  to_entries[]
    | .key as $key
    | .value[]?
    | {
        "type": $key,
        "name": (
          if $key == "meats" then
            .name + "/" + .brands
          else
            .name
          end
        ),
        "price": .price
      }
]
