.class public Lcom/mob/commons/b/i;
.super Lcom/mob/commons/b/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/b/i$a;
    }
.end annotation


# instance fields
.field private c:Lcom/mob/commons/b/i$a;

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Lcom/mob/commons/b/h;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance p1, Lcom/mob/commons/b/i$a;

    const-string v0, "004Cel4eEejed"

    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mob/commons/b/i$a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mob/commons/b/i;->c:Lcom/mob/commons/b/i$a;

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/b/i;)Lcom/mob/commons/b/i$a;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/mob/commons/b/i;->c:Lcom/mob/commons/b/i$a;

    return-object p0
.end method

.method private a(Landroid/content/Context;Lcom/mob/commons/b/i$a;Z)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-nez p3, :cond_1

    .line 38
    invoke-virtual {p2}, Lcom/mob/commons/b/i$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    invoke-static {p2}, Lcom/mob/commons/b/i$a;->a(Lcom/mob/commons/b/i$a;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, "036d9elHfjgfjlmmdAelegemeg>g_ejheehemfg%h;fdeg(g;emelMkgf<ejedgjedfiEm"

    .line 41
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 44
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 p1, 0x1

    new-array v6, p1, [Ljava/lang/String;

    invoke-static {p2}, Lcom/mob/commons/b/i$a;->b(Lcom/mob/commons/b/i$a;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v6, v1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_6

    .line 46
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "005>eeHehTeh!g"

    .line 48
    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 50
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p2, v1}, Lcom/mob/commons/b/i$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    if-nez p3, :cond_4

    const-string p3, "007g(fjZkRejek*g ed"

    .line 54
    invoke-static {p3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    if-ltz p3, :cond_3

    .line 56
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/mob/commons/b/i$a;->a(J)V

    :cond_3
    const-string p2, "004dVeled(g"

    .line 58
    invoke-static {p2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_4

    .line 60
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const/16 p3, 0x3e8

    if-eq p2, p3, :cond_4

    .line 62
    invoke-direct {p0}, Lcom/mob/commons/b/i;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    if-eqz p1, :cond_5

    .line 73
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_5
    return-object v1

    :catchall_1
    move-exception p2

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    :goto_1
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_2
    move-exception p2

    move-object p1, v0

    .line 69
    :goto_2
    :try_start_4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz p1, :cond_7

    goto :goto_1

    :catchall_3
    :cond_7
    :goto_3
    return-object v0

    :catchall_4
    move-exception p2

    if-eqz p1, :cond_8

    .line 73
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 76
    :catchall_5
    :cond_8
    throw p2
.end method

.method private e()V
    .locals 7

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/b/i;->d:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 83
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "044d4elegemegHg^ejheehemfgWh+fdegMg]emelUkgf6ejedemgefegdffhifheihihmhjfheiffgmeifeglgefhjehj"

    .line 84
    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/mob/commons/b/i$1;

    invoke-direct {v0, p0}, Lcom/mob/commons/b/i$1;-><init>(Lcom/mob/commons/b/i;)V

    iput-object v0, p0, Lcom/mob/commons/b/i;->d:Landroid/content/BroadcastReceiver;

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/mob/commons/b/i;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mob/commons/b/i;->d:Landroid/content/BroadcastReceiver;

    const-string v2, "048d2elegemegHgIejheehemfgNh6fdeg+g2emel8kgf6ejedem(kgNekegejgjgjejelSfOemhihmhjfheiffgmeifeglgefhjehj"

    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/mob/commons/b/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mob/commons/b/i;->d:Landroid/content/BroadcastReceiver;

    const-string v0, "048dSelegemeg1gCejheehemfg.hYfdeg>gVemelMkgf=ejedemNkgEekegejgjgjejelLfQemhihmhjfheiffgmeifeglgefhjehj"

    invoke-static {v0}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized d()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/b/i;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 27
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mob/commons/b/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/b/i;->c:Lcom/mob/commons/b/i$a;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/mob/commons/b/i;->a(Landroid/content/Context;Lcom/mob/commons/b/i$a;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
