.class Lcom/mob/commons/a/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/i;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/a/i;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/i;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/mob/commons/a/i$1;->a:Lcom/mob/commons/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 13

    .line 28
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getSA()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 32
    :cond_0
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/ab;->d:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/commons/ab;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 33
    iget-object v4, p0, Lcom/mob/commons/a/i$1;->a:Lcom/mob/commons/a/i;

    invoke-virtual {v4}, Lcom/mob/commons/a/i;->l()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    cmp-long v0, v4, v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-ltz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_6

    .line 38
    sget-object v5, Lcom/mob/commons/m;->e:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/mob/tools/utils/ResHelper;->readArrayListFromFile(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 40
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    const-string v10, "003iXdgdi"

    .line 41
    invoke-static {v10}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 42
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_1

    .line 47
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    const-string v12, "003i>dgdi"

    .line 48
    invoke-static {v12}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v9, v4

    goto :goto_2

    :cond_5
    move v9, v1

    :goto_2
    if-nez v9, :cond_2

    move v0, v4

    :cond_6
    if-eqz v0, :cond_7

    .line 62
    iget-object v0, p0, Lcom/mob/commons/a/i$1;->a:Lcom/mob/commons/a/i;

    const-string v1, "SALMT"

    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/mob/commons/a/i;->a(JLjava/lang/String;Ljava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/mob/commons/m;->e:Ljava/lang/String;

    invoke-static {p1, v0, v4}, Lcom/mob/tools/utils/ResHelper;->saveArrayListToFile(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 66
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object p1

    sget-object v0, Lcom/mob/commons/ab;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v6, v7}, Lcom/mob/commons/ab;->a(Ljava/lang/String;J)V

    :cond_7
    :goto_3
    return-void
.end method
