myHead [] = error "error ,empty list kann nicht head machen"
myHead (x : _) = x
