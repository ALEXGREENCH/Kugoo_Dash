.class Lcom/mob/tools/b/i$62;
.super Lcom/mob/tools/b/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/b/i;->a(IIZZ)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/b/i$a<",
        "Ljava/util/List<",
        "Landroid/location/Location;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/mob/tools/b/i;


# direct methods
.method constructor <init>(Lcom/mob/tools/b/i;Ljava/util/List;IIZZ)V
    .locals 0

    .line 1416
    iput-object p1, p0, Lcom/mob/tools/b/i$62;->e:Lcom/mob/tools/b/i;

    iput p3, p0, Lcom/mob/tools/b/i$62;->a:I

    iput p4, p0, Lcom/mob/tools/b/i$62;->b:I

    iput-boolean p5, p0, Lcom/mob/tools/b/i$62;->c:Z

    iput-boolean p6, p0, Lcom/mob/tools/b/i$62;->d:Z

    invoke-direct {p0, p2}, Lcom/mob/tools/b/i$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)J
    .locals 2

    .line 1416
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mob/tools/b/i$62;->a(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)J"
        }
    .end annotation

    const-wide/32 v0, 0x2bf20

    return-wide v0
.end method

.method protected a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1425
    iget-object v0, p0, Lcom/mob/tools/b/i$62;->e:Lcom/mob/tools/b/i;

    invoke-static {v0}, Lcom/mob/tools/b/i;->a(Lcom/mob/tools/b/i;)Lcom/mob/tools/b/b;

    move-result-object v0

    iget v1, p0, Lcom/mob/tools/b/i$62;->a:I

    iget v2, p0, Lcom/mob/tools/b/i$62;->b:I

    iget-boolean v3, p0, Lcom/mob/tools/b/i$62;->c:Z

    iget-boolean v4, p0, Lcom/mob/tools/b/i$62;->d:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mob/tools/b/b;->a(IIZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1416
    invoke-virtual {p0}, Lcom/mob/tools/b/i$62;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
