.class Lcom/mob/tools/b/i$19;
.super Lcom/mob/tools/b/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/b/i;->y()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/b/i$a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/b/i;


# direct methods
.method constructor <init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/mob/tools/b/i$19;->a:Lcom/mob/tools/b/i;

    invoke-direct {p0, p2}, Lcom/mob/tools/b/i$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)J
    .locals 2

    .line 515
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mob/tools/b/i$19;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Ljava/lang/String;)J
    .locals 2

    const-string v0, "0"

    .line 519
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/32 v0, 0x5265c00

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x240c8400

    return-wide v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/mob/tools/b/i$19;->a:Lcom/mob/tools/b/i;

    invoke-static {v0}, Lcom/mob/tools/b/i;->a(Lcom/mob/tools/b/i;)Lcom/mob/tools/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/b;->D()Ljava/lang/String;

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

    .line 515
    invoke-virtual {p0}, Lcom/mob/tools/b/i$19;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
