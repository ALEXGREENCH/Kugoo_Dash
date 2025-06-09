.class public Lcom/kugoo/kugookirin/view/SpeedDial;
.super Landroid/view/View;
.source "SpeedDial.java"


# instance fields
.field public arcWidth:I

.field private endAngle:F

.field private linearGradient:Landroid/graphics/LinearGradient;

.field private margin:I

.field private maxValue:F

.field private paintOne:Landroid/graphics/Paint;

.field private paintTwo:Landroid/graphics/Paint;

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

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/view/SpeedDial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/kugoo/kugookirin/view/SpeedDial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x14

    .line 28
    iput p1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->proWidth:I

    const/high16 p2, 0x41f00000    # 30.0f

    .line 29
    iput p2, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->maxValue:F

    .line 30
    iput p1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->arcWidth:I

    const/high16 p1, 0x43870000    # 270.0f

    .line 31
    iput p1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->sweepAngle:F

    const/high16 p1, -0x3c9f0000    # -225.0f

    .line 32
    iput p1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->startAngle:F

    .line 48
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->progressPath:Landroid/graphics/Path;

    .line 49
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->sweepPath:Landroid/graphics/Path;

    .line 51
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->paintOne:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 52
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->paintOne:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 54
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->paintOne:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SpeedDial;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f060096

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->paintOne:Landroid/graphics/Paint;

    iget p3, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->proWidth:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->paintOne:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->paintTwo:Landroid/graphics/Paint;

    .line 60
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->paintTwo:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 62
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->paintTwo:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SpeedDial;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->paintTwo:Landroid/graphics/Paint;

    iget p2, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->proWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->paintTwo:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private sp2px(F)I
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SpeedDial;->getResources()Landroid/content/res/Resources;

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
    .locals 11

    .line 94
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 96
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->paintOne:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SpeedDial;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget v0, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->margin:I

    int-to-float v2, v0

    int-to-float v3, v0

    iget v1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->size:I

    sub-int v4, v1, v0

    int-to-float v4, v4

    sub-int/2addr v1, v0

    int-to-float v5, v1

    iget v6, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->startAngle:F

    iget v7, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->sweepAngle:F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->paintOne:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const-string v0, "sweepPath"

    const-string v1, "kakahahagha"

    .line 99
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->paintTwo:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->linearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 102
    iget v0, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->margin:I

    int-to-float v3, v0

    int-to-float v4, v0

    iget v2, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->size:I

    sub-int v5, v2, v0

    int-to-float v5, v5

    sub-int/2addr v2, v0

    int-to-float v6, v2

    iget v7, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->startAngle:F

    iget v8, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->endAngle:F

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->paintTwo:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const-string p1, "onDraw"

    .line 105
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 72
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 75
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 76
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 77
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 78
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 80
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->size:I

    .line 81
    invoke-virtual {p0, p1, p1}, Lcom/kugoo/kugookirin/view/SpeedDial;->setMeasuredDimension(II)V

    .line 83
    new-instance p1, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    iget p2, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->size:I

    int-to-float v2, p2

    int-to-float v3, p2

    int-to-float v4, p2

    const v5, -0xfe667f

    const v6, -0xfe6700

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->linearGradient:Landroid/graphics/LinearGradient;

    .line 86
    iget p1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->size:I

    iget p2, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->arcWidth:I

    iget v0, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->proWidth:I

    add-int v1, p2, v0

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0xf

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    .line 87
    iput v0, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->margin:I

    return-void
.end method

.method public setCurPro(F)V
    .locals 1

    .line 120
    iget v0, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->maxValue:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->sweepAngle:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->endAngle:F

    .line 121
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SpeedDial;->invalidate()V

    return-void
.end method

.method public setProMax(F)V
    .locals 1

    .line 110
    iput p1, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->maxValue:F

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "maxValue=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/kugoo/kugookirin/view/SpeedDial;->maxValue:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kakahahagha"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
