.class Lcom/mob/tools/b/i$52;
.super Lcom/mob/tools/b/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/b/i;->ao()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/b/i$a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/b/i;


# direct methods
.method constructor <init>(Lcom/mob/tools/b/i;Ljava/lang/Integer;)V
    .locals 0

    .line 1269
    iput-object p1, p0, Lcom/mob/tools/b/i$52;->a:Lcom/mob/tools/b/i;

    invoke-direct {p0, p2}, Lcom/mob/tools/b/i$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Integer;)J
    .locals 2

    const-wide/32 v0, 0x240c8400

    return-wide v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)J
    .locals 2

    .line 1269
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mob/tools/b/i$52;->a(Ljava/lang/Integer;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1278
    iget-object v0, p0, Lcom/mob/tools/b/i$52;->a:Lcom/mob/tools/b/i;

    invoke-static {v0}, Lcom/mob/tools/b/i;->a(Lcom/mob/tools/b/i;)Lcom/mob/tools/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/b;->ah()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 1269
    invoke-virtual {p0}, Lcom/mob/tools/b/i$52;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
