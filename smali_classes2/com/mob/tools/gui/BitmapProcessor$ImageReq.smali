.class public Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageReq"
.end annotation


# instance fields
.field private bitmapDesiredOptions:Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

.field private callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;",
            ">;"
        }
    .end annotation
.end field

.field private diskCacheTime:J

.field private reqTime:J

.field private url:Ljava/lang/String;

.field private useDiskCache:Z

.field private useRamCache:Z

.field private worker:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 523
    iput-boolean v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->useRamCache:Z

    .line 524
    iput-boolean v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->useDiskCache:Z

    const-wide/16 v0, 0x0

    .line 525
    iput-wide v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->diskCacheTime:J

    .line 531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->reqTime:J

    .line 532
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->callbacks:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;
    .locals 0

    .line 520
    iget-object p0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;
    .locals 0

    .line 520
    iget-object p0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->bitmapDesiredOptions:Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    return-object p0
.end method

.method static synthetic access$102(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->bitmapDesiredOptions:Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;)Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->worker:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 520
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->throwComplete(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V
    .locals 0

    .line 520
    invoke-direct {p0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->throwError()V

    return-void
.end method

.method static synthetic access$200(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/util/ArrayList;
    .locals 0

    .line 520
    iget-object p0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->callbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Z
    .locals 0

    .line 520
    iget-boolean p0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->useRamCache:Z

    return p0
.end method

.method static synthetic access$302(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Z)Z
    .locals 0

    .line 520
    iput-boolean p1, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->useRamCache:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)J
    .locals 2

    .line 520
    iget-wide v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->diskCacheTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;J)J
    .locals 0

    .line 520
    iput-wide p1, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->diskCacheTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Z
    .locals 0

    .line 520
    iget-boolean p0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->useDiskCache:Z

    return p0
.end method

.method static synthetic access$502(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Z)Z
    .locals 0

    .line 520
    iput-boolean p1, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->useDiskCache:Z

    return p1
.end method

.method private throwComplete(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;

    .line 537
    iget-object v2, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->url:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;->onImageGot(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 539
    :cond_0
    iget-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private throwError()V
    .locals 4

    .line 543
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;

    .line 544
    iget-object v2, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->url:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;->onImageGot(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "time="

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->reqTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "worker="

    .line 553
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->worker:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    invoke-virtual {v2}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->worker:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    invoke-virtual {v2}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
