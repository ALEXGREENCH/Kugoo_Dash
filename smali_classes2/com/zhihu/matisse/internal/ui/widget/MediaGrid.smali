.class public Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;
.super Lcom/zhihu/matisse/internal/ui/widget/SquareFrameLayout;
.source "MediaGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;,
        Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;
    }
.end annotation


# instance fields
.field private mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

.field private mGifTag:Landroid/widget/ImageView;

.field private mListener:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;

.field private mMedia:Lcom/zhihu/matisse/internal/entity/Item;

.field private mPreBindInfo:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;

.field private mThumbnail:Landroid/widget/ImageView;

.field private mVideoDuration:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/zhihu/matisse/internal/ui/widget/SquareFrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/zhihu/matisse/internal/ui/widget/SquareFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/zhihu/matisse/R$layout;->media_grid_content:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    sget p1, Lcom/zhihu/matisse/R$id;->media_thumbnail:I

    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mThumbnail:Landroid/widget/ImageView;

    .line 57
    sget p1, Lcom/zhihu/matisse/R$id;->check_view:I

    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    .line 58
    sget p1, Lcom/zhihu/matisse/R$id;->gif:I

    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mGifTag:Landroid/widget/ImageView;

    .line 59
    sget p1, Lcom/zhihu/matisse/R$id;->video_duration:I

    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mVideoDuration:Landroid/widget/TextView;

    .line 61
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    invoke-virtual {p1, p0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initCheckView()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mPreBindInfo:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;

    iget-boolean v1, v1, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->mCheckViewCountable:Z

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setCountable(Z)V

    return-void
.end method

.method private setGifTag()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mGifTag:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mMedia:Lcom/zhihu/matisse/internal/entity/Item;

    invoke-virtual {v1}, Lcom/zhihu/matisse/internal/entity/Item;->isGif()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setImage()V
    .locals 7

    .line 113
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mMedia:Lcom/zhihu/matisse/internal/entity/Item;

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/entity/Item;->isGif()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    iget-object v1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->imageEngine:Lcom/zhihu/matisse/engine/ImageEngine;

    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mPreBindInfo:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;

    iget v3, v0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->mResize:I

    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mPreBindInfo:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;

    iget-object v4, v0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mThumbnail:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mMedia:Lcom/zhihu/matisse/internal/entity/Item;

    .line 115
    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/entity/Item;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    .line 114
    invoke-interface/range {v1 .. v6}, Lcom/zhihu/matisse/engine/ImageEngine;->loadGifThumbnail(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/net/Uri;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    iget-object v1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->imageEngine:Lcom/zhihu/matisse/engine/ImageEngine;

    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mPreBindInfo:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;

    iget v3, v0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->mResize:I

    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mPreBindInfo:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;

    iget-object v4, v0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mThumbnail:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mMedia:Lcom/zhihu/matisse/internal/entity/Item;

    .line 118
    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/entity/Item;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    .line 117
    invoke-interface/range {v1 .. v6}, Lcom/zhihu/matisse/engine/ImageEngine;->loadThumbnail(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method private setVideoDuration()V
    .locals 5

    .line 123
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mMedia:Lcom/zhihu/matisse/internal/entity/Item;

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/entity/Item;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mVideoDuration:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mVideoDuration:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mMedia:Lcom/zhihu/matisse/internal/entity/Item;

    iget-wide v1, v1, Lcom/zhihu/matisse/internal/entity/Item;->duration:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mVideoDuration:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bindMedia(Lcom/zhihu/matisse/internal/entity/Item;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mMedia:Lcom/zhihu/matisse/internal/entity/Item;

    .line 82
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->setGifTag()V

    .line 83
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->initCheckView()V

    .line 84
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->setImage()V

    .line 85
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->setVideoDuration()V

    return-void
.end method

.method public getMedia()Lcom/zhihu/matisse/internal/entity/Item;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mMedia:Lcom/zhihu/matisse/internal/entity/Item;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mListener:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;

    if-eqz v0, :cond_1

    .line 68
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mThumbnail:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mMedia:Lcom/zhihu/matisse/internal/entity/Item;

    iget-object v2, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mPreBindInfo:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;

    iget-object v2, v2, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-interface {v0, v1, p1, v2}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;->onThumbnailClicked(Landroid/widget/ImageView;Lcom/zhihu/matisse/internal/entity/Item;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    if-ne p1, v1, :cond_1

    .line 71
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mMedia:Lcom/zhihu/matisse/internal/entity/Item;

    iget-object v2, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mPreBindInfo:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;

    iget-object v2, v2, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-interface {v0, v1, p1, v2}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;->onCheckViewClicked(Lcom/zhihu/matisse/internal/ui/widget/CheckView;Lcom/zhihu/matisse/internal/entity/Item;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public preBindMedia(Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mPreBindInfo:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;

    return-void
.end method

.method public removeOnMediaGridClickListener()V
    .locals 1

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mListener:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;

    return-void
.end method

.method public setCheckEnabled(Z)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setEnabled(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setChecked(Z)V

    return-void
.end method

.method public setCheckedNum(I)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setCheckedNum(I)V

    return-void
.end method

.method public setOnMediaGridClickListener(Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->mListener:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;

    return-void
.end method
