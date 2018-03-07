# Output to-do items per file.
todo:
	@rg TODO
.PHONY: todo

fixme:
	@rg FIXME
.PHONY: fixme

note:
	@rg NOTE
.PHONY: note

hack:
	@rg HACK
.PHONY: hack

review:
	@rg REVIEW
.PHONY: review

xxx:
	@rg XXX
.PHONY: xxx
