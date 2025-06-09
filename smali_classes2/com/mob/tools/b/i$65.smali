.class Lcom/mob/tools/b/i$65;
.super Lcom/mob/tools/b/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/b/i;->f(Ljava/lang/String;)J
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mob/tools/b/i;


# direct methods
.method constructor <init>(Lcom/mob/tools/b/i;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 1462
    iput-object p1, p0, Lcom/mob/tools/b/i$65;->b:Lcom/mob/tools/b/i;

    iput-object p3, p0, Lcom/mob/tools/b/i$65;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/mob/tools/b/i$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Long;)J
    .locals 2

    const-wide/32 v0, 0x240c8400

    return-wide v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)J
    .locals 2

    .line 1462
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/mob/tools/b/i$65;->a(Ljava/lang/Long;)J

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

    .line 1465
    iget-object v0, p0, Lcom/mob/tools/b/i$65;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/tools/utils/FileUtils;->getLATime(Ljava/lang/String;)J

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

    .line 1462
    invoke-virtual {p0}, Lcom/mob/tools/b/i$65;->a()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
