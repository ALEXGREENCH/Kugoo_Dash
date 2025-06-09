.class public Lcom/zhihu/matisse/internal/ui/widget/RoundedRectangleImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "RoundedRectangleImageView.java"


# instance fields
.field private mRadius:F

.field private mRectF:Landroid/graphics/RectF;

.field private mRoundedRectPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/zhihu/matisse/internal/ui/widget/RoundedRectangleImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/zhihu/matisse/internal/ui/widget/RoundedRectangleImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0, p1}, Lcom/zhihu/matisse/internal/ui/widget/RoundedRectangleImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 48
    iput p1, p0, Lcom/zhihu/matisse/internal/ui/widget/RoundedRectangleImageView;->mRadius:F

    .line 49
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/RoundedRectangleImageView;->mRoundedRectPath:Landroid/graphics/Path;

    .line 50
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/RoundedRectangleImageView;->mRectF:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/RoundedRectangleImageView;->mRoundedRectPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 63
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 55
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    .line 56
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/RoundedRectangleImageView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/RoundedRectangleImageView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/widget/RoundedRectangleImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 57
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/RoundedRectangleImageView;->mRoundedRectPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/zhihu/matisse/internal/ui/widget/RoundedRectangleImageView;->mRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/zhihu/matisse/internal/ui/widget/RoundedRectangleImageView;->mRadius:F

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method
