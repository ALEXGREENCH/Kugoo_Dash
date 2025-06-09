.class Lcom/mob/commons/a/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/k;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/a/k;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/k;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/mob/commons/a/k$1;->a:Lcom/mob/commons/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/mob/commons/a/k$1;->a:Lcom/mob/commons/a/k;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/DH$DHResponse;->getIAForce([I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mob/commons/a/k;->a(Lcom/mob/commons/a/k;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/mob/commons/a/k$1;->a:Lcom/mob/commons/a/k;

    invoke-static {v0}, Lcom/mob/commons/a/k;->a(Lcom/mob/commons/a/k;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/mob/commons/a/k$1;->a:Lcom/mob/commons/a/k;

    invoke-static {v0}, Lcom/mob/commons/a/k;->a(Lcom/mob/commons/a/k;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/mob/commons/a/k;->a(Lcom/mob/commons/a/k;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 58
    iget-object v2, p0, Lcom/mob/commons/a/k$1;->a:Lcom/mob/commons/a/k;

    const-string v3, "005hb3ch3bh"

    invoke-static {v3}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0xe10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mob/commons/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 59
    iget-object v4, p0, Lcom/mob/commons/a/k$1;->a:Lcom/mob/commons/a/k;

    invoke-static {v4}, Lcom/mob/commons/a/k;->b(Lcom/mob/commons/a/k;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/mob/commons/a/k$1;->a:Lcom/mob/commons/a/k;

    invoke-static {v0, p1}, Lcom/mob/commons/a/k;->b(Lcom/mob/commons/a/k;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/mob/commons/a/k$1;->a:Lcom/mob/commons/a/k;

    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/ab;->b:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/commons/ab;->b(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/mob/commons/a/k;->a(Lcom/mob/commons/a/k;J)J

    :cond_1
    return-void
.end method
