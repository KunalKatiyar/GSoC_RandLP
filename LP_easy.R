library(volesti)
library(ggplot2)
pdf("LP_easy_plots.pdf")
for (step in c(1, 20, 100))
{
  for (walk in c("CDHR", "RDHR", "BW"))
  {
    P <- gen_cube(100, 'H')
    points1 <- sample_points(P, n = 300)
    g  <- plot(ggplot(data.frame(x=points1[1,], y=points1[2,])) + geom_point(aes(x=x, y=y, color=walk)) + coord_fixed(xlim = c(-1,1), ylim = c(-1,1)) + ggtitle(sprintf("walk length=%s", step, walk)))
  }
}
dev.off()