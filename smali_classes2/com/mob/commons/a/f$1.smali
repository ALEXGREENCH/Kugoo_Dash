.class Lcom/mob/commons/a/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/f;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/a/f;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/f;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mob/commons/a/f$1;->a:Lcom/mob/commons/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 11

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 63
    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/DH$DHResponse;->getPosCommForce([I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    new-array v1, v0, [I

    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/DH$DHResponse;->getPosCommForce([I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 65
    iget-object v1, p0, Lcom/mob/commons/a/f$1;->a:Lcom/mob/commons/a/f;

    new-array v2, v0, [I

    invoke-virtual {p1, v2}, Lcom/mob/tools/utils/DH$DHResponse;->getPosCommForce([I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/commons/a/f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 67
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 68
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_8

    .line 69
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 72
    iget-object v4, p0, Lcom/mob/commons/a/f$1;->a:Lcom/mob/commons/a/f;

    invoke-virtual {v4, v2, v2}, Lcom/mob/commons/a/f;->a(Ljava/util/HashMap;Ljava/util/HashMap;)V

    const-string v4, "nl"

    .line 73
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 74
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    move-object v4, v6

    .line 76
    :goto_0
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getMcdi()Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getMbcdi()Ljava/lang/String;

    move-result-object v7

    .line 78
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "cbsmt"

    .line 79
    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "cssmt"

    .line 82
    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v4, :cond_3

    .line 85
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 86
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    const-string v0, "ltdmt"

    .line 87
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lndmt"

    .line 88
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_1

    .line 91
    :cond_3
    new-instance v5, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/mob/commons/a/f$1;->a:Lcom/mob/commons/a/f;

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/DH$DHResponse;->getPosCommForce([I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/mob/commons/a/f;->b(Ljava/lang/Object;)Ljava/util/TreeMap;

    move-result-object p1

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object v0, v5

    .line 93
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/ab;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lcom/mob/commons/ab;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v1

    sget-object v5, Lcom/mob/commons/ab;->h:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v5, v6, v7}, Lcom/mob/commons/ab;->b(Ljava/lang/String;J)J

    move-result-wide v5

    .line 96
    iget-object v1, p0, Lcom/mob/commons/a/f$1;->a:Lcom/mob/commons/a/f;

    const-string v7, "0066fmYiDgl6fli"

    invoke-static {v7}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0xe10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/mob/commons/a/f;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sub-long v0, v9, v5

    cmp-long v0, v0, v7

    if-ltz v0, :cond_8

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/mob/commons/a/f$1;->a:Lcom/mob/commons/a/f;

    invoke-virtual {v0}, Lcom/mob/commons/a/f;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    sub-long v0, v9, v5

    cmp-long v0, v0, v7

    if-ltz v0, :cond_6

    const/4 v3, 0x2

    goto :goto_2

    :cond_6
    const/4 v3, 0x3

    .line 108
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "pt"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_7

    .line 109
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_7
    iget-object v0, p0, Lcom/mob/commons/a/f$1;->a:Lcom/mob/commons/a/f;

    const-string v1, "O_LCMT"

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/a/f;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 113
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/ab;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mob/commons/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object p1

    sget-object v0, Lcom/mob/commons/ab;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v9, v10}, Lcom/mob/commons/ab;->a(Ljava/lang/String;J)V

    :cond_8
    return-void
.end method
