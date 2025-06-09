.class final Lcom/mob/tools/utils/MobPersistence$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/MobPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field private a:[B

.field private final b:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1645
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1646
    iput-boolean p1, p0, Lcom/mob/tools/utils/MobPersistence$f;->b:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1648
    iput-boolean v0, p0, Lcom/mob/tools/utils/MobPersistence$f;->b:Z

    :try_start_0
    const-string v0, "utf-8"

    .line 1650
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/utils/MobPersistence$f;->a:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/mob/tools/utils/MobPersistence$1;)V
    .locals 0

    .line 1638
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPersistence$f;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/utils/MobPersistence$f;[BLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1638
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/MobPersistence$f;->a([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a([B)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1665
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 1666
    iget-boolean v0, p0, Lcom/mob/tools/utils/MobPersistence$f;->b:Z

    if-eqz v0, :cond_1

    .line 1667
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 1669
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$f;->a:[B

    invoke-static {v0, p1}, Lcom/mob/tools/utils/Data;->paddingDecode([B[B)[B

    move-result-object v0

    .line 1670
    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$f;->b([B)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const-string v0, "decode fail "

    const-string v1, "ENCIPER"

    .line 1672
    invoke-static {v0, v1}, Lcom/mob/tools/utils/MobPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$f;->b([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1676
    :cond_0
    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$f;->b([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1679
    :cond_1
    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$f;->b([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private a([BLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1657
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPersistence$f;->a([B)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1659
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-object p2
.end method

.method static synthetic a(Lcom/mob/tools/utils/MobPersistence$f;Ljava/lang/Object;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1638
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPersistence$f;->a(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Object;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 1703
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1704
    :try_start_1
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1705
    :try_start_2
    invoke-virtual {v5, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1706
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 1707
    iget-boolean v1, p0, Lcom/mob/tools/utils/MobPersistence$f;->b:Z

    if-eqz v1, :cond_0

    .line 1708
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$f;->a:[B

    invoke-static {v1, p1}, Lcom/mob/tools/utils/Data;->AES128Encode([B[B)[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array v1, v3, [Ljava/io/Closeable;

    aput-object v5, v1, v0

    aput-object v4, v1, v2

    .line 1714
    invoke-static {v1}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    return-object p1

    :cond_0
    new-array v1, v3, [Ljava/io/Closeable;

    aput-object v5, v1, v0

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v1, v5

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v4, v1

    :goto_0
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v1, v3, v0

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 1715
    throw p1

    :cond_1
    new-array p1, v0, [B

    return-object p1
.end method

.method private static b([B)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1690
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1691
    :try_start_1
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1692
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object p0, v2, v1

    aput-object v4, v2, v0

    .line 1694
    invoke-static {v2}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    return-object v3

    :catchall_0
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v5, v3

    move-object v3, p0

    move-object p0, v5

    goto :goto_0

    :catchall_2
    move-exception p0

    move-object v4, v3

    move-object v3, p0

    move-object p0, v4

    :goto_0
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object p0, v2, v1

    aput-object v4, v2, v0

    invoke-static {v2}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 1695
    throw v3
.end method
