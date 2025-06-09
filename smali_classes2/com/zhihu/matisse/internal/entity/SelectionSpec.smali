.class public final Lcom/zhihu/matisse/internal/entity/SelectionSpec;
.super Ljava/lang/Object;
.source "SelectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/matisse/internal/entity/SelectionSpec$InstanceHolder;
    }
.end annotation


# instance fields
.field public autoHideToobar:Z

.field public capture:Z

.field public captureStrategy:Lcom/zhihu/matisse/internal/entity/CaptureStrategy;

.field public countable:Z

.field public filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zhihu/matisse/filter/Filter;",
            ">;"
        }
    .end annotation
.end field

.field public gridExpectedSize:I

.field public hasInited:Z

.field public imageEngine:Lcom/zhihu/matisse/engine/ImageEngine;

.field public maxImageSelectable:I

.field public maxSelectable:I

.field public maxVideoSelectable:I

.field public mediaTypeExclusive:Z

.field public mimeTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zhihu/matisse/MimeType;",
            ">;"
        }
    .end annotation
.end field

.field public onCheckedListener:Lcom/zhihu/matisse/listener/OnCheckedListener;

.field public onSelectedListener:Lcom/zhihu/matisse/listener/OnSelectedListener;

.field public orientation:I

.field public originalMaxSize:I

.field public originalable:Z

.field public showPreview:Z

.field public showSingleMediaType:Z

.field public spanCount:I

.field public themeId:I

.field public thumbnailScale:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhihu/matisse/internal/entity/SelectionSpec$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;-><init>()V

    return-void
.end method

.method public static getCleanInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;
    .locals 1

    .line 69
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    .line 70
    invoke-direct {v0}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->reset()V

    return-object v0
.end method

.method public static getInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;
    .locals 1

    .line 65
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec$InstanceHolder;->access$000()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    return-object v0
.end method

.method private reset()V
    .locals 4

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->mimeTypeSet:Ljava/util/Set;

    const/4 v1, 0x1

    .line 76
    iput-boolean v1, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->mediaTypeExclusive:Z

    const/4 v2, 0x0

    .line 77
    iput-boolean v2, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->showSingleMediaType:Z

    .line 78
    sget v3, Lcom/zhihu/matisse/R$style;->Matisse_Zhihu:I

    iput v3, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->themeId:I

    .line 79
    iput v2, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->orientation:I

    .line 80
    iput-boolean v2, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->countable:Z

    .line 81
    iput v1, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->maxSelectable:I

    .line 82
    iput v2, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->maxImageSelectable:I

    .line 83
    iput v2, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->maxVideoSelectable:I

    .line 84
    iput-object v0, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->filters:Ljava/util/List;

    .line 85
    iput-boolean v2, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->capture:Z

    .line 86
    iput-object v0, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->captureStrategy:Lcom/zhihu/matisse/internal/entity/CaptureStrategy;

    const/4 v0, 0x3

    .line 87
    iput v0, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->spanCount:I

    .line 88
    iput v2, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->gridExpectedSize:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 89
    iput v0, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->thumbnailScale:F

    .line 90
    new-instance v0, Lcom/zhihu/matisse/engine/impl/GlideEngine;

    invoke-direct {v0}, Lcom/zhihu/matisse/engine/impl/GlideEngine;-><init>()V

    iput-object v0, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->imageEngine:Lcom/zhihu/matisse/engine/ImageEngine;

    .line 91
    iput-boolean v1, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->hasInited:Z

    .line 92
    iput-boolean v2, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->originalable:Z

    .line 93
    iput-boolean v2, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->autoHideToobar:Z

    const v0, 0x7fffffff

    .line 94
    iput v0, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->originalMaxSize:I

    .line 95
    iput-boolean v1, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->showPreview:Z

    return-void
.end method


# virtual methods
.method public needOrientationRestriction()Z
    .locals 2

    .line 103
    iget v0, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->orientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onlyShowGif()Z
    .locals 2

    .line 115
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->showSingleMediaType:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zhihu/matisse/MimeType;->ofGif()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->mimeTypeSet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onlyShowImages()Z
    .locals 2

    .line 107
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->showSingleMediaType:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zhihu/matisse/MimeType;->ofImage()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->mimeTypeSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onlyShowVideos()Z
    .locals 2

    .line 111
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->showSingleMediaType:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zhihu/matisse/MimeType;->ofVideo()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->mimeTypeSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public singleSelectionModeEnabled()Z
    .locals 2

    .line 99
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->countable:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->maxSelectable:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->maxImageSelectable:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->maxVideoSelectable:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
