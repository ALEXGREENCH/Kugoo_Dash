.class public Lcom/kugoo/kugookirin/view/DialArcSelected;
.super Landroid/view/View;
.source "DialArcSelected.java"


# instance fields
.field public arcWidth:I

.field private leftArc:Landroid/graphics/Path;

.field private paintOne:Landroid/graphics/Paint;

.field private rightArc:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/view/DialArcSelected;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/kugoo/kugookirin/view/DialArcSelected;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x14

    .line 21
    iput p1, p0, Lcom/kugoo/kugookirin/view/DialArcSelected;->arcWidth:I

    .line 34
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/DialArcSelected;->paintOne:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 35
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/DialArcSelected;->paintOne:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 37
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/DialArcSelected;->paintOne:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/DialArcSelected;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0602f7

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/DialArcSelected;->paintOne:Landroid/graphics/Paint;

    iget p2, p0, Lcom/kugoo/kugookirin/view/DialArcSelected;->arcWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/DialArcSelected;->paintOne:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/DialArcSelected;->paintOne:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 41
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/DialArcSelected;->leftArc:Landroid/graphics/Path;

    .line 42
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/DialArcSelected;->rightArc:Landroid/graphics/Path;

    return-void
.end method

.method private sp2px(F)I
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/DialArcSelected;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/DialArcSelected;->leftArc:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/DialArcSelected;->paintOne:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 68
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/DialArcSelected;->rightArc:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/DialArcSelected;->paintOne:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    .line 48
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onMeasure(II)V

    .line 49
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 50
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 51
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 52
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 57
    :goto_0
    invoke-virtual {v0, v1, v1}, Lcom/kugoo/kugookirin/view/DialArcSelected;->setMeasuredDimension(II)V

    .line 59
    iget-object v2, v0, Lcom/kugoo/kugookirin/view/DialArcSelected;->leftArc:Landroid/graphics/Path;

    iget v3, v0, Lcom/kugoo/kugookirin/view/DialArcSelected;->arcWidth:I

    int-to-float v4, v3

    int-to-float v5, v3

    sub-int v6, v1, v3

    int-to-float v6, v6

    sub-int v3, v1, v3

    int-to-float v7, v3

    const/high16 v8, -0x3c9f0000    # -225.0f

    const/high16 v9, 0x42c80000    # 100.0f

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->addArc(FFFFFF)V

    .line 60
    iget-object v10, v0, Lcom/kugoo/kugookirin/view/DialArcSelected;->rightArc:Landroid/graphics/Path;

    iget v2, v0, Lcom/kugoo/kugookirin/view/DialArcSelected;->arcWidth:I

    int-to-float v11, v2

    int-to-float v12, v2

    sub-int v3, v1, v2

    int-to-float v13, v3

    sub-int/2addr v1, v2

    int-to-float v14, v1

    const/high16 v15, -0x3da40000    # -55.0f

    const/high16 v16, 0x42c80000    # 100.0f

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->addArc(FFFFFF)V

    return-void
.end method
