.class public Lcn/smssdk/net/f;
.super Ljava/lang/Object;
.source "Protocols.java"


# static fields
.field private static d:Lcn/smssdk/net/f;


# instance fields
.field private a:Lcom/mob/tools/utils/Hashon;

.field private b:Lcn/smssdk/utils/SPHelper;

.field private c:Lcn/smssdk/net/b;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iput-object v0, p0, Lcn/smssdk/net/f;->a:Lcom/mob/tools/utils/Hashon;

    .line 3
    invoke-static {}, Lcn/smssdk/utils/SPHelper;->getInstance()Lcn/smssdk/utils/SPHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/net/f;->b:Lcn/smssdk/utils/SPHelper;

    .line 4
    invoke-static {}, Lcn/smssdk/net/b;->g()Lcn/smssdk/net/b;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/net/f;->c:Lcn/smssdk/net/b;

    .line 5
    invoke-static {}, Lcn/smssdk/net/e;->b()V

    return-void
.end method

.method public static d()Lcn/smssdk/net/f;
    .locals 1

    .line 1
    sget-object v0, Lcn/smssdk/net/f;->d:Lcn/smssdk/net/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/smssdk/net/f;

    invoke-direct {v0}, Lcn/smssdk/net/f;-><init>()V

    sput-object v0, Lcn/smssdk/net/f;->d:Lcn/smssdk/net/f;

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/net/f;->d:Lcn/smssdk/net/f;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 12
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcn/smssdk/net/f;->b:Lcn/smssdk/utils/SPHelper;

    invoke-virtual {v0}, Lcn/smssdk/utils/SPHelper;->getLastZoneAt()J

    move-result-wide v0

    .line 60
    iget-object v2, p0, Lcn/smssdk/net/f;->b:Lcn/smssdk/utils/SPHelper;

    invoke-virtual {v2}, Lcn/smssdk/utils/SPHelper;->getBufferedCountrylist()Ljava/lang/String;

    move-result-object v2

    .line 64
    iget-object v3, p0, Lcn/smssdk/net/f;->c:Lcn/smssdk/net/b;

    invoke-virtual {v3}, Lcn/smssdk/net/b;->b()J

    move-result-wide v3

    cmp-long v0, v0, v3

    const-string v1, "list"

    const-string v3, "[SMSSDK][%s][%s] %s"

    const-string v4, "getSupportedCountries"

    const/4 v5, 0x1

    const-string v6, "Protocols"

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-nez v0, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/smssdk/net/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v6, v10, v7

    aput-object v4, v10, v5

    const-string v11, "Use country list buffered in SP."

    aput-object v11, v10, v9

    invoke-virtual {v0, v3, v10}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 66
    iget-object v0, p0, Lcn/smssdk/net/f;->a:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 71
    :cond_0
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v6, v2, v7

    aput-object v4, v2, v5

    const-string v10, "Country list buffered in SP dirty!"

    aput-object v10, v2, v9

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 75
    :cond_1
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v6, v2, v7

    aput-object v4, v2, v5

    const-string v4, "Observe country list from server."

    aput-object v4, v2, v9

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 76
    iget-object v0, p0, Lcn/smssdk/net/f;->c:Lcn/smssdk/net/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v2}, Lcn/smssdk/net/b;->a(ILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 77
    iget-object v2, p0, Lcn/smssdk/net/f;->b:Lcn/smssdk/utils/SPHelper;

    iget-object v3, p0, Lcn/smssdk/net/f;->a:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v3, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/smssdk/utils/SPHelper;->setBufferedCountrylist(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcn/smssdk/net/f;->b:Lcn/smssdk/utils/SPHelper;

    iget-object v3, p0, Lcn/smssdk/net/f;->c:Lcn/smssdk/net/b;

    invoke-virtual {v3}, Lcn/smssdk/net/b;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcn/smssdk/utils/SPHelper;->setLastZoneAt(J)V

    .line 79
    iget-object v2, p0, Lcn/smssdk/net/f;->c:Lcn/smssdk/net/b;

    invoke-virtual {v2}, Lcn/smssdk/net/b;->c()V

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "extKey"

    .line 12
    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p3, "phone"

    .line 15
    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "zone"

    .line 16
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attr"

    .line 17
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "tempCode"

    const-string p2, "Nul2"

    .line 18
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p1, p0, Lcn/smssdk/net/f;->c:Lcn/smssdk/net/b;

    const/16 p2, 0xa

    invoke-virtual {p1, p2, v0}, Lcn/smssdk/net/b;->a(ILjava/util/HashMap;)Ljava/util/HashMap;

    return-void

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/Throwable;

    const-string/jumbo p2, "{\"detail\":\"phone number cant be empty\"}"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_2
    new-instance p1, Ljava/lang/Throwable;

    const-string/jumbo p2, "{\"detail\":\"country code cant be empty\"}"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 26
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "phone"

    .line 32
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "zone"

    .line 33
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "attr"

    .line 36
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "extKey"

    .line 37
    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string/jumbo p3, "tempCode"

    .line 40
    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_1
    iget-object p3, p0, Lcn/smssdk/net/f;->c:Lcn/smssdk/net/b;

    const/16 p4, 0x9

    invoke-virtual {p3, p4, v0}, Lcn/smssdk/net/b;->a(ILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p3

    const-string/jumbo p4, "vCode"

    .line 43
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string/jumbo v0, "smsId"

    .line 44
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "smart"

    .line 45
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 47
    iget-object v1, p0, Lcn/smssdk/net/f;->b:Lcn/smssdk/utils/SPHelper;

    invoke-virtual {v1, v0}, Lcn/smssdk/utils/SPHelper;->setSMSID(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcn/smssdk/net/f;->b:Lcn/smssdk/utils/SPHelper;

    invoke-virtual {v0, p4}, Lcn/smssdk/utils/SPHelper;->setVCodeHash(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 50
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_2

    .line 51
    iget-object p3, p0, Lcn/smssdk/net/f;->b:Lcn/smssdk/utils/SPHelper;

    invoke-virtual {p3}, Lcn/smssdk/utils/SPHelper;->clearBuffer()V

    .line 53
    :try_start_0
    iget-object p3, p0, Lcn/smssdk/net/f;->b:Lcn/smssdk/utils/SPHelper;

    invoke-virtual {p3, p1}, Lcn/smssdk/utils/SPHelper;->setVerifyCountry(Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcn/smssdk/net/f;->b:Lcn/smssdk/utils/SPHelper;

    invoke-virtual {p1, p2}, Lcn/smssdk/utils/SPHelper;->setVerifyPhone(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 56
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return p4

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 57
    :cond_3
    new-instance p1, Ljava/lang/Throwable;

    const-string/jumbo p2, "{\"detail\":\"phone number cant be empty\"}"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_4
    new-instance p1, Ljava/lang/Throwable;

    const-string/jumbo p2, "{\"detail\":\"country code cant be empty\"}"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/util/HashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 82
    :try_start_0
    iget-object v2, p0, Lcn/smssdk/net/f;->c:Lcn/smssdk/net/b;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, p1}, Lcn/smssdk/net/b;->a(ILjava/util/HashMap;)Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 84
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Upload SDK Log Failed"

    aput-object v4, v3, v0

    const-string v4, "[SMSSDK] %s"

    invoke-virtual {v2, p1, v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move p1, v0

    .line 87
    :goto_0
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Protocols"

    aput-object v4, v3, v0

    const-string/jumbo v0, "uploadSdkLog"

    aput-object v0, v3, v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Upload SDK Log: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const-string v0, "[SMSSDK][%s][%s] %s"

    invoke-virtual {v2, v0, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "phone"

    .line 15
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "code"

    .line 16
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "zone"

    .line 17
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object p1, p0, Lcn/smssdk/net/f;->c:Lcn/smssdk/net/b;

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcn/smssdk/net/b;->a(ILjava/util/HashMap;)Ljava/util/HashMap;

    .line 21
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "country"

    .line 22
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {p1, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcn/smssdk/net/f;->b:Lcn/smssdk/utils/SPHelper;

    invoke-virtual {v0}, Lcn/smssdk/utils/SPHelper;->clearBuffer()V

    .line 27
    :try_start_0
    iget-object v0, p0, Lcn/smssdk/net/f;->b:Lcn/smssdk/utils/SPHelper;

    invoke-virtual {v0, p2}, Lcn/smssdk/utils/SPHelper;->setVerifyCountry(Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcn/smssdk/net/f;->b:Lcn/smssdk/utils/SPHelper;

    invoke-virtual {p2, p3}, Lcn/smssdk/utils/SPHelper;->setVerifyPhone(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 30
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-object p1

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string/jumbo p2, "{\"detail\":\"phone number cant be empty\"}"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/Throwable;

    const-string/jumbo p2, "{\"detail\":\"country code cant be empty\"}"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_2
    new-instance p1, Ljava/lang/Throwable;

    const-string/jumbo p2, "{\"status\":\"466\"}"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/smssdk/net/f;->c:Lcn/smssdk/net/b;

    invoke-virtual {v1, v0}, Lcn/smssdk/net/b;->a(Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Init token error"

    aput-object v4, v0, v3

    const-string v3, "[SMSSDK] %s"

    invoke-virtual {v2, v1, v3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/smssdk/net/f;->c:Lcn/smssdk/net/b;

    invoke-virtual {v0}, Lcn/smssdk/net/b;->a()Z

    move-result v0

    return v0
.end method
