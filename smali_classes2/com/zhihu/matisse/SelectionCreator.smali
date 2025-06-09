.class public final Lcom/zhihu/matisse/SelectionCreator;
.super Ljava/lang/Object;
.source "SelectionCreator.java"


# instance fields
.field private final mMatisse:Lcom/zhihu/matisse/Matisse;

.field private final mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;


# direct methods
.method constructor <init>(Lcom/zhihu/matisse/Matisse;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhihu/matisse/Matisse;",
            "Ljava/util/Set<",
            "Lcom/zhihu/matisse/MimeType;",
            ">;Z)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/zhihu/matisse/SelectionCreator;->mMatisse:Lcom/zhihu/matisse/Matisse;

    .line 98
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->getCleanInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    .line 99
    iput-object p2, p1, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->mimeTypeSet:Ljava/util/Set;

    .line 100
    iput-boolean p3, p1, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->mediaTypeExclusive:Z

    const/4 p2, -0x1

    .line 101
    iput p2, p1, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->orientation:I

    return-void
.end method


# virtual methods
.method public addFilter(Lcom/zhihu/matisse/filter/Filter;)Lcom/zhihu/matisse/SelectionCreator;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-object v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->filters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->filters:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    .line 188
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-object v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 187
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filter cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public autoHideToolbarOnSingleTap(Z)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iput-boolean p1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->autoHideToobar:Z

    return-object p0
.end method

.method public capture(Z)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iput-boolean p1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->capture:Z

    return-object p0
.end method

.method public captureStrategy(Lcom/zhihu/matisse/internal/entity/CaptureStrategy;)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iput-object p1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->captureStrategy:Lcom/zhihu/matisse/internal/entity/CaptureStrategy;

    return-object p0
.end method

.method public countable(Z)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iput-boolean p1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->countable:Z

    return-object p0
.end method

.method public forResult(I)V
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mMatisse:Lcom/zhihu/matisse/Matisse;

    invoke-virtual {v0}, Lcom/zhihu/matisse/Matisse;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 357
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/zhihu/matisse/ui/MatisseActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 359
    iget-object v2, p0, Lcom/zhihu/matisse/SelectionCreator;->mMatisse:Lcom/zhihu/matisse/Matisse;

    invoke-virtual {v2}, Lcom/zhihu/matisse/Matisse;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 361
    invoke-virtual {v2, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public gridExpectedSize(I)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iput p1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->gridExpectedSize:I

    return-object p0
.end method

.method public imageEngine(Lcom/zhihu/matisse/engine/ImageEngine;)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iput-object p1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->imageEngine:Lcom/zhihu/matisse/engine/ImageEngine;

    return-object p0
.end method

.method public maxOriginalSize(I)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iput p1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->originalMaxSize:I

    return-object p0
.end method

.method public maxSelectable(I)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->maxImageSelectable:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->maxVideoSelectable:I

    if-gtz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iput p1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->maxSelectable:I

    return-object p0

    .line 155
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already set maxImageSelectable and maxVideoSelectable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSelectable must be greater than or equal to one"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public maxSelectablePerMediaType(II)Lcom/zhihu/matisse/SelectionCreator;
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    const/4 v1, -0x1

    iput v1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->maxSelectable:I

    .line 172
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iput p1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->maxImageSelectable:I

    .line 173
    iget-object p1, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iput p2, p1, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->maxVideoSelectable:I

    return-object p0

    .line 170
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "max selectable must be greater than or equal to one"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public originalEnable(Z)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iput-boolean p1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->originalable:Z

    return-object p0
.end method

.method public restrictOrientation(I)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iput p1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->orientation:I

    return-object p0
.end method

.method public setOnCheckedListener(Lcom/zhihu/matisse/listener/OnCheckedListener;)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iput-object p1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->onCheckedListener:Lcom/zhihu/matisse/listener/OnCheckedListener;

    return-object p0
.end method

.method public setOnSelectedListener(Lcom/zhihu/matisse/listener/OnSelectedListener;)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iput-object p1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->onSelectedListener:Lcom/zhihu/matisse/listener/OnSelectedListener;

    return-object p0
.end method

.method public showPreview(Z)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iput-boolean p1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->showPreview:Z

    return-object p0
.end method

.method public showSingleMediaType(Z)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iput-boolean p1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->showSingleMediaType:Z

    return-object p0
.end method

.method public spanCount(I)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iput p1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->spanCount:I

    return-object p0

    .line 272
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "spanCount cannot be less than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public theme(I)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iput p1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->themeId:I

    return-object p0
.end method

.method public thumbnailScale(F)Lcom/zhihu/matisse/SelectionCreator;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/zhihu/matisse/SelectionCreator;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iput p1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->thumbnailScale:F

    return-object p0

    .line 299
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Thumbnail scale must be between (0.0, 1.0]"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
