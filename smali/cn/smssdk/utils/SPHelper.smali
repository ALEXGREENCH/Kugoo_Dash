.class public Lcn/smssdk/utils/SPHelper;
.super Ljava/lang/Object;
.source "SPHelper.java"


# static fields
.field private static c:Lcn/smssdk/utils/SPHelper;


# instance fields
.field private a:Lcom/mob/tools/utils/SharePrefrenceHelper;

.field private b:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "SMSSDK"

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;I)V

    .line 4
    new-instance v0, Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/smssdk/utils/SPHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "SMSSDK_VCODE"

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;I)V

    return-void
.end method

.method public static getInstance()Lcn/smssdk/utils/SPHelper;
    .locals 1

    .line 1
    sget-object v0, Lcn/smssdk/utils/SPHelper;->c:Lcn/smssdk/utils/SPHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/smssdk/utils/SPHelper;

    invoke-direct {v0}, Lcn/smssdk/utils/SPHelper;-><init>()V

    sput-object v0, Lcn/smssdk/utils/SPHelper;->c:Lcn/smssdk/utils/SPHelper;

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/utils/SPHelper;->c:Lcn/smssdk/utils/SPHelper;

    return-object v0
.end method


# virtual methods
.method public clearBuffer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedNewFriends"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->remove(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedFriends"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->remove(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "lastRequestNewFriendsTime"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->remove(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedContactPhones"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public clearLog()V
    .locals 3

    const-string v0, "KEY_LOG"

    .line 1
    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/smssdk/utils/SPHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "KEY_LOG"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->remove(Ljava/lang/String;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBufferedContactPhones()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedContactPhones"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getBufferedContacts()Ljava/util/ArrayList;
    .locals 2
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

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedContacts"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getBufferedContactsSignature()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedContactsSignature"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedCountrylist()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedCountryList"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedFriends()Ljava/util/ArrayList;
    .locals 3
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

    const-string v0, "bufferedFriends"

    .line 1
    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "bufferedFriends"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    check-cast v1, Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    .line 7
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBufferedNewFriends()Ljava/util/ArrayList;
    .locals 2
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

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedNewFriends"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getConfig()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "config"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 5
    :cond_0
    invoke-static {v0}, Lcn/smssdk/net/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object v2
.end method

.method public getLastRequestNewFriendsTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "lastRequestNewFriendsTime"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRequestTimeMillis(Ljava/lang/String;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastZoneAt()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "lastZoneAt"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLog()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "KEY_LOG"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSMSID()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "KEY_SMSID"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenCacheAt()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string/jumbo v1, "token_cache_at"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVCodeHash()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "KEY_VCODE_HASH"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerifyCountry()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string/jumbo v1, "verify_country"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1, v0}, Lcn/smssdk/net/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyPhone()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string/jumbo v1, "verify_phone"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1, v0}, Lcn/smssdk/net/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isAgree()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "is_agree"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAgree(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "is_agree"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setBufferedContactPhones([Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedContactPhones"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBufferedContacts(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedContacts"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBufferedContactsSignature(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedContactsSignature"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBufferedCountrylist(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedCountryList"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBufferedFriends(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "bufferedFriends"

    .line 1
    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "bufferedFriends"

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBufferedNewFriends(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "bufferedNewFriends"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lcn/smssdk/net/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "config"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLastRequestTimeMillis(Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public setLastZoneAt(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "lastZoneAt"

    invoke-virtual {v0, p2, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public setLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "KEY_LOG"

    .line 1
    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcn/smssdk/utils/SPHelper;->getLog()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_0
    iget-object v1, p0, Lcn/smssdk/utils/SPHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v2, "KEY_LOG"

    invoke-virtual {v1, v2, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRequestNewFriendsTime()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lastRequestNewFriendsTime"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public setSMSID(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "KEY_SMSID"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTokenCacheAt(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "token_cache_at"

    invoke-virtual {v0, p2, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public setVCodeHash(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "KEY_VCODE_HASH"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVerifyCountry(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcn/smssdk/net/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string/jumbo v1, "verify_country"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVerifyPhone(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcn/smssdk/net/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string/jumbo v1, "verify_phone"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWarnWhenReadContact(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/smssdk/utils/SPHelper;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v1, "read_contact_warn"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
