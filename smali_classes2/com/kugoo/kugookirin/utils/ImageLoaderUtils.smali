.class public Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;
.super Ljava/lang/Object;
.source "ImageLoaderUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$ImageLoadListener;
    }
.end annotation


# static fields
.field private static cache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fileUtils:Lcom/kugoo/kugookirin/utils/FileUtils;

.field threadLooper:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 33
    new-instance v1, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$1;

    invoke-direct {v1, p0, v0}, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$1;-><init>(Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;I)V

    sput-object v1, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;->cache:Landroid/util/LruCache;

    .line 41
    new-instance v0, Lcom/kugoo/kugookirin/utils/FileUtils;

    invoke-direct {v0, p1, p2}, Lcom/kugoo/kugookirin/utils/FileUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;->fileUtils:Lcom/kugoo/kugookirin/utils/FileUtils;

    const/4 p1, 0x5

    .line 42
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;->threadLooper:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;)Lcom/kugoo/kugookirin/utils/FileUtils;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;->fileUtils:Lcom/kugoo/kugookirin/utils/FileUtils;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;->saveToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private readFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 136
    sget-object v0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private saveToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 129
    sget-object v0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public cancelDownLoad()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;->threadLooper:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$ImageLoadListener;)V
    .locals 3

    const-string v0, "[\\W]"

    const-string v1, ""

    .line 52
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;->readFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;->readFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$ImageLoadListener;->loadImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;->fileUtils:Lcom/kugoo/kugookirin/utils/FileUtils;

    invoke-virtual {v1, v0}, Lcom/kugoo/kugookirin/utils/FileUtils;->readFromSDCard(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 64
    invoke-direct {p0, v0, v1}, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;->saveToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 66
    iget-object p1, p0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;->fileUtils:Lcom/kugoo/kugookirin/utils/FileUtils;

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/utils/FileUtils;->readFromSDCard(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$ImageLoadListener;->loadImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 75
    :cond_1
    new-instance v1, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$2;

    invoke-direct {v1, p0, p2}, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$2;-><init>(Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$ImageLoadListener;)V

    .line 85
    iget-object p2, p0, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;->threadLooper:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$3;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/kugoo/kugookirin/utils/ImageLoaderUtils$3;-><init>(Lcom/kugoo/kugookirin/utils/ImageLoaderUtils;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
