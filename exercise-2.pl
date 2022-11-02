subdir(private,documents).
subdir(work,documents).

subdir(images,private).
subdir(videos,private).

subdir(research,work).
subdir(teaching,work).

descendants(X) :- forall(subdir(Y,X), (write(Y), nl, descendants(Y))).