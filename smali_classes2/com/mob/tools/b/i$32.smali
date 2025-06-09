.class Lcom/mob/tools/b/i$32;
.super Lcom/mob/tools/b/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/b/i;->i(Z)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/b/i$a<",
        "Ljava/util/ArrayList<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/b/i;


# direct methods
.method constructor <init>(Lcom/mob/tools/b/i;Ljava/util/ArrayList;)V
    .locals 0

    .line 819
    iput-object p1, p0, Lcom/mob/tools/b/i$32;->a:Lcom/mob/tools/b/i;

    invoke-direct {p0, p2}, Lcom/mob/tools/b/i$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)J
    .locals 2

    .line 819
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/mob/tools/b/i$32;->a(Ljava/util/ArrayList;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Ljava/util/ArrayList;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)J"
        }
    .end annotation

    .line 823
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 824
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 825
    iget-object v2, p0, Lcom/mob/tools/b/i$32;->a:Lcom/mob/tools/b/i;

    invoke-static {v2, p1}, Lcom/mob/tools/b/i;->a(Lcom/mob/tools/b/i;Ljava/util/Calendar;)J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x5265c00

    :goto_0
    return-wide v2
.end method

.method protected a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 831
    iget-object v0, p0, Lcom/mob/tools/b/i$32;->a:Lcom/mob/tools/b/i;

    invoke-static {v0}, Lcom/mob/tools/b/i;->a(Lcom/mob/tools/b/i;)Lcom/mob/tools/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/b;->s()Ljava/util/ArrayList;

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

    .line 819
    invoke-virtual {p0}, Lcom/mob/tools/b/i$32;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
