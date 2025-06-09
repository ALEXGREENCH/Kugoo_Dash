.class public Lcom/zhihu/matisse/internal/ui/widget/MediaGridInset;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MediaGridInset.java"


# instance fields
.field private mIncludeEdge:Z

.field private mSpacing:I

.field private mSpanCount:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 29
    iput p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGridInset;->mSpanCount:I

    .line 30
    iput p2, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGridInset;->mSpacing:I

    .line 31
    iput-boolean p3, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGridInset;->mIncludeEdge:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 37
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 38
    iget p3, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGridInset;->mSpanCount:I

    rem-int p4, p2, p3

    .line 40
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGridInset;->mIncludeEdge:Z

    if-eqz v0, :cond_1

    .line 42
    iget v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGridInset;->mSpacing:I

    mul-int v1, p4, v0

    div-int/2addr v1, p3

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p4, p4, 0x1

    .line 44
    iget p3, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGridInset;->mSpacing:I

    mul-int/2addr p4, p3

    iget p3, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGridInset;->mSpanCount:I

    div-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 46
    iget p3, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGridInset;->mSpanCount:I

    if-ge p2, p3, :cond_0

    .line 47
    iget p2, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGridInset;->mSpacing:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 49
    :cond_0
    iget p2, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGridInset;->mSpacing:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 52
    :cond_1
    iget v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGridInset;->mSpacing:I

    mul-int/2addr v0, p4

    div-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 54
    iget p3, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGridInset;->mSpacing:I

    add-int/lit8 p4, p4, 0x1

    mul-int/2addr p4, p3

    iget v0, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGridInset;->mSpanCount:I

    div-int/2addr p4, v0

    sub-int/2addr p3, p4

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 55
    iget p3, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGridInset;->mSpanCount:I

    if-lt p2, p3, :cond_2

    .line 56
    iget p2, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGridInset;->mSpacing:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_2
    :goto_0
    return-void
.end method
