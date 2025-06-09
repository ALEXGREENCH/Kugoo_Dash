.class public Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;
.super Ljava/lang/Object;
.source "MediaGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreBindInfo"
.end annotation


# instance fields
.field mCheckViewCountable:Z

.field mPlaceholder:Landroid/graphics/drawable/Drawable;

.field mResize:I

.field mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Drawable;ZLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput p1, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->mResize:I

    .line 155
    iput-object p2, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 156
    iput-boolean p3, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->mCheckViewCountable:Z

    .line 157
    iput-object p4, p0, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method
