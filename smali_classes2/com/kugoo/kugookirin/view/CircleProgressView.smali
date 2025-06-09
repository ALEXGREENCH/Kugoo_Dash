.class public Lcom/kugoo/kugookirin/view/CircleProgressView;
.super Landroid/view/View;
.source "CircleProgressView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/view/CircleProgressView$OnAnimProgressListener;
    }
.end annotation


# instance fields
.field private locationStart:I

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBgPaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCurrent:I

.field private mOnAnimProgressListener:Lcom/kugoo/kugookirin/view/CircleProgressView$OnAnimProgressListener;

.field private mProgressColor:I

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mProgressWidth:F

.field private maxValue:I

.field private proWidth:I

.field private startAngle:F

.field private tCurrent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/view/CircleProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/kugoo/kugookirin/view/CircleProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, -0x10000

    .line 27
    iput p3, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mProgressColor:I

    const/16 p3, 0x19

    .line 31
    iput p3, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->maxValue:I

    const/4 p3, -0x1

    .line 130
    iput p3, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->tCurrent:I

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/view/CircleProgressView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/view/CircleProgressView;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->tCurrent:I

    return p0
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/view/CircleProgressView;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->tCurrent:I

    return p1
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/view/CircleProgressView;)Lcom/kugoo/kugookirin/view/CircleProgressView$OnAnimProgressListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mOnAnimProgressListener:Lcom/kugoo/kugookirin/view/CircleProgressView$OnAnimProgressListener;

    return-object p0
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 2

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mProgressWidth"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 49
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mContext:Landroid/content/Context;

    .line 50
    sget-object v0, Lcom/kugoo/kugookirin/R$styleable;->CircleProgressView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 51
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->locationStart:I

    const/high16 v0, 0x41700000    # 15.0f

    .line 53
    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/view/CircleProgressView;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    const/4 v0, 0x2

    .line 52
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mProgressWidth:F

    .line 55
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CircleProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f06002f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const/4 v2, 0x1

    .line 54
    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mProgressColor:I

    .line 56
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mBgPaint:Landroid/graphics/Paint;

    .line 60
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mBgPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mProgressWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mBgPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mBgPaint:Landroid/graphics/Paint;

    const-string p2, "#00ff0000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mBgPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 67
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mProgressPaint:Landroid/graphics/Paint;

    .line 68
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mProgressPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mProgressWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mProgressPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mProgressColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 75
    iget p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->locationStart:I

    if-ne p1, v2, :cond_0

    const/high16 p1, -0x3ccc0000    # -180.0f

    .line 76
    iput p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->startAngle:F

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/high16 p1, -0x3d4c0000    # -90.0f

    .line 78
    iput p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->startAngle:F

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->startAngle:F

    goto :goto_0

    :cond_2
    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    const/high16 p1, 0x42b40000    # 90.0f

    .line 82
    iput p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->startAngle:F

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    const/high16 p1, -0x3c9c0000    # -228.0f

    .line 84
    iput p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->startAngle:F

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public getCurrent()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mCurrent:I

    return v0
.end method

.method public getProWidth()F
    .locals 1

    .line 193
    iget v0, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mProgressWidth:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mProgressWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mProgressWidth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mProgressWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    div-float/2addr v1, v2

    .line 108
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CircleProgressView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mProgressWidth:F

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CircleProgressView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mProgressWidth:F

    div-float/2addr v6, v2

    sub-float/2addr v5, v6

    invoke-direct {v0, v3, v1, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    .line 109
    iget-object v7, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mBgPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 112
    iget v1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mCurrent:I

    mul-int/lit16 v1, v1, 0x114

    iget v2, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->maxValue:I

    div-int/2addr v1, v2

    int-to-float v5, v1

    .line 113
    iget v4, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->startAngle:F

    iget-object v7, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mProgressPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 90
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 91
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 93
    :goto_0
    invoke-virtual {p0, p1, p1}, Lcom/kugoo/kugookirin/view/CircleProgressView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setCurrent(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mCurrent:I

    .line 127
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/CircleProgressView;->invalidate()V

    return-void
.end method

.method public setOnAnimProgressListener(Lcom/kugoo/kugookirin/view/CircleProgressView$OnAnimProgressListener;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mOnAnimProgressListener:Lcom/kugoo/kugookirin/view/CircleProgressView$OnAnimProgressListener;

    return-void
.end method

.method public setProWidth(F)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/kugoo/kugookirin/view/CircleProgressView;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->proWidth:I

    .line 188
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mBgPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 189
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mProgressPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->proWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public startAnimProgress(II)V
    .locals 2

    .line 139
    iput p2, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->maxValue:I

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 v0, 0x0

    aput v0, p2, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    .line 140
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x0

    .line 141
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 143
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/kugoo/kugookirin/view/CircleProgressView$1;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/view/CircleProgressView$1;-><init>(Lcom/kugoo/kugookirin/view/CircleProgressView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 155
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/kugoo/kugookirin/view/CircleProgressView;->mProgressWidth:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mProgressWidth"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
