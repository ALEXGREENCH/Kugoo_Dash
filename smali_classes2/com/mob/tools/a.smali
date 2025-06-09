.class public Lcom/mob/tools/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private volatile c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/io/File;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mob/tools/a;->a:Ljava/lang/Object;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mob/tools/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/a;->c:Ljava/util/HashSet;

    .line 32
    iput p3, p0, Lcom/mob/tools/a;->e:I

    if-nez p2, :cond_0

    const-string p2, "null"

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 36
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 38
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/mob/tools/a;->f:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/mob/MobSDK;->getContextSafely()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/a;->d:Ljava/io/File;

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_2

    .line 41
    iget-object p1, p0, Lcom/mob/tools/a;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    return-void
.end method

.method private a(Z)Ljava/io/File;
    .locals 17

    move-object/from16 v1, p0

    .line 97
    iget-object v0, v1, Lcom/mob/tools/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 138
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "_"

    const/4 v10, 0x1

    if-eqz v2, :cond_4

    .line 98
    array-length v0, v2

    if-lez v0, :cond_4

    .line 100
    array-length v11, v2

    move v12, v7

    move v13, v10

    :goto_0
    if-ge v12, v11, :cond_3

    aget-object v0, v2, v12

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    .line 102
    iget-object v15, v1, Lcom/mob/tools/a;->f:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 104
    invoke-virtual {v14, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    if-nez p1, :cond_1

    .line 105
    array-length v3, v15

    if-ne v3, v5, :cond_1

    .line 107
    :try_start_0
    aget-object v3, v15, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 108
    iget v5, v1, Lcom/mob/tools/a;->e:I

    if-ge v3, v5, :cond_1

    .line 109
    invoke-direct {v1, v14}, Lcom/mob/tools/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 111
    new-instance v5, Ljava/io/File;

    iget-object v14, v1, Lcom/mob/tools/a;->d:Ljava/io/File;

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/mob/tools/a;->f:Ljava/lang/String;

    aput-object v4, v6, v7

    aput-object v9, v6, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v16, 0x2

    aput-object v4, v6, v16

    const/4 v4, 0x3

    aput-object v9, v6, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v6, v4

    invoke-static {v6}, Lcom/mob/tools/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v14, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    return-object v5

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 121
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 124
    :cond_1
    array-length v0, v15

    if-le v0, v10, :cond_2

    .line 126
    :try_start_1
    aget-object v0, v15, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v13, :cond_2

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 131
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    goto :goto_0

    .line 136
    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/mob/tools/a;->d:Ljava/io/File;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/mob/tools/a;->f:Ljava/lang/String;

    aput-object v4, v3, v7

    aput-object v9, v3, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x3

    aput-object v9, v3, v4

    const/4 v4, 0x4

    aput-object v8, v3, v4

    invoke-static {v3}, Lcom/mob/tools/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2

    .line 138
    :cond_4
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/mob/tools/a;->d:Ljava/io/File;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/mob/tools/a;->f:Ljava/lang/String;

    aput-object v4, v3, v7

    aput-object v9, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x3

    aput-object v9, v3, v4

    const/4 v4, 0x4

    aput-object v8, v3, v4

    invoke-static {v3}, Lcom/mob/tools/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    return-object v0
.end method

.method static synthetic a(Lcom/mob/tools/a;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/mob/tools/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method private static varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_2

    .line 221
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 226
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/mob/tools/a;Ljava/lang/String;)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/mob/tools/a;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/mob/tools/a;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/mob/tools/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/mob/tools/a;->c:Ljava/util/HashSet;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a;->c:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/mob/tools/a;->c:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/mob/tools/a;->c:Ljava/util/HashSet;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a;->c:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 64
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(J)V
    .locals 9

    .line 200
    sget-object v0, Lcom/mob/tools/a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a;->d:Ljava/io/File;

    new-instance v2, Lcom/mob/tools/a$3;

    invoke-direct {v2, p0}, Lcom/mob/tools/a$3;-><init>(Lcom/mob/tools/a;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 206
    array-length v2, v1

    if-lez v2, :cond_1

    .line 208
    array-length v2, v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move v6, v3

    :goto_0
    if-ge v6, v2, :cond_0

    aget-object v7, v1, v6

    .line 209
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    cmp-long p1, v4, p1

    if-ltz p1, :cond_1

    .line 212
    array-length p1, v1

    :goto_1
    if-ge v3, p1, :cond_1

    aget-object p2, v1, v3

    .line 213
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 217
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/mob/tools/a$a;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 152
    :cond_0
    sget-object v0, Lcom/mob/tools/a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a;->d:Ljava/io/File;

    new-instance v2, Lcom/mob/tools/a$1;

    invoke-direct {v2, p0}, Lcom/mob/tools/a$1;-><init>(Lcom/mob/tools/a;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 158
    array-length v2, v1

    if-lez v2, :cond_1

    .line 159
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lcom/mob/tools/utils/DH$RequestBuilder;->getDetailNetworkTypeForStatic()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Lcom/mob/tools/utils/DH$RequestBuilder;->getAppName()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/utils/DH$RequestBuilder;->getDeviceKey()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Lcom/mob/tools/utils/DH$RequestBuilder;->getODH()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v2

    new-instance v3, Lcom/mob/tools/a$2;

    invoke-direct {v3, p0, v1, p1}, Lcom/mob/tools/a$2;-><init>(Lcom/mob/tools/a;[Ljava/io/File;Lcom/mob/tools/a$a;)V

    .line 163
    invoke-virtual {v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V

    .line 196
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "utf-8"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 76
    :cond_1
    sget-object v1, Lcom/mob/tools/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    invoke-direct {p0, p2}, Lcom/mob/tools/a;->a(Z)Ljava/io/File;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 81
    :try_start_1
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, p2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 82
    :try_start_2
    new-instance v6, Ljava/io/BufferedWriter;

    invoke-direct {v6, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 84
    invoke-virtual {v6, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v6, p1, v3

    aput-object v5, p1, v4

    .line 88
    invoke-static {p1}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 90
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/mob/tools/a;->c(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v2, v6

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v5, v2

    .line 86
    :goto_1
    :try_start_5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v2, p1, v3

    aput-object v5, p1, v4

    .line 88
    invoke-static {p1}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 90
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 92
    :goto_2
    monitor-exit v1

    return-void

    :catchall_3
    move-exception p1

    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v2, v0, v3

    aput-object v5, v0, v4

    .line 88
    invoke-static {v0}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 90
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/mob/tools/a;->c(Ljava/lang/String;)V

    .line 91
    throw p1

    :catchall_4
    move-exception p1

    .line 92
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p1
.end method
