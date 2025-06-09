.class public Lcom/kugoo/kugookirin/view/MapProgressView;
.super Landroid/view/View;
.source "MapProgressView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/view/MapProgressView$OnAnimProgressListener;
    }
.end annotation


# instance fields
.field private locationStart:I

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBgPaint:Landroid/graphics/Paint;

.field private mCurrent:I

.field private mOnAnimProgressListener:Lcom/kugoo/kugookirin/view/MapProgressView$OnAnimProgressListener;

.field private mProgressColor:I

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mProgressWidth:F

.field private maxValue:I

.field private startAngle:F

.field private tCurrent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/view/MapProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/kugoo/kugookirin/view/MapProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, -0x10000

    .line 26
    iput p3, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mProgressColor:I

    const/16 p3, 0x1e

    .line 30
    iput p3, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->maxValue:I

    const/4 p3, -0x1

    .line 124
    iput p3, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->tCurrent:I

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/view/MapProgressView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/view/MapProgressView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->tCurrent:I

    return p0
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/view/MapProgressView;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->tCurrent:I

    return p1
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/view/MapProgressView;)Lcom/kugoo/kugookirin/view/MapProgressView$OnAnimProgressListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mOnAnimProgressListener:Lcom/kugoo/kugookirin/view/MapProgressView$OnAnimProgressListener;

    return-object p0
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 0

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 46
    sget-object v0, Lcom/kugoo/kugookirin/R$styleable;->CircleProgressView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 47
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->locationStart:I

    const/high16 v0, 0x40c00000    # 6.0f

    .line 49
    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/view/MapProgressView;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    const/4 v0, 0x2

    .line 48
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mProgressWidth:F

    .line 51
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/MapProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f06002f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const/4 v2, 0x1

    .line 50
    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mProgressColor:I

    .line 52
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mBgPaint:Landroid/graphics/Paint;

    .line 56
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mBgPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mProgressWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mBgPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mBgPaint:Landroid/graphics/Paint;

    const-string p2, "#00ff0000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mBgPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 63
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mProgressPaint:Landroid/graphics/Paint;

    .line 64
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mProgressPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mProgressWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mProgressPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mProgressColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 71
    iget p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->locationStart:I

    if-ne p1, v2, :cond_0

    const/high16 p1, -0x3ccc0000    # -180.0f

    .line 72
    iput p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->startAngle:F

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/high16 p1, -0x3d4c0000    # -90.0f

    .line 74
    iput p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->startAngle:F

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    .line 76
    iput p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->startAngle:F

    goto :goto_0

    :cond_2
    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    const/high16 p1, 0x42b40000    # 90.0f

    .line 78
    iput p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->startAngle:F

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    const/high16 p1, -0x3c900000    # -240.0f

    .line 80
    iput p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->startAngle:F

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public getCurrent()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mCurrent:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 101
    new-instance v6, Landroid/graphics/RectF;

    iget v0, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mProgressWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    div-float/2addr v0, v1

    .line 102
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/MapProgressView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mProgressWidth:F

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/MapProgressView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mProgressWidth:F

    div-float/2addr v5, v1

    sub-float/2addr v4, v5

    invoke-direct {v6, v2, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    .line 103
    iget-object v5, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mBgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 106
    iget v0, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mCurrent:I

    mul-int/lit16 v0, v0, 0x12c

    iget v1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->maxValue:I

    div-int/2addr v0, v1

    int-to-float v3, v0

    .line 107
    iget v2, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->startAngle:F

    iget-object v5, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mProgressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 86
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 87
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 89
    :goto_0
    invoke-virtual {p0, p1, p1}, Lcom/kugoo/kugookirin/view/MapProgressView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setCurrent(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mCurrent:I

    .line 121
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/MapProgressView;->invalidate()V

    return-void
.end method

.method public setOnAnimProgressListener(Lcom/kugoo/kugookirin/view/MapProgressView$OnAnimProgressListener;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mOnAnimProgressListener:Lcom/kugoo/kugookirin/view/MapProgressView$OnAnimProgressListener;

    return-void
.end method

.method public startAnimProgress(II)V
    .locals 2

    .line 133
    iput p2, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->maxValue:I

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 v0, 0x0

    aput v0, p2, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    .line 134
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x0

    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 136
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 137
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/kugoo/kugookirin/view/MapProgressView$1;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/view/MapProgressView$1;-><init>(Lcom/kugoo/kugookirin/view/MapProgressView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 149
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
