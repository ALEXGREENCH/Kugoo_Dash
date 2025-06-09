.class public Lcom/kugoo/kugookirin/view/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# static fields
.field public static final FILL:I = 0x1

.field public static final STROKE:I


# instance fields
.field private height:I

.field private max:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private radius:I

.field private roundColor:I

.field private roundProgressColor:I

.field private roundWidth:F

.field private style:I

.field private textColor:I

.field private textIsDisplayable:Z

.field private textSize:F

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/view/CircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/kugoo/kugookirin/view/CircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/kugoo/kugookirin/view/CircleView;->paint:Landroid/graphics/Paint;

    .line 53
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CircleView;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "window"

    .line 54
    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    .line 56
    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/view/CircleView;->width:I

    .line 57
    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Display;->getHeight()I

    move-result p3

    iput p3, p0, Lcom/kugoo/kugookirin/view/CircleView;->height:I

    .line 58
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/kugoo/kugookirin/view/CircleView;->width:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "  height=="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p0, Lcom/kugoo/kugookirin/view/CircleView;->height:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "width=="

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object p3, Lcom/kugoo/kugookirin/R$styleable;->RoundProgressBar:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 62
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06002d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/CircleView;->roundColor:I

    .line 63
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06002f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/CircleView;->roundProgressColor:I

    .line 64
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/CircleView;->textColor:I

    const/4 p2, 0x7

    const/high16 v0, 0x41700000    # 15.0f

    .line 65
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/CircleView;->textSize:F

    .line 67
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0702a2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    sub-float/2addr p2, v0

    const/4 v0, 0x3

    .line 66
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/CircleView;->roundWidth:F

    const/16 p2, 0x64

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/CircleView;->max:I

    const/4 p2, 0x6

    .line 78
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/kugoo/kugookirin/view/CircleView;->textIsDisplayable:Z

    const/4 p2, 0x4

    .line 79
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/CircleView;->style:I

    .line 80
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getCricleColor()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/kugoo/kugookirin/view/CircleView;->roundColor:I

    return v0
.end method

.method public getCricleProgressColor()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/kugoo/kugookirin/view/CircleView;->roundProgressColor:I

    return v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    monitor-enter p0

    .line 153
    :try_start_0
    iget v0, p0, Lcom/kugoo/kugookirin/view/CircleView;->progress:I
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

    .line 211
    iget v0, p0, Lcom/kugoo/kugookirin/view/CircleView;->roundWidth:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/kugoo/kugookirin/view/CircleView;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 203
    iget v0, p0, Lcom/kugoo/kugookirin/view/CircleView;->textSize:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 87
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 88
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CircleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 91
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/kugoo/kugookirin/view/CircleView;->width:I

    .line 92
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/view/CircleView;->height:I

    .line 93
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CircleView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    .line 94
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070292

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float v2, v1, v2

    float-to-int v2, v2

    iput v2, p0, Lcom/kugoo/kugookirin/view/CircleView;->radius:I

    .line 100
    iget-object v2, p0, Lcom/kugoo/kugookirin/view/CircleView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/kugoo/kugookirin/view/CircleView;->roundColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    .line 101
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 102
    iget-object v2, p0, Lcom/kugoo/kugookirin/view/CircleView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v2, p0, Lcom/kugoo/kugookirin/view/CircleView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/kugoo/kugookirin/view/CircleView;->roundWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    iget-object v2, p0, Lcom/kugoo/kugookirin/view/CircleView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget v2, p0, Lcom/kugoo/kugookirin/view/CircleView;->radius:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/kugoo/kugookirin/view/CircleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 113
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/CircleView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/kugoo/kugookirin/view/CircleView;->roundWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 114
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/CircleView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/kugoo/kugookirin/view/CircleView;->roundProgressColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    new-instance v5, Landroid/graphics/RectF;

    iget v1, p0, Lcom/kugoo/kugookirin/view/CircleView;->radius:I

    sub-int v2, v0, v1

    int-to-float v2, v2

    sub-int v4, v0, v1

    int-to-float v4, v4

    add-int v6, v0, v1

    int-to-float v6, v6

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {v5, v2, v4, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 118
    iget v0, p0, Lcom/kugoo/kugookirin/view/CircleView;->style:I

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CircleView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    iget v0, p0, Lcom/kugoo/kugookirin/view/CircleView;->progress:I

    if-eqz v0, :cond_2

    const/high16 v6, 0x42fc0000    # 126.0f

    mul-int/lit16 v0, v0, 0x168

    .line 128
    iget v1, p0, Lcom/kugoo/kugookirin/view/CircleView;->max:I

    div-int/2addr v0, v1

    int-to-float v7, v0

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/kugoo/kugookirin/view/CircleView;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CircleView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    iget v0, p0, Lcom/kugoo/kugookirin/view/CircleView;->progress:I

    if-eqz v0, :cond_2

    const/high16 v6, 0x42fc0000    # 126.0f

    mul-int/lit16 v0, v0, 0x168

    .line 122
    iget v1, p0, Lcom/kugoo/kugookirin/view/CircleView;->max:I

    div-int/2addr v0, v1

    int-to-float v7, v0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/kugoo/kugookirin/view/CircleView;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setCricleColor(I)V
    .locals 0

    .line 183
    iput p1, p0, Lcom/kugoo/kugookirin/view/CircleView;->roundColor:I

    return-void
.end method

.method public setCricleProgressColor(I)V
    .locals 0

    .line 191
    iput p1, p0, Lcom/kugoo/kugookirin/view/CircleView;->roundProgressColor:I

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    .line 144
    :try_start_0
    iput p1, p0, Lcom/kugoo/kugookirin/view/CircleView;->max:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 142
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

    .line 167
    :try_start_0
    iget v0, p0, Lcom/kugoo/kugookirin/view/CircleView;->max:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-gt p1, v0, :cond_1

    .line 171
    iput p1, p0, Lcom/kugoo/kugookirin/view/CircleView;->progress:I

    .line 172
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CircleView;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRoundWidth(F)V
    .locals 0

    .line 215
    iput p1, p0, Lcom/kugoo/kugookirin/view/CircleView;->roundWidth:F

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/kugoo/kugookirin/view/CircleView;->textColor:I

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 207
    iput p1, p0, Lcom/kugoo/kugookirin/view/CircleView;->textSize:F

    return-void
.end method
