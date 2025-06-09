.class public Lcom/lidroid/xutils/bitmap/core/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;,
        Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;
    }
.end annotation


# instance fields
.field private final DISK_CACHE_INDEX:I

.field private globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

.field private final mDiskCacheLock:Ljava/lang/Object;

.field private mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

.field private mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/cache/LruMemoryCache<",
            "Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->DISK_CACHE_INDEX:I

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 53
    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "globalConfig may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addBitmapToMemoryCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 210
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapFactory()Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0}, Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;->cloneNew()Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 215
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isMemoryCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz v0, :cond_1

    .line 216
    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;)V

    .line 217
    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {p1, v0, p3, p4, p5}, Lcom/lidroid/xutils/cache/LruMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    :cond_1
    return-object p3
.end method

.method private decodeBitmapMeta(Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 395
    :cond_0
    iget-object v1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    .line 396
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->isShowOriginal()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 400
    :cond_1
    iget-object p1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 401
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v0

    .line 402
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    .line 399
    invoke-static {p1, v0, p2}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;Lcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 397
    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 404
    :cond_3
    iget-object v1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->data:[B

    if-eqz v1, :cond_6

    if-eqz p2, :cond_5

    .line 405
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->isShowOriginal()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 409
    :cond_4
    iget-object p1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->data:[B

    .line 410
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v0

    .line 411
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    .line 408
    invoke-static {p1, v0, p2}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeSampledBitmapFromByteArray([BLcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 406
    :cond_5
    :goto_1
    iget-object p1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->data:[B

    invoke-static {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeByteArray([B)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_6
    :goto_2
    return-object v0
.end method

.method private declared-synchronized rotateBitmapIfNeeded(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    monitor-enter p0

    if-eqz p2, :cond_3

    .line 419
    :try_start_0
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->isAutoRotation()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 420
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 421
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_3

    .line 424
    :try_start_1
    new-instance p2, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p1, "Orientation"

    const/4 v0, 0x0

    .line 428
    invoke-virtual {p2, p1, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10e

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    goto :goto_0

    :cond_2
    const/16 v0, 0xb4

    :goto_0
    if-eqz v0, :cond_3

    .line 445
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, v0

    .line 446
    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 447
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p3

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 448
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object p3, p1

    goto :goto_1

    .line 426
    :catchall_0
    monitor-exit p0

    return-object p3

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 453
    :cond_3
    :goto_1
    monitor-exit p0

    return-object p3
.end method


# virtual methods
.method public clearCache()V
    .locals 0

    .line 299
    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearMemoryCache()V

    .line 300
    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearDiskCache()V

    return-void
.end method

.method public clearCache(Ljava/lang/String;)V
    .locals 0

    .line 326
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearMemoryCache(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearDiskCache(Ljava/lang/String;)V

    return-void
.end method

.method public clearDiskCache()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->isClosed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 313
    :try_start_1
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->delete()V

    .line 314
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 316
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v1, 0x0

    .line 318
    iput-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    .line 310
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 321
    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->initDiskCache()V

    return-void

    :catchall_1
    move-exception v1

    .line 310
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public clearDiskCache(Ljava/lang/String;)V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->isClosed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 343
    :try_start_1
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->remove(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 345
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 340
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public clearMemoryCache()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruMemoryCache;->evictAll()V

    :cond_0
    return-void
.end method

.method public clearMemoryCache(Ljava/lang/String;)V
    .locals 2

    .line 331
    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;)V

    .line 332
    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz p1, :cond_1

    .line 333
    :goto_0
    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/cache/LruMemoryCache;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/cache/LruMemoryCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public close()V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 375
    :try_start_1
    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 379
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 381
    iput-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    .line 372
    :cond_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public downloadBitmap(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)Landroid/graphics/Bitmap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<",
            "*>;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    move-object v7, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    .line 135
    new-instance v4, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;

    const/4 v8, 0x0

    invoke-direct {v4, p0, v8}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;)V

    .line 144
    :try_start_0
    iget-object v0, v7, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isDiskCacheEnabled()Z

    move-result v0

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_4

    .line 145
    iget-object v0, v7, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->initDiskCache()V

    .line 149
    :cond_0
    iget-object v0, v7, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v0, :cond_4

    .line 151
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v0, 0x0

    if-nez v9, :cond_2

    .line 153
    :try_start_2
    iget-object v10, v7, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v10, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->edit(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 155
    invoke-virtual {v10, v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :try_start_3
    iget-object v12, v7, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v12}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDownloader()Lcom/lidroid/xutils/bitmap/download/Downloader;

    move-result-object v12

    invoke-virtual {v12, p1, v11, v1}, Lcom/lidroid/xutils/bitmap/download/Downloader;->downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)J

    move-result-wide v12

    iput-wide v12, v4, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J

    .line 157
    iget-wide v12, v4, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J

    cmp-long v12, v12, v5

    if-gez v12, :cond_1

    .line 158
    invoke-virtual {v10}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->abort()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 201
    invoke-static {v11}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 202
    :goto_0
    invoke-static {v9}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v8

    .line 161
    :cond_1
    :try_start_4
    iget-wide v12, v4, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J

    invoke-virtual {v10, v12, v13}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->setEntryExpiryTimestamp(J)V

    .line 162
    invoke-virtual {v10}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->commit()V

    .line 164
    iget-object v10, v7, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v10, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;

    move-result-object v9

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v10, v8

    goto :goto_2

    :cond_2
    move-object v11, v8

    :goto_1
    if-eqz v9, :cond_3

    .line 168
    invoke-virtual {v9, v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/FileInputStream;

    move-result-object v0

    iput-object v0, v4, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    .line 169
    invoke-direct {p0, v4, v3}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->decodeBitmapMeta(Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v10, :cond_5

    .line 171
    :try_start_5
    iput-object v8, v4, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    .line 172
    iget-object v0, v7, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->remove(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v10, v8

    goto :goto_3

    :cond_3
    move-object v10, v8

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v9, v8

    move-object v10, v9

    :goto_2
    move-object v11, v10

    .line 176
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    :cond_5
    :goto_4
    if-nez v10, :cond_7

    .line 183
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 184
    :try_start_7
    iget-object v0, v7, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDownloader()Lcom/lidroid/xutils/bitmap/download/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1, v10, v1}, Lcom/lidroid/xutils/bitmap/download/Downloader;->downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J

    .line 185
    iget-wide v0, v4, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    cmp-long v0, v0, v5

    if-gez v0, :cond_6

    .line 201
    invoke-static {v10}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 188
    :cond_6
    :try_start_8
    move-object v0, v10

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v4, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->data:[B

    .line 189
    invoke-direct {p0, v4, v3}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->decodeBitmapMeta(Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v11, v10

    move-object v10, v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v11, v10

    goto :goto_6

    :catchall_5
    move-exception v0

    goto :goto_6

    :cond_7
    :goto_5
    if-eqz v10, :cond_8

    .line 194
    :try_start_9
    invoke-direct {p0, p1, v3, v10}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->rotateBitmapIfNeeded(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    iget-wide v5, v4, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 201
    :cond_8
    invoke-static {v11}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v9}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v10

    :catchall_6
    move-exception v0

    move-object v9, v8

    move-object v11, v9

    .line 199
    :goto_6
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 201
    invoke-static {v11}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v9}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v8

    :catchall_7
    move-exception v0

    .line 201
    invoke-static {v11}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v9}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 203
    throw v0
.end method

.method public flush()V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 359
    :try_start_1
    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 361
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 246
    invoke-virtual {v1, p1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->getCacheFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 248
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 244
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBitmapFromDiskCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 261
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isDiskCacheEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-nez v1, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->initDiskCache()V

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v1, :cond_5

    .line 268
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 271
    :try_start_1
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->isShowOriginal()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 277
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v3

    .line 278
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 275
    invoke-static {v2, v3, v4}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;Lcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 273
    :cond_3
    :goto_0
    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 272
    invoke-static {v2}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 281
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->rotateBitmapIfNeeded(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 282
    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v2, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->getExpiryTimestamp(Ljava/lang/String;)J

    move-result-wide v7

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v1, v0

    .line 286
    :goto_3
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 288
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 289
    throw p1

    :cond_5
    :goto_4
    return-object v0
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isMemoryCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;)V

    .line 232
    iget-object p1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/cache/LruMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    :cond_0
    return-object v1
.end method

.method public initDiskCache()V
    .locals 7

    .line 91
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isDiskCacheEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v2}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDiskCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    :cond_1
    invoke-static {v1}, Lcom/lidroid/xutils/util/OtherUtils;->getAvailableSpace(Ljava/io/File;)J

    move-result-wide v2

    .line 96
    iget-object v4, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v4}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDiskCacheSize()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    move-wide v2, v4

    :cond_2
    const/4 v4, 0x1

    .line 99
    :try_start_1
    invoke-static {v1, v4, v4, v2, v3}, Lcom/lidroid/xutils/cache/LruDiskCache;->open(Ljava/io/File;IIJ)Lcom/lidroid/xutils/cache/LruDiskCache;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    .line 100
    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v2}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getFileNameGenerator()Lcom/lidroid/xutils/cache/FileNameGenerator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->setFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)V

    const-string v1, "create disk cache success"

    .line 101
    invoke-static {v1}, Lcom/lidroid/xutils/util/LogUtils;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    .line 103
    :try_start_2
    iput-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    const-string v2, "create disk cache error"

    .line 104
    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public initMemoryCache()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isMemoryCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz v0, :cond_1

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearMemoryCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :catchall_0
    :cond_1
    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$1;

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getMemoryCacheSize()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$1;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;I)V

    iput-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    return-void
.end method

.method public setDiskCacheFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {v1, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->setFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)V

    .line 126
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

.method public setDiskCacheSize(I)V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v1, :cond_0

    int-to-long v2, p1

    .line 120
    invoke-virtual {v1, v2, v3}, Lcom/lidroid/xutils/cache/LruDiskCache;->setMaxSize(J)V

    .line 118
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

.method public setMemoryCacheSize(I)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/cache/LruMemoryCache;->setMaxSize(I)V

    :cond_0
    return-void
.end method
