.class public Lcom/mob/commons/r;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:Ljava/lang/String; = null

.field public static volatile b:Ljava/lang/String; = null

.field public static volatile c:Ljava/lang/String; = null

.field public static volatile d:Ljava/lang/String; = null

.field public static volatile e:Lcom/mob/commons/InternationalDomain; = null

.field public static volatile f:Z = false

.field public static volatile g:Z = false

.field public static volatile h:Z = true

.field public static volatile i:Z = false

.field public static volatile j:Ljava/lang/String;

.field private static k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String;

.field private static final n:Ljava/lang/String;

.field private static final o:Ljava/lang/String;

.field private static final p:Ljava/lang/String;

.field private static final q:Ljava/lang/String;

.field private static r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mob/commons/r;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "0090gbcjeedkekhbckce@h"

    .line 30
    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/r;->l:Ljava/lang/String;

    const-string v0, "011.dk6gcZciIe;dkekhbckceSh"

    .line 31
    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/r;->m:Ljava/lang/String;

    const-string v0, "0108gbcjeefkcfeh?gEckce3h"

    .line 32
    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/r;->n:Ljava/lang/String;

    const-string v0, "012ZdkHebDfj[eEcichdedbckce h"

    .line 33
    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/r;->o:Ljava/lang/String;

    const-string v0, "009Ddkgbdkdkekhbckce^h"

    .line 34
    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/r;->p:Ljava/lang/String;

    const-string v0, "010Vgbcjeeedch3dHdgckce(h"

    .line 35
    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/r;->q:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mob/commons/r;->r:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 201
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v1

    .line 202
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-interface {v1, v2, v3}, Lcom/mob/tools/b/a;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "009Fgbcjeegjej2hhiGeh"

    .line 205
    invoke-static {v2}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    instance-of p0, v1, Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string p0, "0035dbKe:eh"

    .line 206
    invoke-static {p0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 213
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;Lcom/mob/commons/MobProduct;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/mob/commons/MobProduct;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 104
    :try_start_0
    invoke-static {p2}, Lcom/mob/commons/r;->a(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object p2

    .line 106
    sget-object v4, Lcom/mob/commons/r;->r:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    sget-object v4, Lcom/mob/commons/r;->r:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-object v4, v3

    move-object v5, v4

    goto :goto_2

    .line 110
    :cond_0
    :try_start_1
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 111
    :try_start_2
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 112
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    .line 113
    check-cast v6, Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_1

    .line 114
    :try_start_4
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 115
    sget-object v7, Lcom/mob/commons/r;->r:Ljava/util/HashMap;

    invoke-virtual {v7, p2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-object p2, v6

    goto :goto_1

    :cond_1
    :goto_0
    move-object p2, v6

    goto :goto_2

    :catchall_1
    move-object p2, v3

    goto :goto_1

    :catchall_2
    move-object p2, v3

    move-object v5, p2

    goto :goto_1

    :catchall_3
    move-object p2, v3

    move-object v4, p2

    move-object v5, v4

    .line 119
    :goto_1
    :try_start_5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    const-string v7, "No ast file"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_2
    if-eqz p2, :cond_17

    .line 122
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_17

    .line 123
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v6, "009Mgbcjeegjej0hhi%eh"

    .line 124
    invoke-static {v6}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz p2, :cond_4

    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_4

    const-string p0, "003 db$eWeh"

    .line 125
    invoke-static {p0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "004hBcicfCe"

    invoke-static {p0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_3

    :cond_2
    move p0, v2

    goto :goto_4

    :cond_3
    :goto_3
    move p0, v1

    :goto_4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    goto/16 :goto_6

    :cond_4
    if-eqz p2, :cond_17

    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    .line 131
    :try_start_6
    const-class p0, Ljava/lang/Void;

    if-ne p1, p0, :cond_5

    goto/16 :goto_6

    .line 133
    :cond_5
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_7

    .line 134
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_6

    .line 135
    move-object p0, p2

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_5

    .line 137
    :cond_6
    const-class p0, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_5
    move-object v3, p0

    goto/16 :goto_6

    .line 139
    :cond_7
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_9

    .line 140
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_8

    .line 141
    move-object p0, p2

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_5

    .line 143
    :cond_8
    const-class p0, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_5

    .line 145
    :cond_9
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_b

    .line 146
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_a

    .line 147
    move-object p0, p2

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_5

    .line 149
    :cond_a
    const-class p0, Ljava/lang/Byte;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_5

    .line 151
    :cond_b
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_d

    .line 152
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_c

    .line 153
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_5

    .line 155
    :cond_c
    const-class p0, Ljava/lang/Character;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_5

    .line 157
    :cond_d
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_f

    .line 158
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_e

    .line 159
    move-object p0, p2

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p0

    goto :goto_5

    .line 161
    :cond_e
    const-class p0, Ljava/lang/Short;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_5

    .line 163
    :cond_f
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_11

    .line 164
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_10

    .line 165
    move-object p0, p2

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    goto :goto_5

    .line 167
    :cond_10
    const-class p0, Ljava/lang/Long;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_5

    .line 169
    :cond_11
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_13

    .line 170
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_12

    .line 171
    move-object p0, p2

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_5

    .line 173
    :cond_12
    const-class p0, Ljava/lang/Float;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_5

    .line 175
    :cond_13
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_15

    .line 176
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_14

    .line 177
    move-object p0, p2

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_5

    .line 179
    :cond_14
    const-class p0, Ljava/lang/Double;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_5

    .line 182
    :cond_15
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/16 :goto_5

    :catchall_4
    move-exception p0

    .line 186
    :try_start_7
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :cond_16
    move-object v3, p2

    goto :goto_6

    :catchall_5
    move-exception p0

    goto :goto_7

    :cond_17
    :goto_6
    new-array p0, v0, [Ljava/io/Closeable;

    aput-object v5, p0, v2

    aput-object v4, p0, v1

    .line 193
    invoke-static {p0}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    goto :goto_9

    :catchall_6
    move-exception p0

    move-object p2, v3

    :goto_7
    move-object v3, v5

    goto :goto_8

    :catchall_7
    move-exception p0

    move-object p2, v3

    move-object v4, p2

    .line 191
    :goto_8
    :try_start_8
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    new-array p0, v0, [Ljava/io/Closeable;

    aput-object v3, p0, v2

    aput-object v4, p0, v1

    .line 193
    invoke-static {p0}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    move-object v3, p2

    :goto_9
    return-object v3

    :catchall_8
    move-exception p0

    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v3, p1, v2

    aput-object v4, p1, v1

    invoke-static {p1}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 194
    throw p0
.end method

.method private static a(Lcom/mob/commons/MobProduct;)Ljava/lang/String;
    .locals 2

    .line 219
    sget-object v0, Lcom/mob/commons/r;->l:Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 222
    :try_start_0
    invoke-interface {p0}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object p0

    const-string v1, "008^dkejecfifhdkekhb"

    .line 223
    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    sget-object p0, Lcom/mob/commons/r;->m:Ljava/lang/String;

    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_0
    const-string v1, "006Bdkgbdkdkekhb"

    .line 225
    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    sget-object p0, Lcom/mob/commons/r;->p:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "007Kgbfgeieddddfhb"

    .line 227
    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    sget-object p0, Lcom/mob/commons/r;->q:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "0072gbfgeifkdjdkej"

    .line 229
    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 230
    sget-object p0, Lcom/mob/commons/r;->n:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, "009[dkfhdcfjfhfiddfbhk"

    .line 231
    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 232
    sget-object p0, Lcom/mob/commons/r;->o:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 236
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .line 40
    :try_start_0
    sget-object p0, Lcom/mob/commons/r;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p0, :cond_7

    const/4 p0, 0x0

    .line 42
    :try_start_1
    sget-object v2, Lcom/mob/commons/r;->a:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, "010;gbcjeegjecSiiDhb0e?db"

    .line 44
    invoke-static {v2}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {p0, v2, v3, p0}, Lcom/mob/commons/MobMeta;->get(Lcom/mob/commons/MobProduct;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 46
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    sput-object v2, Lcom/mob/commons/r;->a:Ljava/lang/String;

    .line 48
    sput-object v2, Lcom/mob/commons/r;->c:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/commons/ab;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/commons/ab;->k()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    invoke-static {}, Lcom/mob/commons/x;->i()Ljava/lang/String;

    move-result-object v2

    .line 57
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 58
    sput-object v2, Lcom/mob/commons/r;->c:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/commons/ab;->e(Ljava/lang/String;)V

    .line 63
    :cond_2
    :goto_0
    sget-object v2, Lcom/mob/commons/r;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string v2, "013Egbcjeegjec_ii0dk(eb=ciYeh"

    .line 64
    invoke-static {v2}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {p0, v2, v3, p0}, Lcom/mob/commons/MobMeta;->get(Lcom/mob/commons/MobProduct;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 65
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "012 gbcjeegjec_ii6dk@eAci!eh"

    .line 66
    invoke-static {v2}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {p0, v2, v3, p0}, Lcom/mob/commons/MobMeta;->get(Lcom/mob/commons/MobProduct;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 68
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 69
    sput-object v2, Lcom/mob/commons/r;->b:Ljava/lang/String;

    .line 70
    sput-object v2, Lcom/mob/commons/r;->d:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/commons/ab;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :cond_4
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/commons/ab;->l()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 75
    sput-object v2, Lcom/mob/commons/r;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_5
    :goto_1
    :try_start_2
    const-string v2, "006)ekcjce!c<chCd"

    .line 81
    invoke-static {v2}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {p0, v2, v3, p0}, Lcom/mob/commons/MobMeta;->get(Lcom/mob/commons/MobProduct;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 83
    invoke-static {v2}, Lcom/mob/commons/InternationalDomain;->domainOf(Ljava/lang/String;)Lcom/mob/commons/InternationalDomain;

    move-result-object v2

    sput-object v2, Lcom/mob/commons/r;->e:Lcom/mob/commons/InternationalDomain;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 86
    :catchall_1
    :try_start_3
    sget-object v2, Lcom/mob/commons/InternationalDomain;->DEFAULT:Lcom/mob/commons/InternationalDomain;

    sput-object v2, Lcom/mob/commons/r;->e:Lcom/mob/commons/InternationalDomain;

    :cond_6
    :goto_2
    const-string v2, "015NgbcjeegjfgcbfjchcccjecHii4ddcb"

    .line 88
    invoke-static {v2}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {p0, v2, v3, p0}, Lcom/mob/commons/MobMeta;->get(Lcom/mob/commons/MobProduct;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/mob/commons/r;->j:Ljava/lang/String;

    const-string v2, "0090gbcjeegjejUhhiNeh"

    .line 89
    invoke-static {v2}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p0, v2, v3, v4}, Lcom/mob/commons/MobMeta;->get(Lcom/mob/commons/MobProduct;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/mob/commons/r;->f:Z

    const-string v2, "006Sgbcjeegjfjgg"

    .line 90
    invoke-static {v2}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p0, v2, v3, v4}, Lcom/mob/commons/MobMeta;->get(Lcom/mob/commons/MobProduct;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/mob/commons/r;->g:Z

    const-string v2, "008TgbcjeegjRef5cjdi"

    .line 91
    invoke-static {v2}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v2, v3, v0}, Lcom/mob/commons/MobMeta;->get(Lcom/mob/commons/MobProduct;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/mob/commons/r;->h:Z

    const-string v0, "007?gbcjeegjhcfkfk"

    .line 92
    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v2, v1}, Lcom/mob/commons/MobMeta;->get(Lcom/mob/commons/MobProduct;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/mob/commons/r;->i:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 95
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_7
    :goto_3
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x62

    .line 242
    invoke-static {p0, v0}, Lcom/mob/commons/v;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
