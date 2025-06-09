.class public Lcom/kugoo/kugookirin/view/SelfCheckCircleView;
.super Landroid/view/View;
.source "SelfCheckCircleView.java"


# static fields
.field public static final FILL:I = 0x1

.field public static final STROKE:I


# instance fields
.field private max:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private roundColor:I

.field private roundProgressColor:I

.field private roundWidth:F

.field private style:I

.field private textColor:I

.field private textIsDisplayable:Z

.field private textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->paint:Landroid/graphics/Paint;

    .line 51
    sget-object p3, Lcom/kugoo/kugookirin/R$styleable;->RoundProgressBar:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 54
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060043

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->roundColor:I

    .line 55
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060042

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->roundProgressColor:I

    .line 56
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->textColor:I

    const/4 p2, 0x7

    const/high16 v0, 0x41700000    # 15.0f

    .line 57
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->textSize:F

    .line 59
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07029c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    const/4 v0, 0x3

    .line 58
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->roundWidth:F

    const/16 p2, 0x64

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->max:I

    const/4 p2, 0x6

    .line 61
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->textIsDisplayable:Z

    const/4 p2, 0x4

    .line 62
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->style:I

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getCricleColor()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->roundColor:I

    return v0
.end method

.method public getCricleProgressColor()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->roundProgressColor:I

    return v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    monitor-enter p0

    .line 128
    :try_start_0
    iget v0, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->progress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoundWidth()F
    .locals 1

    .line 186
    iget v0, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->roundWidth:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 178
    iget v0, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->textSize:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 70
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 74
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    .line 75
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07029c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float v2, v1, v2

    float-to-int v2, v2

    .line 76
    iget-object v3, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->roundColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    .line 77
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 78
    iget-object v3, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object v3, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->roundWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    iget-object v3, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v3, v2

    .line 81
    iget-object v5, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 89
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->roundWidth:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->roundProgressColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    new-instance v6, Landroid/graphics/RectF;

    sub-int v1, v0, v2

    int-to-float v1, v1

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {v6, v1, v1, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 94
    iget v0, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->style:I

    if-eqz v0, :cond_1

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget v0, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->progress:I

    if-eqz v0, :cond_2

    const/high16 v7, 0x42b40000    # 90.0f

    mul-int/lit16 v0, v0, 0x168

    .line 103
    iget v1, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->max:I

    div-int/2addr v0, v1

    int-to-float v8, v0

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->paint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v7, 0x42b40000    # 90.0f

    .line 97
    iget v0, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->progress:I

    mul-int/lit16 v0, v0, 0x168

    iget v1, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->max:I

    div-int/2addr v0, v1

    int-to-float v8, v0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->paint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setCricleColor(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->roundColor:I

    return-void
.end method

.method public setCricleProgressColor(I)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->roundProgressColor:I

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    .line 119
    :try_start_0
    iput p1, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->max:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 117
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "max not less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_2

    .line 142
    :try_start_0
    iget v0, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->max:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-gt p1, v0, :cond_1

    .line 146
    iput p1, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->progress:I

    .line 147
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 140
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "progress not less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public setRoundWidth(F)V
    .locals 0

    .line 190
    iput p1, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->roundWidth:F

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 174
    iput p1, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->textColor:I

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->textSize:F

    return-void
.end method
