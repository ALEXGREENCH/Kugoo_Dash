.class public Lcom/mob/apc/a/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mob/apc/a/c;

.field private static final i:[Ljava/lang/String;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mob/apc/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/mob/apc/a/b;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mob/apc/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private e:[B

.field private f:Lcom/mob/apc/b$c;

.field private g:Landroid/os/Bundle;

.field private h:Lcom/mob/apc/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/mob/apc/a/c;

    invoke-direct {v0}, Lcom/mob/apc/a/c;-><init>()V

    sput-object v0, Lcom/mob/apc/a/c;->a:Lcom/mob/apc/a/c;

    const-string v0, "com.mob.service.action.MOB_AC_SERVICE"

    .line 30
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/apc/a/c;->i:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/apc/a/c;->b:Ljava/util/HashMap;

    .line 24
    new-instance v0, Lcom/mob/apc/a/b;

    invoke-direct {v0}, Lcom/mob/apc/a/b;-><init>()V

    iput-object v0, p0, Lcom/mob/apc/a/c;->c:Lcom/mob/apc/a/b;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 26
    iput-object v0, p0, Lcom/mob/apc/a/c;->e:[B

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/apc/a/c;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/mob/apc/a/c;
    .locals 1

    .line 37
    sget-object v0, Lcom/mob/apc/a/c;->a:Lcom/mob/apc/a/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/mob/apc/a/e;)Lcom/mob/apc/a/e;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/mob/apc/a/c;->b:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/mob/apc/a/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mob/apc/b$b;

    .line 125
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v3

    const-string v4, "[onAIDLMessageReceive] innerMessage: %s, listener: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object v2, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_0

    .line 128
    iget-object v3, p1, Lcom/mob/apc/a/e;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/mob/apc/a/e;->a:Lcom/mob/apc/a;

    iget-wide v5, p1, Lcom/mob/apc/a/e;->e:J

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/mob/apc/b$b;->a(Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;

    move-result-object v2

    .line 129
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v3

    const-string v4, "[onAIDLMessageReceive] listener apcMessage: %s"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    new-instance v3, Lcom/mob/apc/a/e;

    iget-object v4, p1, Lcom/mob/apc/a/e;->b:Ljava/lang/String;

    iget-wide v5, p1, Lcom/mob/apc/a/e;->e:J

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/mob/apc/a/e;-><init>(Lcom/mob/apc/a;Ljava/lang/String;J)V

    return-object v3

    .line 136
    :cond_0
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v2

    const-string v3, "[onAIDLMessageReceive] No listener detected, buffer this msg"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v2, p0, Lcom/mob/apc/a/c;->d:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/mob/apc/a/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 140
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "[onAIDLMessageReceive] exception %s"

    invoke-virtual {v2, v1, v0}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/apc/a/f;->a(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move v0, p1

    .line 56
    invoke-static {}, Lcom/mob/commons/j;->a()Lcom/mob/commons/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/commons/j;->b()Z

    move-result v1

    .line 57
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[EC] isClear snd mg: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lcom/mob/apc/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    .line 61
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p4, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move-object v1, p0

    .line 71
    iget-object v5, v1, Lcom/mob/apc/a/c;->c:Lcom/mob/apc/a/b;

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-wide/from16 v9, p5

    invoke-virtual/range {v5 .. v10}, Lcom/mob/apc/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v1, p0

    .line 77
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "type "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " not support."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    new-instance v2, Lcom/mob/apc/APCException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/mob/apc/APCException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v1, p0

    .line 66
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v0

    const-string v2, "[sendMessage] param not allowed null."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    new-instance v0, Lcom/mob/apc/APCException;

    const-string v2, "param not allowed null."

    invoke-direct {v0, v2}, Lcom/mob/apc/APCException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v1, p0

    .line 62
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v0

    const-string v2, "[sendMessage] pkg not allowed null."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    new-instance v0, Lcom/mob/apc/APCException;

    const-string v2, "pkg not allowed null."

    invoke-direct {v0, v2}, Lcom/mob/apc/APCException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v1, p0

    .line 59
    new-instance v0, Lcom/mob/apc/APCException;

    const-string v2, "ec is not clear"

    invoke-direct {v0, v2}, Lcom/mob/apc/APCException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    .line 169
    iget-object v0, p0, Lcom/mob/apc/a/c;->f:Lcom/mob/apc/b$c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "[onACServiceAct] %s"

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "listener detected, callback"

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/mob/apc/a/c;->f:Lcom/mob/apc/b$c;

    invoke-interface {v0, p1}, Lcom/mob/apc/b$c;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "no listener detected, cache"

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/mob/apc/a/c;->g:Landroid/os/Bundle;

    :goto_0
    return-void
.end method

.method public a(Lcom/mob/apc/b$a;)V
    .locals 4

    .line 160
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "done"

    aput-object v3, v1, v2

    const-string v2, "[addMgsRequestListener] %s"

    invoke-virtual {v0, v2, v1}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iput-object p1, p0, Lcom/mob/apc/a/c;->h:Lcom/mob/apc/b$a;

    return-void
.end method

.method public a(Lcom/mob/apc/b$c;)V
    .locals 5

    .line 147
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "done"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "[addOnACServiceListener] %s"

    invoke-virtual {v0, v3, v2}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iput-object p1, p0, Lcom/mob/apc/a/c;->f:Lcom/mob/apc/b$c;

    .line 149
    iget-object p1, p0, Lcom/mob/apc/a/c;->g:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 150
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "bufBundle detected, callback"

    aput-object v1, v0, v4

    invoke-virtual {p1, v3, v0}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    new-instance p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/mob/apc/a/c;->g:Landroid/os/Bundle;

    invoke-direct {p1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 152
    iget-object v0, p0, Lcom/mob/apc/a/c;->f:Lcom/mob/apc/b$c;

    invoke-interface {v0, p1}, Lcom/mob/apc/b$c;->a(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 153
    iput-object p1, p0, Lcom/mob/apc/a/c;->f:Lcom/mob/apc/b$c;

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "no bufBundle, nothing to do"

    aput-object v1, v0, v4

    invoke-virtual {p1, v3, v0}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/mob/tools/utils/e;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/utils/e<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "[EC] isClear apcsvcl: "

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    :try_start_0
    invoke-static {}, Lcom/mob/commons/j;->a()Lcom/mob/commons/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/commons/j;->b()Z

    move-result v2

    .line 85
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v5}, Lcom/mob/apc/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_0

    const-string v0, "android.content.Intent"

    .line 88
    invoke-static {v0}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "Intent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 89
    sget-object v3, Lcom/mob/apc/a/c;->i:[Ljava/lang/String;

    aget-object v3, v3, v4

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 91
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcom/mob/tools/utils/DH$RequestBuilder;->queryIntentServices(Landroid/content/Intent;I)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    new-instance v2, Lcom/mob/apc/a/c$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/mob/apc/a/c$1;-><init>(Lcom/mob/apc/a/c;Ljava/util/List;Lcom/mob/tools/utils/e;)V

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 111
    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 115
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/apc/a/f;->a(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mob/apc/b$b;)V
    .locals 6

    .line 41
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v0

    const-string v1, "[addMobIpcMsgListener] %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/mob/apc/a/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/mob/apc/a/c;->e:[B

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/mob/apc/a/c;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v1

    const-string v3, "[addMobIpcMsgListener] %s"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "buf msg found, callback right now"

    aput-object v5, v2, v4

    invoke-virtual {v1, v3, v2}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v1, p0, Lcom/mob/apc/a/c;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mob/apc/a/e;

    .line 50
    iget-object v1, p1, Lcom/mob/apc/a/e;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/mob/apc/a/e;->a:Lcom/mob/apc/a;

    iget-wide v3, p1, Lcom/mob/apc/a/e;->e:J

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/mob/apc/b$b;->a(Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;

    .line 52
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Lcom/mob/apc/b$a;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/mob/apc/a/c;->h:Lcom/mob/apc/b$a;

    return-object v0
.end method
