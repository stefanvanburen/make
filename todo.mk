# Typically speaking, these are the highlighted commentstrings in default vim

# Searches for 'TODO' using rg
todo:
	@rg TODO
.PHONY: todo

# Searches for 'FIXME' using rg
fixme:
	@rg FIXME
.PHONY: fixme

# Searches for 'NOTE' using rg
note:
	@rg NOTE
.PHONY: note

# Searches for 'HACK' using rg
hack:
	@rg HACK
.PHONY: hack

# Searches for 'REVIEW' using rg
review:
	@rg REVIEW
.PHONY: review

# Searches for 'XXX' using rg
xxx:
	@rg XXX
.PHONY: xxx
