.class Lcom/mob/tools/b/i$50;
.super Lcom/mob/tools/b/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/b/i;->am()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/b/i$a<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/b/i;


# direct methods
.method constructor <init>(Lcom/mob/tools/b/i;Ljava/lang/Long;)V
    .locals 0

    .line 1237
    iput-object p1, p0, Lcom/mob/tools/b/i$50;->a:Lcom/mob/tools/b/i;

    invoke-direct {p0, p2}, Lcom/mob/tools/b/i$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Long;)J
    .locals 2

    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)J
    .locals 2

    .line 1237
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/mob/tools/b/i$50;->a(Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a()Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1246
    iget-object v0, p0, Lcom/mob/tools/b/i$50;->a:Lcom/mob/tools/b/i;

    invoke-static {v0}, Lcom/mob/tools/b/i;->a(Lcom/mob/tools/b/i;)Lcom/mob/tools/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/b;->af()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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

    .line 1237
    invoke-virtual {p0}, Lcom/mob/tools/b/i$50;->a()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
