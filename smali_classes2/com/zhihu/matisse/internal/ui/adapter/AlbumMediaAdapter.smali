.class public Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;
.super Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;
.source "AlbumMediaAdapter.java"

# interfaces
.implements Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CaptureViewHolder;,
        Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;,
        Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$OnPhotoCapture;,
        Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;,
        Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_CAPTURE:I = 0x1

.field private static final VIEW_TYPE_MEDIA:I = 0x2


# instance fields
.field private mCheckStateListener:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;

.field private mImageResize:I

.field private mOnMediaClickListener:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;

.field private final mPlaceholder:Landroid/graphics/drawable/Drawable;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

.field private mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zhihu/matisse/internal/model/SelectedItemCollection;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0}, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;-><init>(Landroid/database/Cursor;)V

    .line 56
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    .line 57
    iput-object p2, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [I

    sget v0, Lcom/zhihu/matisse/R$attr;->item_placeholder:I

    const/4 v1, 0x0

    aput v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    iput-object p3, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method private assertAddSelection(Landroid/content/Context;Lcom/zhihu/matisse/internal/entity/Item;)Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p2}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->isAcceptable(Lcom/zhihu/matisse/internal/entity/Item;)Lcom/zhihu/matisse/internal/entity/IncapableCause;

    move-result-object p2

    .line 215
    invoke-static {p1, p2}, Lcom/zhihu/matisse/internal/entity/IncapableCause;->handleCause(Landroid/content/Context;Lcom/zhihu/matisse/internal/entity/IncapableCause;)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getImageResize(Landroid/content/Context;)I
    .locals 3

    .line 255
    iget v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mImageResize:I

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 257
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/zhihu/matisse/R$dimen;->media_grid_spacing:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/lit8 v2, v0, -0x1

    mul-int/2addr p1, v2

    sub-int/2addr v1, p1

    .line 261
    div-int/2addr v1, v0

    iput v1, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mImageResize:I

    int-to-float p1, v1

    .line 262
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->thumbnailScale:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mImageResize:I

    .line 264
    :cond_0
    iget p1, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mImageResize:I

    return p1
.end method

.method private notifyCheckStateChanged()V
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->notifyDataSetChanged()V

    .line 203
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mCheckStateListener:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;->onUpdate()V

    :cond_0
    return-void
.end method

.method private setCheckStatus(Lcom/zhihu/matisse/internal/entity/Item;Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->countable:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->checkedNumOf(Lcom/zhihu/matisse/internal/entity/Item;)I

    move-result p1

    if-lez p1, :cond_0

    .line 132
    invoke-virtual {p2, v2}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->setCheckEnabled(Z)V

    .line 133
    invoke-virtual {p2, p1}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->setCheckedNum(I)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->maxSelectableReached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p2, v1}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->setCheckEnabled(Z)V

    const/high16 p1, -0x80000000

    .line 137
    invoke-virtual {p2, p1}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->setCheckedNum(I)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p2, v2}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->setCheckEnabled(Z)V

    .line 140
    invoke-virtual {p2, p1}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->setCheckedNum(I)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->isSelected(Lcom/zhihu/matisse/internal/entity/Item;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 146
    invoke-virtual {p2, v2}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->setCheckEnabled(Z)V

    .line 147
    invoke-virtual {p2, v2}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->setChecked(Z)V

    goto :goto_0

    .line 149
    :cond_3
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->maxSelectableReached()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 150
    invoke-virtual {p2, v1}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->setCheckEnabled(Z)V

    .line 151
    invoke-virtual {p2, v1}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->setChecked(Z)V

    goto :goto_0

    .line 153
    :cond_4
    invoke-virtual {p2, v2}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->setCheckEnabled(Z)V

    .line 154
    invoke-virtual {p2, v1}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private updateSelectedItem(Lcom/zhihu/matisse/internal/entity/Item;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->countable:Z

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->checkedNumOf(Lcom/zhihu/matisse/internal/entity/Item;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 180
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->assertAddSelection(Landroid/content/Context;Lcom/zhihu/matisse/internal/entity/Item;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 181
    iget-object p2, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {p2, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->add(Lcom/zhihu/matisse/internal/entity/Item;)Z

    .line 182
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->notifyCheckStateChanged()V

    goto :goto_0

    .line 185
    :cond_0
    iget-object p2, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {p2, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->remove(Lcom/zhihu/matisse/internal/entity/Item;)Z

    .line 186
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->notifyCheckStateChanged()V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->isSelected(Lcom/zhihu/matisse/internal/entity/Item;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    iget-object p2, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {p2, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->remove(Lcom/zhihu/matisse/internal/entity/Item;)Z

    .line 191
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->notifyCheckStateChanged()V

    goto :goto_0

    .line 193
    :cond_2
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->assertAddSelection(Landroid/content/Context;Lcom/zhihu/matisse/internal/entity/Item;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 194
    iget-object p2, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {p2, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->add(Lcom/zhihu/matisse/internal/entity/Item;)Z

    .line 195
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->notifyCheckStateChanged()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getItemViewType(ILandroid/database/Cursor;)I
    .locals 0

    .line 210
    invoke-static {p2}, Lcom/zhihu/matisse/internal/entity/Item;->valueOf(Landroid/database/Cursor;)Lcom/zhihu/matisse/internal/entity/Item;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Item;->isCapture()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method protected onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/database/Cursor;)V
    .locals 7

    .line 89
    instance-of v0, p1, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CaptureViewHolder;

    if-eqz v0, :cond_3

    .line 90
    move-object p2, p1

    check-cast p2, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CaptureViewHolder;

    .line 91
    invoke-static {p2}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CaptureViewHolder;->access$000(Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CaptureViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 92
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [I

    sget v3, Lcom/zhihu/matisse/R$attr;->capture_textColor:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 94
    invoke-virtual {p1, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 95
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    move p1, v4

    .line 97
    :goto_0
    array-length v3, v0

    if-ge p1, v3, :cond_2

    .line 98
    aget-object v3, v0, p1

    if-eqz v3, :cond_1

    .line 100
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 106
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v2, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 107
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 108
    aput-object v5, v0, p1

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 111
    :cond_2
    invoke-static {p2}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CaptureViewHolder;->access$000(Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CaptureViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    aget-object p2, v0, v4

    aget-object v1, v0, v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 112
    :cond_3
    instance-of v0, p1, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;

    if-eqz v0, :cond_4

    .line 113
    move-object v0, p1

    check-cast v0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;

    .line 115
    invoke-static {p2}, Lcom/zhihu/matisse/internal/entity/Item;->valueOf(Landroid/database/Cursor;)Lcom/zhihu/matisse/internal/entity/Item;

    move-result-object p2

    .line 116
    invoke-static {v0}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;->access$100(Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;)Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;

    move-result-object v1

    new-instance v2, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;

    .line 117
    invoke-static {v0}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;->access$100(Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;)Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->getImageResize(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-boolean v5, v5, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->countable:Z

    invoke-direct {v2, v3, v4, v5, p1}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;-><init>(ILandroid/graphics/drawable/Drawable;ZLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 116
    invoke-virtual {v1, v2}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->preBindMedia(Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;)V

    .line 122
    invoke-static {v0}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;->access$100(Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;)Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->bindMedia(Lcom/zhihu/matisse/internal/entity/Item;)V

    .line 123
    invoke-static {v0}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;->access$100(Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;)Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;->setOnMediaGridClickListener(Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;)V

    .line 124
    invoke-static {v0}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;->access$100(Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;)Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->setCheckStatus(Lcom/zhihu/matisse/internal/entity/Item;Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onCheckViewClicked(Lcom/zhihu/matisse/internal/ui/widget/CheckView;Lcom/zhihu/matisse/internal/entity/Item;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 173
    invoke-direct {p0, p2, p3}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->updateSelectedItem(Lcom/zhihu/matisse/internal/entity/Item;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/zhihu/matisse/R$layout;->photo_capture_item:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 70
    new-instance p2, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CaptureViewHolder;

    invoke-direct {p2, p1}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CaptureViewHolder;-><init>(Landroid/view/View;)V

    .line 71
    iget-object p1, p2, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CaptureViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$1;

    invoke-direct {v0, p0}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$1;-><init>(Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 81
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/zhihu/matisse/R$layout;->media_grid_item:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 82
    new-instance p2, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;

    invoke-direct {p2, p1}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onThumbnailClicked(Landroid/widget/ImageView;Lcom/zhihu/matisse/internal/entity/Item;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mSelectionSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-boolean p1, p1, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->showPreview:Z

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mOnMediaClickListener:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-interface {p1, v0, p2, p3}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;->onMediaClick(Lcom/zhihu/matisse/internal/entity/Album;Lcom/zhihu/matisse/internal/entity/Item;I)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->updateSelectedItem(Lcom/zhihu/matisse/internal/entity/Item;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public refreshSelection()V
    .locals 6

    .line 237
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 238
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 239
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    move v3, v1

    :goto_0
    if-gt v3, v0, :cond_2

    .line 245
    iget-object v4, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 246
    instance-of v5, v4, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;

    if-eqz v5, :cond_1

    .line 247
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 248
    invoke-static {v2}, Lcom/zhihu/matisse/internal/entity/Item;->valueOf(Landroid/database/Cursor;)Lcom/zhihu/matisse/internal/entity/Item;

    move-result-object v5

    check-cast v4, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;

    invoke-static {v4}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;->access$100(Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;)Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->setCheckStatus(Lcom/zhihu/matisse/internal/entity/Item;Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public registerCheckStateListener(Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mCheckStateListener:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;

    return-void
.end method

.method public registerOnMediaClickListener(Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mOnMediaClickListener:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;

    return-void
.end method

.method public unregisterCheckStateListener()V
    .locals 1

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mCheckStateListener:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;

    return-void
.end method

.method public unregisterOnMediaClickListener()V
    .locals 1

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->mOnMediaClickListener:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;

    return-void
.end method
