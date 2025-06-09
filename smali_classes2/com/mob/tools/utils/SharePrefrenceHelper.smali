.class public Lcom/mob/tools/utils/SharePrefrenceHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/SharePrefrenceHelper$a;
    }
.end annotation


# static fields
.field public static final SP_CACHE_FOLDER:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private volatile b:Lcom/mob/tools/utils/MobPersistence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "003[gbcjee"

    .line 38
    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/tools/utils/SharePrefrenceHelper;->SP_CACHE_FOLDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mob/tools/utils/SharePrefrenceHelper;[B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->a([B)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a([B)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 867
    array-length v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 871
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 872
    :try_start_1
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 873
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object p1, v3, v2

    aput-object v4, v3, v1

    .line 875
    invoke-static {v3}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    :goto_0
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object p1, v3, v2

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 876
    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const-string v0, "k_m_sp_cpt_dn"

    .line 909
    invoke-virtual {p0, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 910
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MPF]["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]Compat acquire"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 911
    new-instance v1, Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    iget-object v2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->a:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 913
    iget-object v2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 914
    invoke-virtual {v1}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 915
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 916
    invoke-virtual {p0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putAll(Ljava/util/HashMap;)V

    :cond_0
    const/4 v2, 0x1

    .line 918
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    move-object v1, v5

    .line 922
    :goto_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "]Compat done, mv: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/mob/tools/utils/SharePrefrenceHelper;Ljava/lang/String;)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    const-string v0, "^([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{4}|[A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)$"

    .line 930
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 932
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static isMobSpFileExist(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isMpfFileExist(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-static {p0, p1}, Lcom/mob/tools/utils/MobPersistence;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v0, :cond_0

    .line 770
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    invoke-virtual {v0}, Lcom/mob/tools/utils/MobPersistence;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 772
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 672
    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 677
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getThrowable(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p2
.end method

.method public getAll()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v0, :cond_0

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    invoke-virtual {v0}, Lcom/mob/tools/utils/MobPersistence;->b()Ljava/util/HashMap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 665
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 668
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 135
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getBooleanThrowable(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public getBooleanThrowable(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getBooleanThrowable(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBooleanThrowable(Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v0, :cond_3

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    new-instance v1, Lcom/mob/tools/utils/MobPersistence$e;

    invoke-direct {v1, p1}, Lcom/mob/tools/utils/MobPersistence$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence$e;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 155
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 157
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 160
    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    return p2

    :catchall_0
    move-exception p1

    .line 168
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_0
    move-exception p1

    .line 166
    throw p1

    :cond_3
    :goto_1
    return p2
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    const-wide/16 v0, 0x0

    .line 277
    invoke-virtual {p0, p1, v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 0

    .line 282
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getDoubleThrowable(Ljava/lang/String;D)D

    move-result-wide p1
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    return-wide p2
.end method

.method public getDoubleThrowable(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 289
    invoke-virtual {p0, p1, v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getDoubleThrowable(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDoubleThrowable(Ljava/lang/String;D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v0, :cond_1

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    new-instance v1, Lcom/mob/tools/utils/MobPersistence$e;

    invoke-direct {v1, p1}, Lcom/mob/tools/utils/MobPersistence$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence$e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    if-nez p1, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-wide p2

    :catchall_0
    move-exception p1

    .line 300
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_0
    move-exception p1

    .line 298
    throw p1

    :cond_1
    :goto_1
    return-wide p2
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    .line 238
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getIntThrowable(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public getIntThrowable(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getIntThrowable(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getIntThrowable(Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v0, :cond_1

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    new-instance v1, Lcom/mob/tools/utils/MobPersistence$e;

    invoke-direct {v1, p1}, Lcom/mob/tools/utils/MobPersistence$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence$e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return p2

    :catchall_0
    move-exception p1

    .line 256
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_0
    move-exception p1

    .line 254
    throw p1

    :cond_1
    :goto_1
    return p2
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 189
    invoke-virtual {p0, p1, v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    .line 194
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLongThrowable(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    return-wide p2
.end method

.method public getLongThrowable(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 201
    invoke-virtual {p0, p1, v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLongThrowable(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongThrowable(Ljava/lang/String;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v0, :cond_1

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    new-instance v1, Lcom/mob/tools/utils/MobPersistence$e;

    invoke-direct {v1, p1}, Lcom/mob/tools/utils/MobPersistence$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence$e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-wide p2

    :catchall_0
    move-exception p1

    .line 212
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_0
    move-exception p1

    .line 210
    throw p1

    :cond_1
    :goto_1
    return-wide p2
.end method

.method public getObj(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 642
    invoke-virtual {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getParcel(Ljava/lang/String;Ljava/lang/Class;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 330
    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getParcel(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public getParcel(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 335
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getParcelThrowable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p3
.end method

.method public getParcelArray(Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 583
    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getParcelArray(Ljava/lang/String;Ljava/lang/Class;[Landroid/os/Parcelable;)[Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public getParcelArray(Ljava/lang/String;Ljava/lang/Class;[Landroid/os/Parcelable;)[Landroid/os/Parcelable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[TT;)[TT;"
        }
    .end annotation

    .line 588
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getParcelArrayThrowable(Ljava/lang/String;Ljava/lang/Class;[Landroid/os/Parcelable;)[Landroid/os/Parcelable;

    move-result-object p1
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p3
.end method

.method public getParcelArrayThrowable(Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 595
    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getParcelArrayThrowable(Ljava/lang/String;Ljava/lang/Class;[Landroid/os/Parcelable;)[Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public getParcelArrayThrowable(Ljava/lang/String;Ljava/lang/Class;[Landroid/os/Parcelable;)[Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v0, :cond_1

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    new-instance v1, Lcom/mob/tools/utils/SharePrefrenceHelper$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mob/tools/utils/SharePrefrenceHelper$8;-><init>(Lcom/mob/tools/utils/SharePrefrenceHelper;Ljava/lang/String;Ljava/lang/Class;[Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence$e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p3

    :catchall_0
    move-exception p1

    .line 625
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_0
    move-exception p1

    .line 623
    throw p1

    :cond_1
    :goto_0
    return-object p3
.end method

.method public getParcelList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 499
    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getParcelList(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getParcelList(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 504
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getParcelListThrowable(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p3
.end method

.method public getParcelListThrowable(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 511
    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getParcelListThrowable(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getParcelListThrowable(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    .line 516
    iget-object p2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz p2, :cond_1

    .line 518
    :try_start_0
    iget-object p2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    new-instance v0, Lcom/mob/tools/utils/SharePrefrenceHelper$6;

    invoke-direct {v0, p0, p1, p3}, Lcom/mob/tools/utils/SharePrefrenceHelper$6;-><init>(Lcom/mob/tools/utils/SharePrefrenceHelper;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence$e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p3

    :catchall_0
    move-exception p1

    .line 548
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_0
    move-exception p1

    .line 546
    throw p1

    :cond_1
    :goto_0
    return-object p3
.end method

.method public getParcelMap(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 410
    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getParcelMap(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getParcelMap(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 415
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getParcelMapThrowable(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p3
.end method

.method public getParcelMapThrowable(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 422
    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getParcelMapThrowable(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getParcelMapThrowable(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    .line 427
    iget-object p2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz p2, :cond_1

    .line 429
    :try_start_0
    iget-object p2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    new-instance v0, Lcom/mob/tools/utils/SharePrefrenceHelper$4;

    invoke-direct {v0, p0, p1, p3}, Lcom/mob/tools/utils/SharePrefrenceHelper$4;-><init>(Lcom/mob/tools/utils/SharePrefrenceHelper;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p2, v0}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence$e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p3

    :catchall_0
    move-exception p1

    .line 461
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_0
    move-exception p1

    .line 459
    throw p1

    :cond_1
    :goto_0
    return-object p3
.end method

.method public getParcelThrowable(Ljava/lang/String;Ljava/lang/Class;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 342
    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getParcelThrowable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    return-object p1
.end method

.method public getParcelThrowable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    .line 346
    iget-object p2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz p2, :cond_1

    .line 348
    :try_start_0
    iget-object p2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    new-instance v0, Lcom/mob/tools/utils/SharePrefrenceHelper$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/mob/tools/utils/SharePrefrenceHelper$2;-><init>(Lcom/mob/tools/utils/SharePrefrenceHelper;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence$e;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p3

    :catchall_0
    move-exception p1

    .line 366
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_0
    move-exception p1

    .line 364
    throw p1

    :cond_1
    :goto_0
    return-object p3
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 84
    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 89
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getStringThrowable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p2
.end method

.method public getStringThrowable(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    const-string v0, ""

    .line 96
    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getStringThrowable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringThrowable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v0, :cond_1

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    new-instance v1, Lcom/mob/tools/utils/MobPersistence$e;

    invoke-direct {v1, p1}, Lcom/mob/tools/utils/MobPersistence$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence$e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2

    :catchall_0
    move-exception p1

    .line 107
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_0
    move-exception p1

    .line 105
    throw p1

    :cond_1
    :goto_1
    return-object p2
.end method

.method public getThrowable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 684
    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getThrowable(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getThrowable(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    const-string v0, "Expected exc: "

    .line 688
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v1, :cond_2

    .line 690
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    new-instance v2, Lcom/mob/tools/utils/SharePrefrenceHelper$9;

    invoke-direct {v2, p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper$9;-><init>(Lcom/mob/tools/utils/SharePrefrenceHelper;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence$e;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 716
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 728
    :try_start_1
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 729
    invoke-direct {p0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->a([B)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 731
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_2
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    return-object p2

    :catchall_1
    move-exception p1

    .line 742
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_0
    move-exception p1

    .line 740
    throw p1

    :cond_2
    :goto_1
    return-object p2
.end method

.method public open(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;I)V

    return-void
.end method

.method public open(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public open(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    new-instance p2, Lcom/mob/tools/utils/MobPersistence;

    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->a:Landroid/content/Context;

    invoke-direct {p2, v0, p1, p3}, Lcom/mob/tools/utils/MobPersistence;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    .line 56
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->a(Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 646
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->put(Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v0, :cond_0

    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    new-instance v1, Lcom/mob/tools/utils/MobPersistence$j;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/mob/tools/utils/MobPersistence$j;-><init>(Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence$j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 654
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public putAll(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 750
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 752
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 114
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;J)V

    return-void
.end method

.method public putBoolean(Ljava/lang/String;Ljava/lang/Boolean;J)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 121
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    int-to-byte p2, p2

    .line 122
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    new-instance v1, Lcom/mob/tools/utils/MobPersistence$j;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/mob/tools/utils/MobPersistence$j;-><init>(Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence$j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 124
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public putDouble(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 263
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putDouble(Ljava/lang/String;Ljava/lang/Double;J)V

    return-void
.end method

.method public putDouble(Ljava/lang/String;Ljava/lang/Double;J)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    new-instance v1, Lcom/mob/tools/utils/MobPersistence$j;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/mob/tools/utils/MobPersistence$j;-><init>(Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence$j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 271
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 219
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putInt(Ljava/lang/String;Ljava/lang/Integer;J)V

    return-void
.end method

.method public putInt(Ljava/lang/String;Ljava/lang/Integer;J)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    new-instance v1, Lcom/mob/tools/utils/MobPersistence$j;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/mob/tools/utils/MobPersistence$j;-><init>(Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence$j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 227
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public putLong(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 175
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;J)V

    return-void
.end method

.method public putLong(Ljava/lang/String;Ljava/lang/Long;J)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    new-instance v1, Lcom/mob/tools/utils/MobPersistence$j;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/mob/tools/utils/MobPersistence$j;-><init>(Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence$j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 183
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public putObj(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p2, :cond_0

    .line 633
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v0, :cond_1

    .line 636
    invoke-virtual {p0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public putParcel(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 307
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putParcel(Ljava/lang/String;Landroid/os/Parcelable;J)V

    return-void
.end method

.method public putParcel(Ljava/lang/String;Landroid/os/Parcelable;J)V
    .locals 8

    .line 310
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v0, :cond_0

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    new-instance v7, Lcom/mob/tools/utils/SharePrefrenceHelper$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/mob/tools/utils/SharePrefrenceHelper$1;-><init>(Lcom/mob/tools/utils/SharePrefrenceHelper;Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0, v7}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence$j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 324
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public putParcelArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "[TT;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 555
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putParcelArray(Ljava/lang/String;[Landroid/os/Parcelable;J)V

    return-void
.end method

.method public putParcelArray(Ljava/lang/String;[Landroid/os/Parcelable;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "[TT;J)V"
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    new-instance v7, Lcom/mob/tools/utils/SharePrefrenceHelper$7;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/mob/tools/utils/SharePrefrenceHelper$7;-><init>(Lcom/mob/tools/utils/SharePrefrenceHelper;Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0, v7}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence$j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 577
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public putParcelList(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 468
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putParcelList(Ljava/lang/String;Ljava/util/List;J)V

    return-void
.end method

.method public putParcelList(Ljava/lang/String;Ljava/util/List;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;J)V"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    new-instance v7, Lcom/mob/tools/utils/SharePrefrenceHelper$5;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/mob/tools/utils/SharePrefrenceHelper$5;-><init>(Lcom/mob/tools/utils/SharePrefrenceHelper;Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0, v7}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence$j;)V

    :cond_0
    return-void
.end method

.method public putParcelMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 373
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putParcelMap(Ljava/lang/String;Ljava/util/Map;J)V

    return-void
.end method

.method public putParcelMap(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;J)V"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    new-instance v7, Lcom/mob/tools/utils/SharePrefrenceHelper$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/mob/tools/utils/SharePrefrenceHelper$3;-><init>(Lcom/mob/tools/utils/SharePrefrenceHelper;Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0, v7}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence$j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 404
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 70
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    new-instance v1, Lcom/mob/tools/utils/MobPersistence$j;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/mob/tools/utils/MobPersistence$j;-><init>(Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence$j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 78
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    if-eqz v0, :cond_0

    .line 760
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper;->b:Lcom/mob/tools/utils/MobPersistence;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 762
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
