.class public Lcom/mob/mgs/impl/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method public static declared-synchronized a()Ljava/lang/Boolean;
    .locals 4

    const-class v0, Lcom/mob/mgs/impl/i;

    monitor-enter v0

    .line 34
    :try_start_0
    invoke-static {}, Lcom/mob/mgs/impl/i;->e()V

    .line 35
    sget-object v1, Lcom/mob/mgs/impl/i;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "device_switch_local_cache"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 38
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 40
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 44
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/mob/mgs/impl/i;

    monitor-enter v0

    .line 73
    :try_start_0
    invoke-static {}, Lcom/mob/mgs/impl/i;->e()V

    .line 74
    sget-object v1, Lcom/mob/mgs/impl/i;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "duid_remote_cache"

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Z)V
    .locals 3

    const-class v0, Lcom/mob/mgs/impl/i;

    monitor-enter v0

    .line 23
    :try_start_0
    invoke-static {}, Lcom/mob/mgs/impl/i;->e()V

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    sget-object v1, Lcom/mob/mgs/impl/i;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "device_switch_local_cache"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b()Ljava/lang/Boolean;
    .locals 4

    const-class v0, Lcom/mob/mgs/impl/i;

    monitor-enter v0

    .line 59
    :try_start_0
    invoke-static {}, Lcom/mob/mgs/impl/i;->e()V

    .line 60
    sget-object v1, Lcom/mob/mgs/impl/i;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "device_switch_remote_cache"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 63
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 65
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 69
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/mob/mgs/impl/i;

    monitor-enter v0

    .line 84
    :try_start_0
    invoke-static {}, Lcom/mob/mgs/impl/i;->e()V

    .line 85
    sget-object v1, Lcom/mob/mgs/impl/i;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "guard_id_remote_cache"

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Z)V
    .locals 3

    const-class v0, Lcom/mob/mgs/impl/i;

    monitor-enter v0

    .line 48
    :try_start_0
    invoke-static {}, Lcom/mob/mgs/impl/i;->e()V

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 50
    :goto_0
    sget-object v1, Lcom/mob/mgs/impl/i;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "device_switch_remote_cache"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c()Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/mob/mgs/impl/i;

    monitor-enter v0

    .line 78
    :try_start_0
    invoke-static {}, Lcom/mob/mgs/impl/i;->e()V

    .line 79
    sget-object v1, Lcom/mob/mgs/impl/i;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "duid_remote_cache"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d()Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/mob/mgs/impl/i;

    monitor-enter v0

    .line 89
    :try_start_0
    invoke-static {}, Lcom/mob/mgs/impl/i;->e()V

    .line 90
    sget-object v1, Lcom/mob/mgs/impl/i;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "guard_id_remote_cache"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static e()V
    .locals 3

    .line 16
    sget-object v0, Lcom/mob/mgs/impl/i;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mob/mgs/impl/i;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "gu"

    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
