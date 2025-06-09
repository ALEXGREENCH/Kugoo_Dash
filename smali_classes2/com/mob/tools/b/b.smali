.class public Lcom/mob/tools/b/b;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/mob/tools/b/b;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/mob/tools/b/b;
    .locals 2

    const-class v0, Lcom/mob/tools/b/b;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lcom/mob/tools/b/b;->b:Lcom/mob/tools/b/b;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 87
    new-instance v1, Lcom/mob/tools/b/b;

    invoke-direct {v1, p0}, Lcom/mob/tools/b/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/tools/b/b;->b:Lcom/mob/tools/b/b;

    .line 89
    :cond_0
    sget-object p0, Lcom/mob/tools/b/b;->b:Lcom/mob/tools/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 725
    invoke-static {}, Lcom/mob/commons/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 726
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 727
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 728
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 729
    iget-object v2, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1, v4}, Lcom/mob/tools/b/a;->b(ZILjava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 731
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 732
    invoke-virtual {p0, v0}, Lcom/mob/tools/b/b;->a(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 736
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private a(Ljava/io/File;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 415
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->readFromFileNoCompress(Ljava/io/File;)[B

    move-result-object p1

    .line 416
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/mob/tools/b/b;->a(Ljava/lang/String;[B)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/Object;)Ljava/util/HashMap;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2143
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/utils/b$a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2144
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2145
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/utils/b$a;->b(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "0"

    const-string v4, ""

    const/16 v5, 0xa

    const/4 v6, -0x1

    if-eqz v2, :cond_1

    .line 2146
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->h(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2147
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->i(Ljava/lang/Object;)I

    move-result v7

    if-ge v7, v5, :cond_0

    .line 2148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2149
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->j(Ljava/lang/Object;)I

    move-result v4

    .line 2150
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->k(Ljava/lang/Object;)I

    move-result v5

    int-to-long v7, v5

    .line 2151
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->l(Ljava/lang/Object;)I

    move-result v0

    const/4 v5, 0x1

    :goto_1
    move v9, v5

    move v5, v6

    move v10, v5

    move v11, v10

    move-wide v12, v7

    move v7, v11

    :goto_2
    move v8, v7

    move v6, v4

    move v4, v8

    goto/16 :goto_6

    .line 2153
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/utils/b$a;->c(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    .line 2154
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->m(Ljava/lang/Object;)I

    move-result v2

    .line 2155
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->n(Ljava/lang/Object;)I

    move-result v3

    .line 2156
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->o(Ljava/lang/Object;)I

    move-result v4

    .line 2157
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->p(Ljava/lang/Object;)I

    move-result v5

    .line 2158
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->q(Ljava/lang/Object;)I

    move-result v0

    int-to-long v8, v0

    const/4 v0, 0x2

    move v10, v6

    move v11, v10

    move-wide v12, v8

    move v9, v0

    move v8, v5

    move v0, v11

    move v5, v3

    move-object v3, v7

    move v7, v4

    move v4, v2

    move-object v2, v3

    goto/16 :goto_6

    .line 2160
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/utils/b$a;->d(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2161
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->h(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2162
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->i(Ljava/lang/Object;)I

    move-result v7

    if-ge v7, v5, :cond_3

    .line 2163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2164
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->j(Ljava/lang/Object;)I

    move-result v4

    .line 2165
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->k(Ljava/lang/Object;)I

    move-result v5

    int-to-long v7, v5

    .line 2166
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->l(Ljava/lang/Object;)I

    move-result v0

    const/4 v5, 0x3

    goto :goto_1

    .line 2168
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/utils/b$a;->e(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2169
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->h(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2170
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->i(Ljava/lang/Object;)I

    move-result v7

    if-ge v7, v5, :cond_5

    .line 2171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_4

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    :goto_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2172
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->r(Ljava/lang/Object;)I

    move-result v4

    .line 2173
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->s(Ljava/lang/Object;)I

    move-result v5

    int-to-long v7, v5

    .line 2174
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->t(Ljava/lang/Object;)I

    move-result v5

    .line 2176
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->u(Ljava/lang/Object;)I

    move-result v0

    const/4 v9, 0x4

    move v11, v0

    move v10, v5

    move v0, v6

    move v5, v0

    move-wide v12, v7

    move v7, v5

    goto/16 :goto_2

    .line 2179
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/utils/b$a;->f(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_7

    .line 2181
    :try_start_0
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 2182
    :try_start_1
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2183
    :try_start_2
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->r(Ljava/lang/Object;)I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2184
    :try_start_3
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->x(Ljava/lang/Object;)J

    move-result-wide v3

    .line 2185
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->t(Ljava/lang/Object;)I

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2186
    :try_start_4
    invoke-static {v0}, Lcom/mob/tools/utils/b$a;->y(Ljava/lang/Object;)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v9, 0x5

    move v11, v0

    move-wide v12, v3

    move-object v3, v5

    move v0, v6

    move v4, v0

    move v5, v4

    move v10, v8

    move v8, v5

    move v6, v7

    move v7, v8

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object v15, v5

    move-object v5, v0

    move v0, v7

    move-wide/from16 v16, v3

    move-object v3, v15

    move v4, v8

    move-wide/from16 v7, v16

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v15, v5

    move-object v5, v0

    move v0, v7

    move-wide v7, v3

    move-object v3, v15

    move v4, v6

    goto :goto_5

    :catchall_2
    move-exception v0

    move-wide v7, v3

    move-object v3, v5

    move v4, v6

    move-object v5, v0

    move v0, v4

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v5, v0

    move v0, v6

    move-wide v15, v3

    move v4, v0

    move-object v3, v7

    move-wide v7, v15

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v5, v0

    move v0, v6

    move-object v2, v7

    move-wide v7, v3

    move v4, v0

    move-object v3, v2

    .line 2189
    :goto_5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move v10, v4

    move v4, v6

    move v5, v4

    move v9, v5

    move v11, v9

    move-wide v12, v7

    move v7, v11

    move v8, v7

    move v6, v0

    move v0, v8

    goto :goto_6

    :cond_7
    move-wide v12, v3

    move v0, v6

    move v4, v0

    move v5, v4

    move v8, v5

    move v9, v8

    move v10, v9

    move v11, v10

    move-object v2, v7

    move-object v3, v2

    move v7, v11

    :goto_6
    const-string v14, "003hed"

    .line 2193
    invoke-static {v14}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "004dghh"

    .line 2195
    invoke-static {v6}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "003kOgj6d"

    .line 2196
    invoke-static {v6}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "003Agjejed"

    .line 2197
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "003f8ejed"

    .line 2198
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "003hej"

    .line 2199
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "003hSelFf"

    .line 2200
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mcc"

    .line 2203
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mnc"

    .line 2204
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "004j!fd>kg"

    .line 2205
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pci"

    .line 2206
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "xarfcn"

    .line 2207
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private a(Ljava/lang/String;[B)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 421
    :try_start_0
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->AES128Decode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    .line 422
    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 424
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 426
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method private a(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    .line 918
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 919
    :goto_0
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method private aA()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 832
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 833
    invoke-static {}, Lcom/mob/commons/d;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x2710

    :goto_0
    const/16 v2, 0x32c8

    if-gt v1, v2, :cond_1

    .line 835
    iget-object v2, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 836
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v6

    const/4 v5, 0x0

    const-string v7, "getPackagesForUid"

    .line 835
    invoke-static {v2, v7, v4, v3, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 837
    aget-object v3, v2, v6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v2, v6

    const-string v4, "035d0elegemfkelelfk%hgBemSefAedekelejedem4jDekej*di8ekeleg_ghUejggek8eNekfd"

    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 838
    aget-object v2, v2, v6

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private aB()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "016ef0edekelejedemelgjemgmQg ggehfk"

    .line 2271
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "019;ejgjgm<g-ggehfkfkNg!ekfeelKffgdjg1ed"

    .line 2272
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0
.end method

.method private at()Ljava/lang/String;
    .locals 3

    const-string v0, "null:null:"

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/mob/tools/b/a;->l()Ljava/lang/String;

    move-result-object v1

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->SHA1(Ljava/lang/String;)[B

    move-result-object v0

    .line 325
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->byteToHex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 327
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private au()Ljava/lang/String;
    .locals 4

    const-string v0, "null:null:"

    .line 363
    invoke-direct {p0}, Lcom/mob/tools/b/b;->av()Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v3, "010[edIg.eeejQdgAff6f=fgel"

    .line 368
    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    :try_start_0
    const-string v3, "0050egeledBgh"

    .line 374
    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->SHA1(Ljava/lang/String;)[B

    move-result-object v0

    .line 377
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->byteToHex([B)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 379
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-object v2
.end method

.method private av()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    const-string v1, "014dKelegeg!m(edgggjJm!emedehejed"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    const/4 v1, 0x0

    const/4 v4, 0x2

    .line 394
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 395
    :try_start_1
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v6, v4, v1

    aput-object v5, v4, v2

    .line 400
    invoke-static {v4}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-object v6, v3

    goto :goto_0

    :catchall_1
    move-object v5, v3

    move-object v6, v5

    :catchall_2
    :goto_0
    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v6, v4, v1

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    move-object v7, v3

    :goto_1
    if-eqz v7, :cond_0

    .line 403
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    :cond_0
    invoke-direct {p0, v0}, Lcom/mob/tools/b/b;->a(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v7

    .line 407
    :cond_1
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0101edXg1eeejDdgNff6f!fgel"

    .line 408
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0

    :cond_2
    return-object v3
.end method

.method private aw()Ljava/lang/String;
    .locals 8

    .line 430
    invoke-virtual {p0}, Lcom/mob/tools/b/b;->t()Ljava/lang/String;

    move-result-object v0

    .line 432
    new-instance v1, Ljava/io/File;

    const-string v2, "008,fm\'ieBekGg\'fmgmjd"

    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    new-instance v0, Ljava/io/File;

    const-string v2, "003$emedfi"

    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    const-string v2, "003-emedfi"

    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getCacheRootFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 437
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    const-string v1, "003%emedfi"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getCacheRootFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 444
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 452
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 453
    :try_start_1
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 454
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 455
    instance-of v7, v6, [C

    if-eqz v7, :cond_2

    .line 456
    check-cast v6, [C

    .line 457
    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v0, v4, v3

    aput-object v5, v4, v2

    .line 462
    invoke-static {v4}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v6

    goto :goto_0

    :catchall_1
    move-exception v6

    move-object v0, v1

    goto :goto_0

    :catchall_2
    move-exception v6

    move-object v0, v1

    move-object v5, v0

    .line 460
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v0, v4, v3

    aput-object v5, v4, v2

    .line 462
    invoke-static {v4}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    :goto_1
    return-object v1

    :catchall_3
    move-exception v1

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v0, v4, v3

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 463
    throw v1
.end method

.method private ax()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 628
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    const-string v1, "004:em=efTgj"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->readObjectFromFile(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 631
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 632
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    const-string v1, "004Xem7efAgj"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private ay()Ljava/util/Set;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "007Ged,g^gj>j-ekelfd"

    .line 740
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 741
    invoke-static {}, Lcom/mob/commons/d;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "0056egQgXejheeh"

    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mob/tools/b/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/mob/tools/b/j;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    const-string v7, "016k5egjg^h_ejgj8j>jgFkedXfiVe<fk gZgj"

    .line 747
    invoke-static {v7}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mob/commons/v;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    const-string v8, "014>fkJgj?ff1fk9eh1j^fm>jAek%geBeg"

    .line 748
    invoke-static {v8}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 749
    :try_start_2
    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "utf-8"

    invoke-direct {v9, v8, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 750
    :try_start_3
    new-instance v10, Ljava/io/BufferedReader;

    invoke-direct {v10, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 751
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_1

    .line 753
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 754
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x8

    if-le v11, v12, :cond_0

    .line 755
    invoke-virtual {v5, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v13, "008kedNfiUeAfk*gl"

    .line 756
    invoke-static {v13}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 757
    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 758
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 759
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 763
    :cond_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_1
    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v10, v4, v6

    aput-object v9, v4, v3

    aput-object v8, v4, v2

    .line 769
    invoke-static {v4}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    if-eqz v7, :cond_3

    .line 772
    :try_start_5
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    goto :goto_2

    :catchall_0
    move-exception v5

    goto :goto_1

    :catchall_1
    move-exception v10

    move-object v14, v10

    move-object v10, v5

    move-object v5, v14

    goto :goto_1

    :catchall_2
    move-exception v9

    move-object v10, v5

    move-object v5, v9

    move-object v9, v10

    goto :goto_1

    :catchall_3
    move-exception v8

    move-object v9, v5

    move-object v10, v9

    move-object v5, v8

    move-object v8, v10

    goto :goto_1

    :catchall_4
    move-exception v7

    move-object v8, v5

    move-object v9, v8

    move-object v10, v9

    move-object v5, v7

    move-object v7, v10

    .line 767
    :goto_1
    :try_start_6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v10, v4, v6

    aput-object v9, v4, v3

    aput-object v8, v4, v2

    .line 769
    invoke-static {v4}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    if-eqz v7, :cond_3

    .line 772
    :try_start_7
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_2

    :catchall_5
    move-exception v1

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v10, v4, v6

    aput-object v9, v4, v3

    aput-object v8, v4, v2

    .line 769
    invoke-static {v4}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    if-eqz v7, :cond_2

    .line 772
    :try_start_8
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 776
    :catchall_6
    :cond_2
    throw v1

    :catchall_7
    :cond_3
    :goto_2
    return-object v1
.end method

.method private az()Ljava/util/Set;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "007.ed8gTgjAj$ekelfd"

    .line 786
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 787
    invoke-static {}, Lcom/mob/commons/d;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 789
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "032d$egedjg9ked:fi[e\'fk)gYjgefeh(g=ekfdil2edjPejeeej4j.ejPg^gjjgil1eWjg"

    invoke-static {v8}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "026efZedekelejedemejBfjgfj,emEedj1ejel!fFemidgefffh"

    .line 790
    invoke-static {v8}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "008>ililehgj=gHekjggi"

    .line 791
    invoke-static {v8}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 789
    invoke-static {v7}, Lcom/mob/commons/v;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    const-string v8, "014Rfk5gjUff^fk ehCj[fm9jQekTgeIeg"

    .line 792
    invoke-static {v8}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v8, :cond_2

    .line 794
    :try_start_2
    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "utf-8"

    invoke-direct {v9, v8, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 795
    :try_start_3
    new-instance v10, Ljava/io/BufferedReader;

    invoke-direct {v10, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 796
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const-string v11, "012kedRfi=eNfkXgBfh5e@eg!g4jj"

    .line 797
    invoke-static {v11}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_0
    if-eqz v6, :cond_1

    .line 799
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 800
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-le v12, v13, :cond_0

    .line 801
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 802
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 803
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 804
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 805
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 809
    :cond_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_1
    move-object v6, v10

    goto :goto_1

    :catchall_0
    move-exception v6

    goto :goto_2

    :catchall_1
    move-exception v10

    move-object v14, v10

    move-object v10, v6

    move-object v6, v14

    goto :goto_2

    :catchall_2
    move-exception v9

    move-object v10, v6

    move-object v6, v9

    move-object v9, v10

    goto :goto_2

    :cond_2
    move-object v9, v6

    :goto_1
    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v6, v4, v5

    aput-object v9, v4, v3

    aput-object v8, v4, v2

    .line 816
    invoke-static {v4}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    if-eqz v7, :cond_4

    .line 819
    :try_start_5
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    goto :goto_3

    :catchall_3
    move-exception v8

    move-object v9, v6

    move-object v10, v9

    move-object v6, v8

    move-object v8, v10

    goto :goto_2

    :catchall_4
    move-exception v7

    move-object v8, v6

    move-object v9, v8

    move-object v10, v9

    move-object v6, v7

    move-object v7, v10

    .line 814
    :goto_2
    :try_start_6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v10, v4, v5

    aput-object v9, v4, v3

    aput-object v8, v4, v2

    .line 816
    invoke-static {v4}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    if-eqz v7, :cond_4

    .line 819
    :try_start_7
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_3

    :catchall_5
    move-exception v1

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v10, v4, v5

    aput-object v9, v4, v3

    aput-object v8, v4, v2

    .line 816
    invoke-static {v4}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    if-eqz v7, :cond_3

    .line 819
    :try_start_8
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 823
    :catchall_6
    :cond_3
    throw v1

    :catchall_7
    :cond_4
    :goto_3
    return-object v1
.end method

.method private b(Landroid/content/Context;)I
    .locals 3

    .line 1913
    invoke-virtual {p0}, Lcom/mob/tools/b/b;->Y()Ljava/lang/String;

    move-result-object v0

    .line 1914
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1915
    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mob/tools/b/b;->o()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/mob/tools/b/a;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mob/tools/b/b;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mob/tools/c;->f(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1916
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v2

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private b(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 710
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/b/b;->aA()Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    .line 706
    :cond_1
    iget-object v2, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/mob/tools/b/j;->a(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    .line 701
    :cond_2
    invoke-direct {p0}, Lcom/mob/tools/b/b;->ay()Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    .line 696
    :cond_3
    invoke-direct {p0}, Lcom/mob/tools/b/b;->az()Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    .line 691
    :cond_4
    iget-object v2, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/mob/tools/b/j;->a(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    .line 714
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 715
    invoke-direct {p0, v1}, Lcom/mob/tools/b/b;->a(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 718
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 720
    :cond_5
    :goto_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DH PD: ap "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tpe "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v0
.end method

.method private b(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 639
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    const-string v1, "004[em@efVgj"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ResHelper;->saveObjectToFile(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 6

    .line 468
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    const-string v1, "003;emedfi"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getCacheRootFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 476
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 477
    :try_start_1
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 478
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 479
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 480
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array p1, v4, [Ljava/io/Closeable;

    aput-object v0, p1, v3

    aput-object v5, p1, v2

    .line 484
    invoke-static {p1}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v5, v1

    .line 482
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    new-array p1, v4, [Ljava/io/Closeable;

    aput-object v1, p1, v3

    aput-object v5, p1, v2

    .line 484
    invoke-static {p1}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    :goto_1
    return-void

    :catchall_3
    move-exception p1

    new-array v0, v4, [Ljava/io/Closeable;

    aput-object v1, v0, v3

    aput-object v5, v0, v2

    invoke-static {v0}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 485
    throw p1
.end method

.method private g(Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "007Ved+gYgj j8ekelfd"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    const-string v7, "002k8gj"

    .line 2218
    invoke-static {v7}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mob/commons/v;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    const-string v8, "014Jfk^gj-ffBfk2ehJj(fm-jVek5ge^eg"

    .line 2219
    invoke-static {v8}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2220
    :try_start_2
    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "utf-8"

    invoke-direct {v9, v8, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2221
    :try_start_3
    new-instance v10, Ljava/io/BufferedReader;

    invoke-direct {v10, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    const-string v5, "^\\s*(\\S+)\\s+(\\d+)\\s+(\\d+)\\s+\\S+\\s+\\S+\\s+\\S+\\s+(\\d+)\\s+(\\w)\\s+(.+)$"

    .line 2226
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v11, v6

    .line 2229
    :cond_0
    :goto_0
    :try_start_5
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 2231
    invoke-virtual {v5, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 2232
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2235
    invoke-virtual {v12, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 2236
    invoke-virtual {v12, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x6

    .line 2239
    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 2240
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 2241
    invoke-static {v15, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-static {v13, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 2242
    invoke-static {v14, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_1
    :goto_1
    move v11, v4

    goto :goto_0

    :cond_2
    if-eqz v12, :cond_0

    .line 2245
    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v12, :cond_0

    goto :goto_1

    :cond_3
    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v10, v0, v4

    aput-object v9, v0, v6

    aput-object v8, v0, v2

    .line 2255
    invoke-static {v0}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    if-eqz v7, :cond_4

    .line 2258
    :try_start_6
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_5

    :catchall_0
    move v11, v6

    :catchall_1
    move-object v5, v10

    goto :goto_4

    :catchall_2
    move-object v9, v5

    goto :goto_3

    :catchall_3
    move-object v8, v5

    goto :goto_2

    :catchall_4
    move-object v7, v5

    move-object v8, v7

    :goto_2
    move-object v9, v8

    :catchall_5
    :goto_3
    move v11, v6

    :goto_4
    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v5, v0, v4

    aput-object v9, v0, v6

    aput-object v8, v0, v2

    .line 2255
    invoke-static {v0}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    if-eqz v7, :cond_4

    .line 2258
    :try_start_7
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :catchall_6
    :cond_4
    :goto_5
    return v11
.end method

.method public static x()Landroid/content/Context;
    .locals 1

    .line 1040
    invoke-static {}, Lcom/mob/commons/v;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 4

    .line 1205
    invoke-static {}, Lcom/mob/commons/d;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->isWifiDataEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "036efCedekelejedemGkg0ekegejgjgjejel6fGemfeglgefhjehjeihgffhdffeifmgdgegdhj"

    .line 1206
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0041ghejfgej"

    .line 1207
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "0090gj8je[ek%jNfmDdef"

    .line 1211
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public B()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1230
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "013mk$ekel6dmdkJehej fQfgel"

    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 1231
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1232
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "010k$ekel@dgNgjgjelekgj"

    .line 1233
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    :cond_0
    :goto_0
    move-object v5, v4

    .line 1237
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 1238
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v5, :cond_0

    .line 1240
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1245
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "009kAekel8dgDgjgjelek"

    .line 1246
    invoke-static {v7}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v5, :cond_3

    .line 1248
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    :cond_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :cond_4
    const-string v7, ":"

    .line 1252
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1253
    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_1

    const/4 v7, 0x0

    if-nez v5, :cond_5

    .line 1255
    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1257
    :cond_5
    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1261
    :cond_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1262
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 1264
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_2
    return-object v0
.end method

.method public C()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1275
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_5

    const/4 v1, 0x0

    .line 1277
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v3, "017mk.ekel9dmjjXfd m3edekejeeSgIekgj"

    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 1278
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1281
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1282
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 1285
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    .line 1286
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1287
    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 1288
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1289
    array-length v6, v4

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v4, v7

    .line 1290
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1291
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1294
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1297
    :cond_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 1298
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 1300
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_5
    :goto_2
    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 3

    .line 1311
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/e;->a(Landroid/content/Context;)Lcom/mob/tools/b/e;

    move-result-object v0

    const-string v1, "014,ekelemfiGg2ek1fgh,emefOgBegeh"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public E()Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 1324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "006EgjedCde(eked"

    .line 1325
    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "004Red_eje"

    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    :goto_0
    const-string v3, "available"

    if-ge v4, v1, :cond_0

    .line 1326
    aget-object v5, v2, v4

    .line 1327
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v7, -0x1

    .line 1328
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "004Vfgek9gg"

    .line 1329
    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "005jKel?jeh"

    .line 1330
    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1334
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1335
    invoke-virtual {p0}, Lcom/mob/tools/b/b;->t()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "006 gjed[de<eked"

    .line 1337
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "004Ued4eje"

    .line 1341
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1348
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/StatFs;

    .line 1354
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v7

    mul-long/2addr v5, v7

    .line 1355
    invoke-virtual {v4}, Landroid/os/StatFs;->getFreeBlocksLong()J

    move-result-wide v7

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v9

    mul-long/2addr v7, v9

    .line 1356
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v9

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v11

    mul-long/2addr v9, v11

    .line 1358
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 1359
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "004_fgek[gg"

    .line 1360
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "005j<elTjeh"

    .line 1361
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public F()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1372
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v1, -0x1

    .line 1373
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "available"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "005jCel*jeh"

    .line 1374
    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "005Cejgjgfelgh"

    .line 1375
    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "009ji+ekKg5gj1i;elWhMed"

    .line 1376
    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "008edj,ejeeej j%fd"

    .line 1378
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1379
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v4, "013-fk gj7id]g4egelekfdff%fMfgel"

    .line 1380
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x0

    invoke-static {v1, v4, v6, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "005jTelSjeh"

    .line 1383
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "005;ejgjgfelgh"

    .line 1385
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v3, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-eqz v2, :cond_0

    const-wide/16 v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "009jiUek.gDgj]i@el?h,ed"

    .line 1386
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v3, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .line 1392
    invoke-static {}, Lcom/mob/tools/utils/g;->a()Lcom/mob/tools/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/g;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H()Z
    .locals 8

    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "020dBelegem4j6elLkWihelIif2ghehemeg9eGfkejgjfi"

    .line 1399
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "024GejelemfkejBjiMehggem+i5ehgjfifdedfkemegSe(fkejgjfi"

    .line 1400
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "032AedJgBemekelggeeemFefJedekelejedemfjWkPelgjBg\'edemej,fVgjAjehhgMek"

    .line 1401
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "028:elekfkemeg?gAelghTdejSemKgQedfjAkAelgjXgFedemeg!efeLfk7g0ek"

    .line 1402
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const-string v2, "0277egelEgSemgj3iMejheehfiehemekCg3edejek8gdj]gjKj]elekFe+fkOg"

    .line 1403
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v1, v5

    const-string v2, "018Veg6gSemghHgQejgj]i;ehemfi?gFek%fgh>gjeh"

    .line 1404
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v1, v5

    const-string v2, "027Aejelemfkej6jiLehggemeeeeggifgiiigiemeg?ei1elgjTi3elihel"

    .line 1405
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    aput-object v2, v1, v5

    const-string v2, "013\'glelelfiemhfejehhgehemhh=k"

    .line 1406
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x7

    aput-object v2, v1, v5

    const/16 v2, 0x8

    const-string v5, "club.youppgd.adhook"

    aput-object v5, v1, v2

    const-string v2, "027Fej-dAehemNf0eh;hhkjSekemWekkh=ejgjWjGed^gjgdjXelek"

    .line 1408
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x9

    aput-object v2, v1, v5

    const-string v2, "032Eejelemfkej:ji\'ehggemEi6ehgjfifdedfkemeg,g9egelekfded]gjgdjZelek"

    .line 1409
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xa

    aput-object v2, v1, v5

    const-string v2, "034d,elegemfkej-ji[ehggemUdekfjRekej?kEgjemfiSgWekQfgh\'fg$heQgj@ig%ek"

    .line 1410
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xb

    aput-object v2, v1, v5

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1412
    aget-object v5, v1, v2

    .line 1414
    :try_start_0
    iget-object v6, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v6

    invoke-interface {v6, v5, v3}, Lcom/mob/tools/b/a;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    return v4

    :catchall_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1423
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "msk"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 1425
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v5, v0, v2

    .line 1426
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "035Wed=g+emekelggeeemMefOedekelejedemfjVk)elgjMgOedemhhGkPelgjLgDedgkekejedfk6g"

    invoke-static {v6}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1434
    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "0369ed<g3emekelggeeem_efYedekelejedemfjTkXelgj3gNedemhhWkDelgj2gOedgl(ghkg4ekgj"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1436
    :try_start_3
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "035Ied!g9emekelggeeem6ef9edekelejedemfj.kIelgj=g+edemhh(k5elgj2gWedgkekejedfkTg"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_0
    return v4

    :catchall_2
    const/4 v0, 0x0

    .line 1454
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "006mkLekel3dm"

    invoke-static {v6}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "005m6eg%ek?gj"

    invoke-static {v6}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move v0, v3

    .line 1457
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 1458
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "006PfjWkJelgj;gCed"

    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :cond_4
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v1, v2, v3

    .line 1464
    invoke-static {v2}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    return v0

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 1462
    :goto_3
    :try_start_6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    new-array v0, v4, [Ljava/io/Closeable;

    aput-object v1, v0, v3

    .line 1464
    invoke-static {v0}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    return v3

    :catchall_5
    move-exception v0

    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 1465
    throw v0

    :catch_1
    return v4
.end method

.method public I()Z
    .locals 2

    .line 1480
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J()Z
    .locals 3

    const/4 v0, 0x0

    .line 1493
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    .line 1494
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    .line 1493
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method public K()Z
    .locals 3

    const/4 v0, 0x0

    .line 1514
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    .line 1515
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "development_settings_enabled"

    .line 1514
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method public L()Z
    .locals 4

    .line 1530
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1533
    invoke-static {v1, v0}, Lcom/mob/commons/v;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "plugged"

    const/4 v3, -0x1

    .line 1535
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public M()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public N()Z
    .locals 4

    .line 1549
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v1, v3}, Lcom/mob/tools/b/a;->a(ZLjava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1550
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method

.method public O()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "014ijjk<emMkFekelfjfdglelgj(j"

    .line 1561
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "014ijjkSemQk0ekelfjfdhmelek3j"

    .line 1562
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v2, "-1"

    .line 1565
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move v2, v3

    .line 1572
    :goto_1
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_1

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    :catchall_1
    :cond_1
    return v0
.end method

.method public P()Z
    .locals 5

    .line 1584
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1585
    :goto_0
    iget-object v4, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/mob/tools/b/a;->ak()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v4, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public Q()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1597
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 1598
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 1602
    :cond_0
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 1603
    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 1604
    iget-object v2, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 1605
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v1, :cond_1

    .line 1607
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 1609
    :cond_1
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 1611
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1613
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public R()Ljava/lang/String;
    .locals 2

    .line 1625
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    const-string v1, "015YekelemggehejDh\'edemfg*he0eeelek"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mob/tools/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public S()Ljava/lang/String;
    .locals 2

    .line 1635
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    const-string v1, "020>fkgjegemee3g6ekgjejelEf)emgg?eTgj9gJggSefGed"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mob/tools/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public T()Ljava/lang/String;
    .locals 2

    .line 1644
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    const-string v1, "016GekelemFkYekeledeh7dj4emggel*eSeked"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mob/tools/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public U()Ljava/lang/String;
    .locals 2

    .line 1654
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    const-string v1, "017.ekelemggel6e1ekedem_khej:fgelekeg"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mob/tools/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public V()I
    .locals 1

    .line 1663
    invoke-static {}, Lcom/mob/commons/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1664
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/NtFetcher;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/NtFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/NtFetcher;->getDtNtType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public W()Ljava/lang/String;
    .locals 1

    .line 1697
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public X()Z
    .locals 1

    .line 1728
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/mob/tools/b/b;->b(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Y()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const/4 v1, 0x0

    .line 1734
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 1735
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v2, "026ef.edekelejedemMekk%emge:dj.ejeeej!jOfdgd7i?ek4geNed"

    .line 1737
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/app/Application;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentProcessName"

    new-array v4, v1, [Ljava/lang/Class;

    .line 1738
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    .line 1739
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1740
    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1741
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1742
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 1746
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getProcessName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public Z()J
    .locals 3

    .line 1757
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/mob/tools/b/b;->o()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v1, v2, v1}, Lcom/mob/tools/b/a;->b(ZILjava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1758
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/c;->e(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 6

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 338
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    xor-long/2addr v0, v2

    .line 340
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 341
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 343
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, p1, :cond_2

    const/4 v4, 0x2

    .line 345
    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    rem-int/2addr v5, v4

    if-nez v5, :cond_0

    const-string v4, "004die%ek"

    goto :goto_1

    :cond_0
    const-string v4, "003fPeheg"

    :goto_1
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "004diePek"

    .line 346
    invoke-static {v5}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x1a

    .line 348
    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    add-int/lit8 v5, v3, 0x1

    .line 349
    invoke-virtual {v2, v5, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 352
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->insert(II)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 355
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x28

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/e;->a(Landroid/content/Context;)Lcom/mob/tools/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Ljava/lang/String;
    .locals 2

    .line 282
    invoke-direct {p0}, Lcom/mob/tools/b/b;->au()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x28

    if-nez p1, :cond_1

    .line 285
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v1, :cond_1

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/mob/tools/b/b;->at()Ljava/lang/String;

    move-result-object v0

    .line 291
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v1, :cond_2

    .line 292
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 296
    :cond_2
    invoke-direct {p0}, Lcom/mob/tools/b/b;->aw()Ljava/lang/String;

    move-result-object p1

    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_3

    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 301
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_5

    .line 303
    :cond_4
    invoke-virtual {p0, v1}, Lcom/mob/tools/b/b;->a(I)Ljava/lang/String;

    move-result-object p1

    :cond_5
    if-eqz p1, :cond_6

    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 309
    invoke-direct {p0, p1}, Lcom/mob/tools/b/b;->f(Ljava/lang/String;)V

    :cond_6
    return-object p1
.end method

.method public a(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;I)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "DH PD: fabt "

    const/4 v1, 0x0

    .line 602
    :try_start_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p1, :cond_4

    .line 606
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 608
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "1"

    const-string v4, "005Mejgjgjfdgj"

    .line 609
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne p2, v4, :cond_1

    if-nez v3, :cond_0

    :cond_1
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    if-nez v3, :cond_2

    goto :goto_0

    .line 613
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "0057ejgjgjfdgj"

    .line 614
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    move-object v1, v0

    :cond_4
    return-object v1

    :catchall_0
    move-exception p1

    .line 620
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public a(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 846
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 847
    invoke-static {}, Lcom/mob/commons/d;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 849
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 852
    invoke-direct {p0}, Lcom/mob/tools/b/b;->ax()Ljava/util/HashMap;

    move-result-object v2

    if-eqz p1, :cond_8

    .line 853
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 854
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 855
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 856
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 858
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 859
    invoke-static {v4, v5}, Lcom/mob/tools/c;->a(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 861
    invoke-direct {p0, v7}, Lcom/mob/tools/b/b;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v9, "1"

    const-string v10, "0"

    if-eqz v8, :cond_1

    :try_start_1
    const-string v8, "005_ejgjgjfdgj"

    .line 862
    invoke-static {v8}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v8, "005>ejgjgjfdgj"

    .line 864
    invoke-static {v8}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v8, "003kYfifk"

    .line 866
    invoke-static {v8}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    .line 870
    invoke-static {v5}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_2

    .line 872
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v11, v8

    .line 874
    :goto_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v12, :cond_5

    .line 882
    :try_start_2
    invoke-static {v7, v5}, Lcom/mob/tools/c;->g(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 886
    :catchall_0
    :try_start_3
    invoke-static {v7, v5}, Lcom/mob/tools/c;->c(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 888
    invoke-virtual {v1, v5, v3, v7}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v8, v3

    :catchall_1
    :cond_3
    :goto_3
    if-nez v8, :cond_4

    move-object v11, v5

    goto :goto_4

    .line 893
    :cond_4
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 894
    :goto_4
    invoke-static {v5}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    :cond_5
    const-string v8, "004feWeg;g"

    .line 897
    invoke-static {v8}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "0074ee@g+ekgjejel-f"

    .line 898
    invoke-static {v8}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5}, Lcom/mob/tools/c;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "006gfe9gg_hg"

    .line 899
    invoke-static {v8}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v5}, Lcom/mob/tools/c;->e(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    move-object v9, v10

    :goto_5
    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "016(fgejekgjRjLff^f^gjZjehh_gdejeg:g"

    .line 900
    invoke-static {v7}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5}, Lcom/mob/tools/c;->d(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "014heKgj(j;flZk<ed)ejgRgdejeg_g"

    .line 901
    invoke-static {v7}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5}, Lcom/mob/tools/c;->e(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    if-eqz v3, :cond_8

    .line 907
    invoke-direct {p0, v2}, Lcom/mob/tools/b/b;->b(Ljava/util/HashMap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    .line 911
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_8
    :goto_6
    return-object v0
.end method

.method public a(IIZZ)Ljava/util/List;
    .locals 8

    .line 961
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 962
    invoke-static {}, Lcom/mob/tools/utils/f;->a()Lcom/mob/tools/utils/f;

    move-result-object v2

    iget-object v3, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/mob/tools/utils/f;->a(Landroid/content/Context;IIZZ)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 964
    :cond_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "glctn can not be called from Main Thread"

    invoke-virtual {p1, p3, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/util/concurrent/BlockingQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1701
    invoke-static {}, Lcom/mob/commons/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->isWifiDataEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1702
    new-instance v0, Lcom/mob/tools/b/b$1;

    invoke-direct {v0, p0, p1}, Lcom/mob/tools/b/b$1;-><init>(Lcom/mob/tools/b/b;Ljava/util/concurrent/BlockingQueue;)V

    .line 1716
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "029efNedekelejedem5fgjZemghejfgejemfmfegefheihkhjfmflgfgdfm"

    .line 1717
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1718
    invoke-static {v0, p1}, Lcom/mob/commons/v;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public declared-synchronized a()Z
    .locals 3

    monitor-enter p0

    .line 97
    :try_start_0
    invoke-static {}, Lcom/mob/commons/v;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-eq v1, v2, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    .line 1768
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public ab()Ljava/lang/String;
    .locals 10

    const-string v0, "007!edAg2gj3jWekelfd"

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "021dejZjg3mkHekel+dmWgjEgh4fgHmd fkekeleh5k"

    .line 1777
    invoke-static {v5}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mob/commons/v;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v6, "014OfkGgj%ffGfk\'eh%j;fm^jNek=ge:eg"

    .line 1778
    invoke-static {v6}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v7}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v6, :cond_0

    .line 1780
    :try_start_2
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1781
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    goto :goto_2

    :catchall_1
    move-exception v8

    move-object v7, v4

    goto :goto_2

    :cond_0
    move-object v7, v4

    move-object v8, v7

    :goto_0
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v7, v2, v3

    aput-object v6, v2, v1

    .line 1786
    invoke-static {v2}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    if-eqz v5, :cond_1

    .line 1788
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v4, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v4, v8

    goto :goto_3

    :catchall_2
    move-exception v8

    move-object v6, v4

    goto :goto_1

    :catchall_3
    move-exception v8

    move-object v5, v4

    move-object v6, v5

    :goto_1
    move-object v7, v6

    .line 1784
    :goto_2
    :try_start_4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v7, v2, v3

    aput-object v6, v2, v1

    .line 1786
    invoke-static {v2}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    if-eqz v5, :cond_2

    .line 1788
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v4, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_3
    return-object v4

    :catchall_4
    move-exception v8

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v7, v2, v3

    aput-object v6, v2, v1

    .line 1786
    invoke-static {v2}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    if-eqz v5, :cond_3

    .line 1788
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v4, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    :cond_3
    throw v8
.end method

.method public ac()Ljava/lang/String;
    .locals 11

    const-string v0, "007BedDg(gj]j,ekelfd"

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "017dej*jgKmk9ekel]dmdk?ehej7fZfgel"

    .line 1804
    invoke-static {v5}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mob/commons/v;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v6, "014Zfk2gj6ff1fk;ehXj[fmKj!ekHge1eg"

    .line 1805
    invoke-static {v6}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v7}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v6, :cond_2

    .line 1807
    :try_start_2
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 1808
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "utf-8"

    invoke-direct {v9, v6, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1810
    :goto_0
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1812
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1814
    :cond_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 1815
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v8, v2, v3

    aput-object v6, v2, v1

    .line 1822
    invoke-static {v2}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    if-eqz v5, :cond_1

    .line 1824
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v4, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v7

    :catchall_0
    move-exception v7

    goto :goto_2

    :catchall_1
    move-exception v7

    move-object v8, v4

    goto :goto_2

    :cond_2
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v4, v2, v3

    aput-object v6, v2, v1

    .line 1822
    invoke-static {v2}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    if-eqz v5, :cond_3

    .line 1824
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v4, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_2
    move-exception v7

    move-object v6, v4

    goto :goto_1

    :catchall_3
    move-exception v7

    move-object v5, v4

    move-object v6, v5

    :goto_1
    move-object v8, v6

    .line 1820
    :goto_2
    :try_start_4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v8, v2, v3

    aput-object v6, v2, v1

    .line 1822
    invoke-static {v2}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    if-eqz v5, :cond_3

    .line 1824
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v4, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_3
    const-string v0, ""

    return-object v0

    :catchall_4
    move-exception v7

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v8, v2, v3

    aput-object v6, v2, v1

    .line 1822
    invoke-static {v2}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    if-eqz v5, :cond_4

    .line 1824
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v4, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1826
    :cond_4
    throw v7
.end method

.method public ad()Ljava/lang/String;
    .locals 1

    .line 1836
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/b/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ae()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1845
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/commons/b/d;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public af()J
    .locals 2

    .line 1848
    sget-wide v0, Landroid/os/Build;->TIME:J

    return-wide v0
.end method

.method public ag()D
    .locals 2

    .line 1852
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->getScreenInch(Landroid/content/Context;)D

    move-result-wide v0

    return-wide v0
.end method

.method public ah()I
    .locals 1

    .line 1856
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->getScreenPpi(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public ai()Z
    .locals 4

    const-string v0, "025d<elegem(i;ehNeKghCg ejemgjfdgj]jgCegemgkehej%hPedhjfj"

    .line 1860
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->importClassNoThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "010Ifk^gj;higjgkek+ef7ed"

    .line 1861
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethodNoThrow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "0076glQe_ekegelZf?fd"

    .line 1862
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public aj()Ljava/lang/String;
    .locals 2

    .line 1866
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    const-string v1, "028i=gheigjTd>emggehejNh)edem<khej=fgelekegemeeGgLekgjejel8f"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mob/tools/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ak()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 1872
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/mob/tools/b/a;->aq()Ljava/lang/String;

    move-result-object v1

    .line 1874
    iget-object v2, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v2

    const-string v3, "ro.build.ver.physical"

    invoke-interface {v2, v3}, Lcom/mob/tools/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1875
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1876
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "(\\.\\d+)?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1877
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1878
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1879
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1883
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method public al()I
    .locals 2

    .line 1892
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "015k[ehekWgBeiegeledRgDeigjQjejg"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public am()I
    .locals 2

    .line 1903
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "024k=ehekFgNei8gfiefdg7edeiegeled5g;eigj=jejg"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public an()Ljava/lang/Object;
    .locals 10

    .line 1926
    invoke-static {}, Lcom/mob/commons/d;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1928
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->isCellLocationDataEnable()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "041efLedekelejedemKkgBekegejgjgjejel7fLemgefefehjfmfmeifehigehkfmhjeigfhifegegdffhifh"

    .line 1929
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "005kiWelMfg"

    .line 1930
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "015(fk^gjPfeSghh:gfelQdej,ejelLf"

    .line 1932
    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 1936
    :cond_1
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 1940
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "016LfeedegYe%fe,ghh9gfelSdejRejelPf"

    .line 1951
    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    const-string v3, "016XfeedegQeJfeZghh7gfel*dej9ejelWf"

    .line 1952
    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "022CfkTgjUgk eTgj6gUfmWjej!ejelJf>gf<ej*ej j%ehed)g"

    .line 1953
    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v5, v6}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v5, "023Ffk:gjTgkGe9gjQg!fmSjej ejel,f$gfel!f1fkej+j;ehed5g"

    .line 1954
    invoke-static {v5}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v6, v7}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "016=fk1gjUgk7e$gj1gTfm9jejVejel1f3ffed"

    .line 1955
    invoke-static {v6}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v0, v6, v7, v8}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "0115fkHgjHfmfdgjUjg$egffed"

    .line 1956
    invoke-static {v7}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v0, v7, v8, v9}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "012KfkBgj6fh^gjJghelekfiffed"

    .line 1957
    invoke-static {v8}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v8, v9, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v0

    move v0, v4

    move v8, v5

    move v5, v3

    move v3, v0

    goto :goto_1

    :cond_2
    const-string v3, "016$feedeg8eSfe2ghh2gfelCdej!ejelOf"

    .line 1959
    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "006 fkYgj[hmgj;d"

    .line 1960
    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v5, v6}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v5, "006$fk(gj[gfGed"

    .line 1961
    invoke-static {v5}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v6, v7}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "0068fkOgj\'feejed"

    .line 1962
    invoke-static {v6}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v6, v7, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v4

    move v6, v2

    move v7, v6

    move v8, v7

    move v4, v5

    move v5, v8

    :goto_1
    const-string v9, "003hed"

    .line 1964
    invoke-static {v9}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "004dghh"

    .line 1965
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "003k[gj6d"

    .line 1966
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "0033ggejed"

    .line 1967
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "003)gjejed"

    .line 1968
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "003f<ejed"

    .line 1969
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "003hej"

    .line 1970
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "003hLel=f"

    .line 1971
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method

.method public ao()Ljava/lang/String;
    .locals 5

    .line 2016
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const-string v0, "locale"

    .line 2017
    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getApplicationLocales"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 2018
    invoke-static {v0, v1, v2, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    if-eqz v0, :cond_0

    .line 2019
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2020
    invoke-virtual {v0, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2022
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v2
.end method

.method public ap()I
    .locals 4

    .line 2040
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    :try_start_0
    const-string v0, "android.app.GrammaticalInflectionManager"

    .line 2042
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2043
    iget-object v1, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getApplicationGrammaticalGender"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return v2
.end method

.method public aq()Z
    .locals 9

    const-string v0, ""

    .line 2058
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const-string v2, "0"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2062
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "006mk-ekelGdm"

    invoke-static {v8}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "007m.gj*jej%ehgj"

    invoke-static {v7}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "r"

    invoke-direct {v6, v1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v2

    .line 2064
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2065
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v7, "\t"

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2066
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "010Ogdek*edgCekhmejed4l"

    .line 2067
    invoke-static {v7}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xa

    .line 2068
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v6, v0, v4

    .line 2074
    invoke-static {v0}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v5, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v2

    .line 2072
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v5, v0, v4

    .line 2074
    invoke-static {v0}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 2076
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2077
    invoke-direct {p0, v1}, Lcom/mob/tools/b/b;->g(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    return v4

    :catchall_2
    move-exception v0

    new-array v1, v3, [Ljava/io/Closeable;

    aput-object v5, v1, v4

    .line 2074
    invoke-static {v1}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 2075
    throw v0
.end method

.method public ar()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 2085
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2087
    invoke-static {}, Lcom/mob/commons/d;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 2089
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/commons/CSCenter;->isCellLocationDataEnable()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 2090
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v4, "gtci: direct"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    const-string v4, "041efMedekelejedemIkg2ekegejgjgjejelUf!emgefefehjfmfmeifehigehkfmhjeigfhifegegdffhifh"

    .line 2091
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-lt v0, v1, :cond_2

    const-string v0, "039ef0edekelejedemAkg@ekegejgjgjejelOfEemgefefehjfmfmeihdfffhhjeigfhifegegdffhifh"

    .line 2092
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "005ki2el4fg"

    .line 2093
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "getAllCellInfo"

    new-array v4, v3, [Ljava/lang/Object;

    .line 2095
    invoke-static {v0, v1, v2, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0

    .line 2099
    :cond_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "gtci: mcc"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 2100
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_6

    .line 2102
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 2106
    invoke-static {v4}, Lcom/mob/tools/utils/b$a;->a(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2107
    invoke-direct {p0, v4}, Lcom/mob/tools/b/b;->a(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v4

    .line 2108
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2112
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2113
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/b/b;->a(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v0

    .line 2114
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v2
.end method

.method public as()Z
    .locals 1

    .line 2283
    invoke-direct {p0}, Lcom/mob/tools/b/b;->aB()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mob/tools/b/b;->aq()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 106
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 248
    :try_start_0
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, v2, v2, p1, v1}, Lcom/mob/tools/b/a;->b(ZILjava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, v2, v2, p1, v1}, Lcom/mob/tools/b/a;->a(ZILjava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 259
    invoke-static {v0, p1}, Lcom/mob/tools/c;->b(Ljava/lang/Object;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 260
    array-length v0, p1

    if-lez v0, :cond_1

    .line 261
    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/Data;->MD5([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 265
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 117
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 533
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 538
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Lcom/mob/tools/b/a;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 541
    invoke-static {v0, p1}, Lcom/mob/tools/c;->g(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 543
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 548
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v1
.end method

.method public d()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const-string v1, "|"

    .line 129
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/mob/tools/b/a;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mob/tools/b/b;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 130
    invoke-virtual {p0}, Lcom/mob/tools/b/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mob/tools/b/b;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mob/tools/b/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 131
    invoke-virtual {p0, v2}, Lcom/mob/tools/b/b;->a(Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, v0

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-le v4, v5, :cond_1

    .line 135
    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 137
    :cond_1
    :goto_0
    invoke-static {v1, v3}, Lcom/mob/tools/utils/Data;->Base64AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 139
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "023ef=edekelejedem>d6el3fjgfj.emfeelGfjg[fj(j"

    .line 926
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->importClassNoThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 927
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    const-string v1, "019digdIfifm,ghEfghm5g!ekegejgjgjejel,f"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v0, v1, v3, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    goto :goto_0

    .line 928
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    return v4
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/mob/tools/b/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/tools/b/b;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/mob/tools/b/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/tools/b/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/tools/b/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 3

    .line 1221
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/mob/tools/b/a;->a(ZLjava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public f()I
    .locals 1

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 163
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 170
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 184
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 5

    .line 193
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const-string v3, "x"

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 200
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 5

    const-string v0, "005kiLel=fg"

    .line 208
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "-1"

    if-eqz v0, :cond_3

    .line 209
    invoke-static {}, Lcom/mob/commons/d;->i()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/commons/CSCenter;->isPhoneStateDataEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "014EfkNgjEfmejeghi\'kgPek@ej3elek"

    .line 214
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 216
    :cond_1
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 218
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public m()Ljava/lang/String;
    .locals 4

    const-string v0, "005kiLel6fg"

    .line 225
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 226
    invoke-static {}, Lcom/mob/commons/d;->i()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 231
    :cond_0
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/commons/CSCenter;->isPhoneStateDataEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "018@fkUgjTfmejeghi<kgCek-ejLelekfh e6egVg"

    .line 232
    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 234
    :cond_1
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 236
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/NtFetcher;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/NtFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/NtFetcher;->getNtType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 5

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->ak()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 501
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-static {v0, v1}, Lcom/mob/tools/c;->b(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 504
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-lt v3, v4, :cond_0

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 505
    invoke-static {v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->importClassNoThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-object v2

    .line 513
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Lcom/mob/tools/c;->c(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 515
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 517
    :cond_2
    invoke-static {v0, v1}, Lcom/mob/tools/c;->d(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 521
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const-string v0, ""

    return-object v0
.end method

.method public q()I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "011-eeEgPekgjejelIfJfeeled@g"

    .line 560
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v1, v2, v3}, Lcom/mob/commons/MobMeta;->get(Lcom/mob/commons/MobProduct;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_1

    .line 562
    iget-object v1, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v1

    .line 563
    invoke-virtual {p0}, Lcom/mob/tools/b/b;->o()Ljava/lang/String;

    move-result-object v2

    .line 562
    invoke-interface {v1, v0, v0, v2, v0}, Lcom/mob/tools/b/a;->b(ZILjava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 564
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 565
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/c;->g(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 567
    :cond_0
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/c;->f(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_1
    return v1

    :catchall_0
    move-exception v1

    .line 572
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "011:ee?gEekgjejelTfBfhUeUeg.g"

    .line 582
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Lcom/mob/commons/MobMeta;->get(Lcom/mob/commons/MobProduct;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 583
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    .line 587
    invoke-virtual {p0}, Lcom/mob/tools/b/b;->o()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 586
    invoke-interface {v0, v2, v2, v1, v2}, Lcom/mob/tools/b/a;->b(ZILjava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 588
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/c;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 591
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const-string v0, "1.0"

    return-object v0
.end method

.method public s()Ljava/util/ArrayList;
    .locals 5
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

    .line 644
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->isAppListDataEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 645
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 649
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-gt v1, v2, :cond_0

    .line 650
    invoke-direct {p0}, Lcom/mob/tools/b/b;->ay()Ljava/util/Set;

    move-result-object v0

    .line 651
    invoke-direct {p0, v0}, Lcom/mob/tools/b/b;->a(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v1, "004ehQel4h"

    .line 653
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 655
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 656
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "1"

    const-string v3, "2"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_2
    const/4 v2, 0x0

    .line 658
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 659
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 660
    invoke-direct {p0, v0}, Lcom/mob/tools/b/b;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 661
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 667
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 668
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    :goto_1
    return-object v0

    .line 672
    :cond_5
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->getPackageInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 673
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 674
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 675
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 676
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 678
    :cond_6
    invoke-virtual {p0, v1}, Lcom/mob/tools/b/b;->a(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 681
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 2

    .line 940
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->ak()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_0

    const-string v0, "mounted"

    .line 941
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/b/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public v()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 972
    invoke-static {}, Lcom/mob/commons/d;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    const-string v0, "041efQedekelejedemCkgMekegejgjgjejelMf%emgefefehjfmfmeifehigehkfmhjeigfhifegegdffhifh"

    .line 975
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/b/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/mob/tools/b/b;->P()Z

    move-result v0

    if-nez v0, :cond_4

    .line 976
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 977
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/commons/CSCenter;->isCellLocationDataEnable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "005kiZel9fg"

    .line 978
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "022;fkWgjJfhUg3ejfkAi-ggelekej,f$fkfeAghhNff_f9fgel"

    .line 980
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 983
    :cond_0
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/commons/CSCenter;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 984
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 985
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 988
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 989
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 991
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "006SfkJgj%feejed"

    .line 992
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v6, "0062fkAgjNgf ed"

    .line 993
    invoke-static {v6}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "0076fk:gj(hkgjgjej"

    .line 994
    invoke-static {v7}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v3, v7, v8}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "006,fk7gjRhmgjSd"

    .line 995
    invoke-static {v8}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v3, v8, v9}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "0142fk*gj2fh$gj\'ghelekfigdfd!kg"

    .line 996
    invoke-static {v9}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v3, v9, v10}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v4, v5, :cond_2

    if-eq v6, v5, :cond_2

    .line 998
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v9, "004dghh"

    .line 999
    invoke-static {v9}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "003hed"

    .line 1000
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "004Aekgjgjej"

    .line 1001
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "003kYgj3d"

    .line 1002
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "011fgjOghelekfigdfdTkg"

    .line 1003
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1007
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_4

    return-object v1

    :catchall_0
    move-exception v0

    .line 1013
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 2

    const-string v0, "009^flfhgmhjhdfffhhjgm"

    .line 1021
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uimode"

    .line 1022
    invoke-static {v1}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    if-eqz v1, :cond_0

    .line 1024
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "0093flfhgmhjhdfffhhjgm"

    .line 1033
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const-string v0, "009Bhlhkglhjgegmfmhjgd"

    .line 1032
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "005=hggegdfegl"

    .line 1031
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const-string v0, "009Fgehmhmgfffgefhfehj"

    .line 1030
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const-string v0, "010]gdhjgfhjhlfffmffhifh"

    .line 1029
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const-string v0, "0037fegehk"

    .line 1028
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const-string v0, "004Zgmhjfmjd"

    .line 1027
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const-string v0, "005Vfhhieiflff"

    .line 1026
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public y()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1044
    invoke-static {}, Lcom/mob/commons/d;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v0, "036ef%edekelejedemPkg2ekegejgjgjejelVfTemgefefehjfmfmeihgffhdffeifmgdgegdhj"

    .line 1046
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/b/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1048
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->isWifiDataEnable()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "004Cghejfgej"

    .line 1049
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "017$fk7gjKfeel-ffgdj^ejel3fKff;f1fgel"

    .line 1051
    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 1054
    :cond_1
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 1057
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "0085fk9gjJgkfmfmffgm"

    .line 1058
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v1, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "bsmt"

    .line 1059
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "007;fk6gj9fmfmffgm"

    .line 1060
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v1, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "ssmt"

    if-nez v4, :cond_2

    move-object v4, v1

    goto :goto_1

    :cond_2
    const-string v6, "\""

    const-string v7, ""

    .line 1061
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    const-string v1, "013Zfk:gj3glejeded3gf%fmfmffgm"

    .line 1064
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v4, "006i1ejededSgf"

    .line 1065
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    const-string v1, "012:fk8gjMgfej%f_fifm*kgg7ed"

    .line 1070
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v4, "spmt"

    .line 1071
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :try_start_3
    const-string v1, "012!fkZgj]fh5gjUghelekfiffed"

    .line 1076
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v4, "009fgjIghelekfiffed"

    .line 1077
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :try_start_4
    const-string v1, "007(fk1gj$hkgjgjej"

    .line 1082
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v4, "005hgAee]gh"

    .line 1083
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :try_start_5
    const-string v1, "012;fkDgjPhdek9g-efeh,gfdCfd"

    .line 1088
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "009;fgekQg*efehNgfd%fd"

    .line 1089
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    return-object v3

    :catchall_5
    move-exception v0

    .line 1096
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_3
    return-object v1
.end method

.method public z()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1103
    invoke-static {}, Lcom/mob/commons/d;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    :try_start_0
    const-string v0, "036ef@edekelejedem(kg(ekegejgjgjejel.fKemgefefehjfmfmeihgffhdffeifmgdgegdhj"

    .line 1105
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/b/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1107
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->isWifiDataEnable()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "004Sghejfgej"

    .line 1108
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v3, "0145fkTgjIfm7def;hkEg)gjehThjBgj"

    .line 1112
    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 1114
    :cond_1
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->getWifiScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1116
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1117
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    return-object v1

    .line 1129
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v4, 0x1b

    const-string v5, ","

    if-le v3, v4, :cond_4

    :try_start_1
    const-string v3, "086*fmfmffgmkigkfmfmffgmkiWdeke^ggejHhHej%j6ejDgHgjkiThg>ee+ghRkifgek)gPefehYgfdVfdki9dieffghJhgejed-jiAki%dgfjgVekhdekSgXefgikiXdgfjg\'ekhdekBg5efigkiIj^ejeg7gHgj,jeSegMk"

    .line 1130
    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "031;ee0gf?eh g0fh.e;eg[g7kijgelKkgYek3ej@elekhdekej@gfBedUhUfdfhReFeg[g"

    .line 1131
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    const-string v3, "SSID,BSSID,hessid,anqpDomainId,capabilities,level,frequency,channelWidth,centerFreq0,centerFreq1,timestamp,seen,isAutoJoinCandidate,numIpConfigFailures,blackListTimestamp,untrusted,numConnection,numUsage,distanceCm,distanceSdCm,flags"

    .line 1136
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "0396ghejfgejfmgjejedkieeRgf eh9gTfh9e%eg_gZkielEkg?ek0ej7elekhdekej9gf;edJhOfdfh(ePegFg"

    .line 1137
    invoke-static {v4}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1141
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1143
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1145
    array-length v8, v3

    move-object v10, v1

    move v9, v2

    :goto_3
    if-ge v9, v8, :cond_9

    aget-object v11, v3, v9

    .line 1146
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "004^fmfmffgm"

    .line 1147
    invoke-static {v12}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1148
    invoke-static {v6, v11, v1}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1149
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_5

    .line 1153
    :cond_5
    invoke-virtual {v7, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    const-string v12, "012deke]ggejOh,ej:j1ej>g^gj"

    .line 1154
    invoke-static {v12}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1155
    invoke-static {v6, v11, v1}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_7

    const-string v13, "[IBSS]"

    .line 1156
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object v10, v1

    goto :goto_5

    .line 1161
    :cond_7
    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1163
    :cond_8
    invoke-static {v6, v11, v1}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1167
    :cond_9
    :goto_5
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_2

    .line 1171
    :cond_a
    array-length v8, v4

    move v9, v2

    :goto_6
    if-ge v9, v8, :cond_c

    aget-object v10, v4, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1173
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 1174
    invoke-static {v6, v10}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_b

    move-object v11, v1

    goto :goto_7

    .line 1175
    :cond_b
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_7
    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_c
    :try_start_3
    const-string v8, "018:ejgjiegiifigigegKd)hkJg1gj[k:el5fMed2gVek"

    .line 1181
    invoke-static {v8}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v6, v8, v9}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "021Qejgjiegiifigigid d]hkgdgdhkQgZgjEkRel8f^edXg3ek"

    .line 1182
    invoke-static {v9}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1187
    :catchall_1
    :try_start_4
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-ge v8, v9, :cond_e

    const-string v8, "009ef7ef1k<gfej6fgBgj"

    .line 1188
    invoke-static {v8}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const-string v8, "009ef=efNk<gfej<fgMgj"

    .line 1189
    invoke-static {v8}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v6, :cond_d

    move-object v9, v1

    goto :goto_8

    :cond_d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_8
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1193
    :catchall_2
    :cond_e
    :try_start_5
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/16 :goto_2

    :cond_f
    return-object v5

    :catchall_3
    move-exception v0

    .line 1198
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_10
    return-object v1
.end method
