ozone <- read.table("~/MVA2024/ozone.txt", quote="\"", comment.char="")

#metadata
print(dim(ozone))
print(colnames(ozone))

#fit model
model <- lm(ozone$maxO3~maxO3v, data=ozone)
plot(ozone$maxO3~maxO3v, data=ozone)
abline(model)

print(summary(model))

