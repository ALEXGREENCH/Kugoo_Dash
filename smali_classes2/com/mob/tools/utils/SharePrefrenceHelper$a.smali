.class final Lcom/mob/tools/utils/SharePrefrenceHelper$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/SharePrefrenceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static c:Ljava/io/File;


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 939
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    .line 945
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 946
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    .line 947
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 948
    iget-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 950
    :cond_0
    iget-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 951
    iget-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 954
    :cond_1
    invoke-direct {p0}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 956
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const-class v0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    monitor-enter v0

    .line 990
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->c:Ljava/io/File;

    if-nez v1, :cond_0

    .line 991
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    sget-object v2, Lcom/mob/tools/utils/SharePrefrenceHelper;->SP_CACHE_FOLDER:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->c:Ljava/io/File;

    .line 993
    :cond_0
    sget-object p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->c:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;

    monitor-enter v0

    .line 997
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 998
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 999
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 1001
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private b()V
    .locals 12

    .line 961
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 962
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 967
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 968
    :try_start_2
    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "utf-8"

    invoke-direct {v7, v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 969
    :try_start_3
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 970
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 971
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    :goto_0
    if-eqz v9, :cond_1

    .line 973
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_0

    const-string v10, "\n"

    .line 974
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    :cond_0
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 979
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v8, v4, v3

    aput-object v7, v4, v2

    aput-object v6, v4, v1

    .line 983
    invoke-static {v4}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_0
    move-exception v5

    goto :goto_1

    :catchall_1
    move-exception v8

    move-object v11, v8

    move-object v8, v5

    move-object v5, v11

    goto :goto_1

    :catchall_2
    move-exception v7

    move-object v8, v5

    move-object v5, v7

    move-object v7, v8

    goto :goto_1

    :catchall_3
    move-exception v6

    move-object v7, v5

    move-object v8, v7

    move-object v5, v6

    move-object v6, v8

    .line 981
    :goto_1
    :try_start_6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v8, v4, v3

    aput-object v7, v4, v2

    aput-object v6, v4, v1

    .line 983
    invoke-static {v4}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_4
    move-exception v5

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v8, v4, v3

    aput-object v7, v4, v2

    aput-object v6, v4, v1

    invoke-static {v4}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 984
    throw v5

    .line 986
    :cond_2
    :goto_2
    monitor-exit v0

    return-void

    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v1
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1016
    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 1017
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1018
    iget-object v2, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1019
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1020
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
