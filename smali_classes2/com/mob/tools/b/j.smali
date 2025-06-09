.class public Lcom/mob/tools/b/j;
.super Ljava/lang/Object;


# static fields
.field static volatile a:Landroid/os/IBinder; = null

.field private static b:I = 0x0

.field private static volatile c:I = -0x80000000


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 251
    sget v0, Lcom/mob/tools/b/j;->b:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const-string v0, "034cd=cbcicjchcbckMb2cjSdhedhUck\'i1ceckddfkRcbMdg(c4di3eKgb9cdc]di[eSci"

    .line 254
    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "004:dkTh3cfee"

    .line 255
    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "$"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {p0}, Lcom/mob/tools/a/d;->a(Landroid/content/Context;)Lcom/mob/tools/a/d;

    move-result-object p0

    const-string v1, "026;ebfiecdfdkecdcebddfgdfcgdi(eh\'fkCcb3dg<c1di$e8dd0d)decj"

    .line 258
    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    .line 257
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/mob/tools/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sput p0, Lcom/mob/tools/b/j;->b:I

    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/os/HandlerThread;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 188
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/mob/tools/a/d;->a(Landroid/content/Context;)Lcom/mob/tools/a/d;

    move-result-object v6

    const-string v0, "025cdXcbcicjchcbckcjehckdk.e,ciccch_beTgb)cdc+diRe ci"

    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v0, "0101diMeh@dkDeCciccch[be"

    .line 189
    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    aput-object v0, v10, v4

    new-array v11, v3, [Ljava/lang/Object;

    aput-object p1, v11, v4

    const/4 v12, 0x0

    .line 188
    invoke-virtual/range {v6 .. v12}, Lcom/mob/tools/a/d;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 191
    invoke-static/range {p0 .. p0}, Lcom/mob/tools/a/d;->a(Landroid/content/Context;)Lcom/mob/tools/a/d;

    move-result-object v6

    const-string v7, "024cd5cbcicjchcbckcjehckdkIgeff^dc6cff2ee$cb3dg"

    invoke-static {v7}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mob/tools/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 193
    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v8, p3

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 194
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v9, p4

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 195
    :try_start_2
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v10, p5

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 196
    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/mob/tools/a/d;->a(Landroid/content/Context;)Lcom/mob/tools/a/d;

    move-result-object v5

    const-class v10, Landroid/os/IBinder;

    const-string v11, "0126ehFgeff\'dccjceceAcd]cb"

    invoke-static {v11}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x6

    new-array v13, v12, [Ljava/lang/Class;

    const-class v14, Ljava/io/FileDescriptor;

    aput-object v14, v13, v4

    const-class v14, Ljava/io/FileDescriptor;

    aput-object v14, v13, v3

    const-class v14, Ljava/io/FileDescriptor;

    aput-object v14, v13, v1

    const-class v14, [Ljava/lang/String;

    aput-object v14, v13, v2

    const-string v14, "024cdHcbcicjchcbckcjehckdk9geffBdcHcffGeeZcb7dg"

    .line 198
    invoke-static {v14}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const/4 v15, 0x4

    aput-object v14, v13, v15

    const-class v14, Landroid/os/ResultReceiver;

    const/16 v16, 0x5

    aput-object v14, v13, v16

    new-array v12, v12, [Ljava/lang/Object;

    .line 199
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v14

    aput-object v14, v12, v4

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v14

    aput-object v14, v12, v3

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v14

    aput-object v14, v12, v1

    aput-object p2, v12, v2

    aput-object v6, v12, v15

    new-instance v6, Landroid/os/ResultReceiver;

    new-instance v14, Landroid/os/Handler;

    .line 200
    invoke-virtual/range {p6 .. p6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v6, v14}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    aput-object v6, v12, v16

    const/4 v6, 0x0

    move-object/from16 p0, v5

    move-object/from16 p1, v10

    move-object/from16 p2, v0

    move-object/from16 p3, v11

    move-object/from16 p4, v13

    move-object/from16 p5, v12

    move-object/from16 p6, v6

    .line 196
    invoke-virtual/range {p0 .. p6}, Lcom/mob/tools/a/d;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v7, v0, v4

    aput-object v8, v0, v3

    aput-object v9, v0, v1

    .line 205
    invoke-static {v0}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    return v4

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v9, v5

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v8, v5

    move-object v9, v8

    :goto_0
    move-object v5, v7

    goto :goto_1

    :cond_0
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v5, v0, v4

    aput-object v5, v0, v3

    aput-object v5, v0, v1

    invoke-static {v0}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    const/4 v0, -0x1

    return v0

    :catchall_3
    move-exception v0

    move-object v8, v5

    move-object v9, v8

    :goto_1
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v5, v2, v4

    aput-object v8, v2, v3

    aput-object v9, v2, v1

    invoke-static {v2}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 206
    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 212
    invoke-static {p0}, Lcom/mob/tools/b/j;->a(Landroid/content/Context;)I

    move-result v0

    .line 213
    invoke-static {}, Lcom/mob/tools/b/j;->c()I

    move-result v1

    invoke-static {p0, p1, p2, v1, v0}, Lcom/mob/tools/b/j;->a(Landroid/content/Context;Ljava/lang/String;III)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;III)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 220
    sget-object v0, Lcom/mob/tools/b/j;->a:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 221
    invoke-static {p0}, Lcom/mob/tools/a/d;->a(Landroid/content/Context;)Lcom/mob/tools/a/d;

    move-result-object v2

    const-string v0, "025cd5cbcicjchcbckcjehckdk,e.ciccchRbe;gbKcdcZdiRe8ci"

    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v0, "010KdiWeh[dk?e@ciccchAbe"

    .line 222
    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    new-array v7, v0, [Ljava/lang/Object;

    const-string v0, "007icb5dg>cAdi0e"

    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    const/4 v8, 0x0

    .line 221
    invoke-virtual/range {v2 .. v8}, Lcom/mob/tools/a/d;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    sput-object v0, Lcom/mob/tools/b/j;->a:Landroid/os/IBinder;

    .line 224
    :cond_0
    sget-object v0, Lcom/mob/tools/b/j;->a:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v3, "034cd6cbcicjchcbck]bVcj]dhedh?ck7i@ceckddfk>cb6dg]c)di*e4gbAcdcFdi3e+ci"

    .line 228
    invoke-static {v3}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    sget-object p1, Lcom/mob/tools/b/j;->a:Landroid/os/IBinder;

    invoke-interface {p1, p4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 233
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 234
    invoke-static {}, Lcom/mob/tools/b/j;->b()Landroid/os/Parcelable$Creator;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    invoke-static {p0}, Lcom/mob/tools/a/d;->a(Landroid/content/Context;)Lcom/mob/tools/a/d;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/mob/tools/a/d;->b(Landroid/content/Context;)Z

    return-object p1

    :catchall_0
    move-exception p1

    .line 236
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    invoke-static {p0}, Lcom/mob/tools/a/d;->a(Landroid/content/Context;)Lcom/mob/tools/a/d;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/mob/tools/a/d;->b(Landroid/content/Context;)Z

    .line 239
    throw p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;I)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mob/commons/z;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "XPL-1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string p1, "005_ce4eDchfccf"

    .line 49
    invoke-static {p1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/mob/tools/b/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/mob/tools/b/j;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 51
    invoke-static {p0, v0}, Lcom/mob/tools/b/j;->a(Landroid/content/Context;Landroid/os/HandlerThread;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {p0, v1, v0}, Lcom/mob/tools/b/j;->a(Landroid/content/Context;ZLandroid/os/HandlerThread;)Ljava/util/Set;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    move-object v2, p0

    .line 61
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 66
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 57
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 61
    :try_start_3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    return-object v2

    :catchall_2
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    .line 66
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 68
    :goto_3
    throw p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/HandlerThread;)Ljava/util/Set;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/HandlerThread;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/mob/commons/d;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 74
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".tmp11"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 78
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "002Dch d"

    invoke-static {v4}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    new-instance v10, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "out"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    new-instance v11, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "err"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_1
    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    :try_start_0
    const-string v0, "007icb:dg.c.di>e"

    .line 89
    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v13, [Ljava/lang/String;

    const-string v0, "004fXchehUh"

    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v15

    const-string v0, "packages"

    aput-object v0, v5, v14

    move-object/from16 v3, p0

    move-object v6, v2

    move-object v7, v10

    move-object v8, v11

    move-object/from16 v9, p1

    invoke-static/range {v3 .. v9}, Lcom/mob/tools/b/j;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/os/HandlerThread;)I

    .line 90
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 92
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 93
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "utf-8"

    invoke-direct {v4, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 94
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v6, "008icb7dgJcYdiOej"

    .line 96
    invoke-static {v6}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    if-eqz v1, :cond_3

    .line 98
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-le v7, v8, :cond_2

    .line 100
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 101
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 102
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 104
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_3
    new-array v1, v12, [Ljava/io/Closeable;

    aput-object v5, v1, v15

    aput-object v4, v1, v14

    aput-object v3, v1, v13

    .line 113
    invoke-static {v1}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 114
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 115
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 116
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v5

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v4, v1

    goto :goto_1

    :cond_4
    new-array v0, v12, [Ljava/io/Closeable;

    aput-object v1, v0, v15

    aput-object v1, v0, v14

    aput-object v1, v0, v13

    .line 113
    invoke-static {v0}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 114
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 115
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 116
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v1

    move-object v4, v3

    :goto_1
    new-array v5, v12, [Ljava/io/Closeable;

    aput-object v1, v5, v15

    aput-object v4, v5, v14

    aput-object v3, v5, v13

    .line 113
    invoke-static {v5}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 114
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 115
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 116
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 117
    throw v0

    :cond_5
    :goto_2
    return-object v1
.end method

.method public static a(Landroid/content/Context;ZLandroid/os/HandlerThread;)Ljava/util/Set;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Landroid/os/HandlerThread;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 123
    invoke-static {}, Lcom/mob/commons/d;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 124
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".tmp11"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 128
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "002\'ch:d"

    invoke-static {v4}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    new-instance v10, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "out"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    new-instance v11, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "err"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_1
    const-string v0, "0"

    const/4 v3, 0x4

    const-string v4, "--user"

    const-string v5, "-a"

    const/4 v6, 0x5

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x3

    const/4 v15, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    const-string v7, "007icbAdg_c7di@e"

    .line 140
    invoke-static {v7}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/String;

    const-string v8, "016Qcdcf4e>cidbgjLcbhWchccchBhPchPe eh"

    invoke-static {v8}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v15

    aput-object v5, v6, v13

    const-string v5, "026cdDcbcicjchcbckch$dhedhAckGcbhJchcjEd(ckgbecdddf"

    .line 141
    invoke-static {v5}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v12

    aput-object v4, v6, v14

    aput-object v0, v6, v3

    move-object/from16 v3, p0

    move-object v4, v7

    move-object v5, v6

    move-object v6, v2

    move-object v7, v10

    move-object v8, v11

    move-object/from16 v9, p2

    .line 140
    invoke-static/range {v3 .. v9}, Lcom/mob/tools/b/j;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/os/HandlerThread;)I

    goto :goto_0

    :cond_2
    const-string v7, "007icbXdg_cDdi2e"

    .line 145
    invoke-static {v7}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "016$cdcfFe%cidbgj[cbh_chccch7h=chBe%eh"

    invoke-static {v9}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v15

    aput-object v5, v8, v13

    const-string v5, "026cd5cbcicjchcbckchJdhedh5ckPcbhOchcjSd@ckgbecdddf"

    .line 146
    invoke-static {v5}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v12

    const-string v5, "-c"

    aput-object v5, v8, v14

    const-string v5, "032cd4cbcicjchcbckch;dhedhOck0bche>dicjcidbckedecdjdfdcejfhfi"

    .line 147
    invoke-static {v5}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v3

    aput-object v4, v8, v6

    const/4 v3, 0x6

    aput-object v0, v8, v3

    move-object/from16 v3, p0

    move-object v4, v7

    move-object v5, v8

    move-object v6, v2

    move-object v7, v10

    move-object v8, v11

    move-object/from16 v9, p2

    .line 145
    invoke-static/range {v3 .. v9}, Lcom/mob/tools/b/j;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/os/HandlerThread;)I

    .line 150
    :goto_0
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_5

    .line 151
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 152
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 153
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "utf-8"

    invoke-direct {v4, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 154
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v6, "012icb(dg>c)diFeJdf:c)ceWe1hh"

    .line 156
    invoke-static {v6}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-eqz v1, :cond_4

    .line 158
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-le v7, v8, :cond_3

    .line 160
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 161
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 162
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 164
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_4
    new-array v1, v14, [Ljava/io/Closeable;

    aput-object v5, v1, v15

    aput-object v4, v1, v13

    aput-object v3, v1, v12

    .line 173
    invoke-static {v1}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 174
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 175
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 176
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v5

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v4, v1

    goto :goto_2

    :cond_5
    new-array v0, v14, [Ljava/io/Closeable;

    aput-object v1, v0, v15

    aput-object v1, v0, v13

    aput-object v1, v0, v12

    .line 173
    invoke-static {v0}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 174
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 175
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 176
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v1

    move-object v4, v3

    :goto_2
    new-array v5, v14, [Ljava/io/Closeable;

    aput-object v1, v5, v15

    aput-object v4, v5, v13

    aput-object v3, v5, v12

    .line 173
    invoke-static {v5}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 174
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 175
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 176
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 177
    throw v0

    :cond_6
    :goto_3
    return-object v1
.end method

.method public static a()Z
    .locals 5

    const/4 v0, 0x1

    .line 280
    :try_start_0
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "006g2cf4cNef_eHch"

    .line 281
    invoke-static {v2}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v2, v0, [I

    .line 284
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mob/tools/utils/DH$RequestBuilder;->getHmOsDetailedVer()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v3

    new-instance v4, Lcom/mob/tools/b/j$1;

    invoke-direct {v4, v2, v1}, Lcom/mob/tools/b/j$1;-><init>([ILjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V

    .line 295
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    const/4 v1, 0x0

    aget v2, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 302
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method private static b()Landroid/os/Parcelable$Creator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "030cdKcbcicjchcbckSbLcjQdhedhEck2iIceckfkTcbFdg%cOdiLeQdd>dJdecj"

    .line 246
    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "007Idcfifhecebfgfi"

    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable$Creator;

    return-object v0
.end method

.method private static c()I
    .locals 6

    .line 262
    sget v0, Lcom/mob/tools/b/j;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 263
    sget v0, Lcom/mob/tools/b/j;->c:I

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "021cdBcbcicjchcbckcjehckdjehAe9ciej0cd:cb;fe"

    .line 267
    invoke-static {v1}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "009Ndi%eh*djehMeZciddcb"

    .line 268
    invoke-static {v2}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v0

    .line 267
    invoke-static {v1, v2, v4, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/mob/tools/b/j;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 270
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return v0
.end method
