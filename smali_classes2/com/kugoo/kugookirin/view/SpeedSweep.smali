.class public Lcom/kugoo/kugookirin/view/SpeedSweep;
.super Landroid/view/View;
.source "SpeedSweep.java"


# instance fields
.field public arcWidth:I

.field private endAngle:F

.field private margin:I

.field private maxValue:F

.field private paintOne:Landroid/graphics/Paint;

.field private proWidth:I

.field private progressPath:Landroid/graphics/Path;

.field private size:I

.field private startAngle:F

.field private sweepAngle:F

.field private sweepPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/view/SpeedSweep;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/kugoo/kugookirin/view/SpeedSweep;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x14

    .line 24
    iput p1, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->proWidth:I

    const/high16 p2, 0x41f00000    # 30.0f

    .line 25
    iput p2, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->maxValue:F

    .line 26
    iput p1, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->arcWidth:I

    const/high16 p1, 0x43870000    # 270.0f

    .line 27
    iput p1, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->sweepAngle:F

    const/high16 p1, -0x3c9f0000    # -225.0f

    .line 28
    iput p1, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->startAngle:F

    .line 43
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->progressPath:Landroid/graphics/Path;

    .line 44
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->sweepPath:Landroid/graphics/Path;

    .line 46
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->paintOne:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 47
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->paintOne:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 49
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->paintOne:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SpeedSweep;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060096

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->paintOne:Landroid/graphics/Paint;

    iget p2, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->proWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->paintOne:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private sp2px(F)I
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SpeedSweep;->getResources()Landroid/content/res/Resources;

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
    .locals 10

    .line 78
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 80
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->paintOne:Landroid/graphics/Paint;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->paintOne:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SpeedSweep;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget v0, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->margin:I

    int-to-float v2, v0

    int-to-float v3, v0

    iget v1, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->size:I

    sub-int v4, v1, v0

    int-to-float v4, v4

    sub-int/2addr v1, v0

    int-to-float v5, v1

    iget v6, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->startAngle:F

    iget v7, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->endAngle:F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->paintOne:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 58
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 61
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 62
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 63
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 64
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->size:I

    .line 67
    invoke-virtual {p0, p1, p1}, Lcom/kugoo/kugookirin/view/SpeedSweep;->setMeasuredDimension(II)V

    .line 70
    iget p1, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->size:I

    iget p2, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->arcWidth:I

    iget v0, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->proWidth:I

    add-int v1, p2, v0

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0xf

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1e

    .line 71
    iput v0, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->margin:I

    return-void
.end method

.method public setCurSweep(F)V
    .locals 1

    .line 99
    iget v0, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->maxValue:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->sweepAngle:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->endAngle:F

    .line 100
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SpeedSweep;->invalidate()V

    return-void
.end method

.method public setSweepMax(F)V
    .locals 1

    .line 88
    iput p1, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->maxValue:F

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "maxValue=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/kugoo/kugookirin/view/SpeedSweep;->maxValue:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kakahahagha"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
