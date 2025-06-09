.class public Lcom/kugoo/kugookirin/view/PickerView;
.super Landroid/view/View;
.source "PickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/view/PickerView$onSelectListener;,
        Lcom/kugoo/kugookirin/view/PickerView$MyTimerTask;
    }
.end annotation


# static fields
.field public static final MARGIN_ALPHA:F = 2.0f

.field public static final SPEED:F = 2.0f

.field public static final TAG:Ljava/lang/String; = "PickerView"


# instance fields
.field private isInit:Z

.field private mColorText:I

.field private mCurrentSelected:I

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDownY:F

.field private mMaxTextAlpha:F

.field private mMaxTextSize:F

.field private mMinTextAlpha:F

.field private mMinTextSize:F

.field private mMoveLen:F

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectListener:Lcom/kugoo/kugookirin/view/PickerView$onSelectListener;

.field private mTask:Lcom/kugoo/kugookirin/view/PickerView$MyTimerTask;

.field private mViewHeight:I

.field private mViewWidth:I

.field private timer:Ljava/util/Timer;

.field updateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 101
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x42480000    # 50.0f

    .line 60
    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMaxTextSize:F

    const/high16 p1, 0x41200000    # 10.0f

    .line 61
    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMinTextSize:F

    const/high16 p1, 0x437f0000    # 255.0f

    .line 63
    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMaxTextAlpha:F

    const/high16 p1, 0x42f00000    # 120.0f

    .line 64
    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMinTextAlpha:F

    .line 66
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/PickerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0602f1

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mColorText:I

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMoveLen:F

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->isInit:Z

    .line 81
    new-instance p1, Lcom/kugoo/kugookirin/view/PickerView$1;

    invoke-direct {p1, p0}, Lcom/kugoo/kugookirin/view/PickerView$1;-><init>(Lcom/kugoo/kugookirin/view/PickerView;)V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->updateHandler:Landroid/os/Handler;

    .line 102
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/PickerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x42480000    # 50.0f

    .line 60
    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMaxTextSize:F

    const/high16 p1, 0x41200000    # 10.0f

    .line 61
    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMinTextSize:F

    const/high16 p1, 0x437f0000    # 255.0f

    .line 63
    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMaxTextAlpha:F

    const/high16 p1, 0x42f00000    # 120.0f

    .line 64
    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMinTextAlpha:F

    .line 66
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/PickerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0602f1

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mColorText:I

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMoveLen:F

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->isInit:Z

    .line 81
    new-instance p1, Lcom/kugoo/kugookirin/view/PickerView$1;

    invoke-direct {p1, p0}, Lcom/kugoo/kugookirin/view/PickerView$1;-><init>(Lcom/kugoo/kugookirin/view/PickerView;)V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->updateHandler:Landroid/os/Handler;

    .line 107
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/PickerView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/view/PickerView;)F
    .locals 0

    .line 36
    iget p0, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMoveLen:F

    return p0
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/view/PickerView;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMoveLen:F

    return p1
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/view/PickerView;)Lcom/kugoo/kugookirin/view/PickerView$MyTimerTask;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/kugoo/kugookirin/view/PickerView;->mTask:Lcom/kugoo/kugookirin/view/PickerView$MyTimerTask;

    return-object p0
.end method

.method static synthetic access$102(Lcom/kugoo/kugookirin/view/PickerView;Lcom/kugoo/kugookirin/view/PickerView$MyTimerTask;)Lcom/kugoo/kugookirin/view/PickerView$MyTimerTask;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mTask:Lcom/kugoo/kugookirin/view/PickerView$MyTimerTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/view/PickerView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/PickerView;->performSelect()V

    return-void
.end method

.method private doDown(Landroid/view/MotionEvent;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/PickerView;->mTask:Lcom/kugoo/kugookirin/view/PickerView$MyTimerTask;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/PickerView$MyTimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/kugoo/kugookirin/view/PickerView;->mTask:Lcom/kugoo/kugookirin/view/PickerView$MyTimerTask;

    .line 249
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mLastDownY:F

    return-void
.end method

.method private doMove(Landroid/view/MotionEvent;)V
    .locals 4

    .line 254
    iget v0, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMoveLen:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/kugoo/kugookirin/view/PickerView;->mLastDownY:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMoveLen:F

    .line 256
    iget v1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMinTextSize:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    div-float/2addr v3, v2

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/PickerView;->moveTailToHead()V

    .line 259
    iget v0, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMoveLen:F

    iget v1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMinTextSize:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMoveLen:F

    goto :goto_0

    :cond_0
    const/high16 v3, -0x40000000    # -2.0f

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 262
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/PickerView;->moveHeadToTail()V

    .line 263
    iget v0, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMoveLen:F

    iget v1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMinTextSize:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMoveLen:F

    .line 266
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mLastDownY:F

    .line 267
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/PickerView;->invalidate()V

    return-void
.end method

.method private doUp(Landroid/view/MotionEvent;)V
    .locals 6

    .line 272
    iget p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMoveLen:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 273
    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMoveLen:F

    return-void

    .line 276
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mTask:Lcom/kugoo/kugookirin/view/PickerView$MyTimerTask;

    if-eqz p1, :cond_1

    .line 277
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/view/PickerView$MyTimerTask;->cancel()Z

    const/4 p1, 0x0

    .line 278
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mTask:Lcom/kugoo/kugookirin/view/PickerView$MyTimerTask;

    .line 280
    :cond_1
    new-instance v1, Lcom/kugoo/kugookirin/view/PickerView$MyTimerTask;

    iget-object p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->updateHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/view/PickerView$MyTimerTask;-><init>(Lcom/kugoo/kugookirin/view/PickerView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mTask:Lcom/kugoo/kugookirin/view/PickerView$MyTimerTask;

    .line 281
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/PickerView;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private drawData(Landroid/graphics/Canvas;)V
    .locals 11

    .line 172
    iget v0, p0, Lcom/kugoo/kugookirin/view/PickerView;->mViewHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMoveLen:F

    invoke-direct {p0, v0, v1}, Lcom/kugoo/kugookirin/view/PickerView;->parabola(FF)F

    move-result v0

    .line 173
    iget v1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMaxTextSize:F

    iget v2, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMinTextSize:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 174
    iget-object v2, p0, Lcom/kugoo/kugookirin/view/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 175
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMaxTextAlpha:F

    iget v3, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMinTextAlpha:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 177
    iget v0, p0, Lcom/kugoo/kugookirin/view/PickerView;->mViewWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 178
    iget v1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mViewHeight:I

    int-to-double v4, v1

    div-double/2addr v4, v2

    iget v1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMoveLen:F

    float-to-double v6, v1

    add-double/2addr v4, v6

    double-to-float v1, v4

    .line 179
    iget-object v4, p0, Lcom/kugoo/kugookirin/view/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    float-to-double v5, v1

    .line 180
    iget v1, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double v7, v1

    div-double/2addr v7, v2

    iget v1, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v9, v1

    div-double/2addr v9, v2

    add-double/2addr v7, v9

    sub-double/2addr v5, v7

    double-to-float v1, v5

    .line 182
    iget-object v2, p0, Lcom/kugoo/kugookirin/view/PickerView;->mDataList:Ljava/util/List;

    iget v3, p0, Lcom/kugoo/kugookirin/view/PickerView;->mCurrentSelected:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/kugoo/kugookirin/view/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    move v1, v0

    .line 184
    :goto_0
    iget v2, p0, Lcom/kugoo/kugookirin/view/PickerView;->mCurrentSelected:I

    sub-int/2addr v2, v1

    if-ltz v2, :cond_0

    const/4 v2, -0x1

    .line 185
    invoke-direct {p0, p1, v1, v2}, Lcom/kugoo/kugookirin/view/PickerView;->drawOtherText(Landroid/graphics/Canvas;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 188
    :goto_1
    iget v2, p0, Lcom/kugoo/kugookirin/view/PickerView;->mCurrentSelected:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/kugoo/kugookirin/view/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 189
    invoke-direct {p0, p1, v1, v0}, Lcom/kugoo/kugookirin/view/PickerView;->drawOtherText(Landroid/graphics/Canvas;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private drawOtherText(Landroid/graphics/Canvas;II)V
    .locals 8

    const/high16 v0, 0x40000000    # 2.0f

    .line 200
    iget v1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMinTextSize:F

    mul-float/2addr v1, v0

    int-to-float v0, p2

    mul-float/2addr v1, v0

    int-to-float v0, p3

    iget v2, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMoveLen:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 202
    iget v2, p0, Lcom/kugoo/kugookirin/view/PickerView;->mViewHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    invoke-direct {p0, v2, v1}, Lcom/kugoo/kugookirin/view/PickerView;->parabola(FF)F

    move-result v2

    .line 204
    iget v3, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMaxTextSize:F

    iget v4, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMinTextSize:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    add-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    .line 205
    iget-object v4, p0, Lcom/kugoo/kugookirin/view/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 206
    iget-object v3, p0, Lcom/kugoo/kugookirin/view/PickerView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMaxTextAlpha:F

    iget v5, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMinTextAlpha:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v4, v5

    float-to-int v2, v4

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 208
    iget v2, p0, Lcom/kugoo/kugookirin/view/PickerView;->mViewHeight:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    mul-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v2, v0

    double-to-float v0, v2

    .line 209
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    float-to-double v2, v0

    .line 210
    iget v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double v6, v0

    div-double/2addr v6, v4

    iget v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v0, v0

    div-double/2addr v0, v4

    add-double/2addr v6, v0

    sub-double/2addr v2, v6

    double-to-float v0, v2

    .line 212
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mDataList:Ljava/util/List;

    iget v2, p0, Lcom/kugoo/kugookirin/view/PickerView;->mCurrentSelected:I

    mul-int/2addr p3, p2

    add-int/2addr v2, p3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget p3, p0, Lcom/kugoo/kugookirin/view/PickerView;->mViewWidth:I

    int-to-double v1, p3

    div-double/2addr v1, v4

    double-to-float p3, v1

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 154
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/PickerView;->timer:Ljava/util/Timer;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/PickerView;->mDataList:Ljava/util/List;

    .line 156
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/PickerView;->mPaint:Landroid/graphics/Paint;

    .line 157
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 158
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/PickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 159
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/PickerView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mColorText:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private moveHeadToTail()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/PickerView;->mDataList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    iget-object v2, p0, Lcom/kugoo/kugookirin/view/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private moveTailToHead()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mDataList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private parabola(FF)F
    .locals 2

    div-float/2addr p2, p1

    float-to-double p1, p2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 224
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    double-to-float p1, v0

    const/4 p2, 0x0

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method private performSelect()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/PickerView;->mSelectListener:Lcom/kugoo/kugookirin/view/PickerView$onSelectListener;

    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mDataList:Ljava/util/List;

    iget v2, p0, Lcom/kugoo/kugookirin/view/PickerView;->mCurrentSelected:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/kugoo/kugookirin/view/PickerView$onSelectListener;->onSelect(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sp2px(F)I
    .locals 2

    .line 304
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/PickerView;->getResources()Landroid/content/res/Resources;

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
.method public getCurrentSelected()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/kugoo/kugookirin/view/PickerView;->mCurrentSelected:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 164
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 166
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/PickerView;->isInit:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/view/PickerView;->drawData(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 143
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 144
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/PickerView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mViewHeight:I

    .line 145
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/PickerView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mViewWidth:I

    .line 147
    iget p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mViewHeight:I

    int-to-float p1, p1

    const p2, 0x4089999a    # 4.3f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMaxTextSize:F

    const/high16 p2, 0x3fc00000    # 1.5f

    div-float/2addr p1, p2

    .line 148
    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mMinTextSize:F

    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->isInit:Z

    .line 150
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/PickerView;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/view/PickerView;->doMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 238
    :cond_1
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/view/PickerView;->doUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 232
    :cond_2
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/view/PickerView;->doDown(Landroid/view/MotionEvent;)V

    :goto_0
    return v1
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mDataList:Ljava/util/List;

    .line 121
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mCurrentSelected:I

    .line 122
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/PickerView;->invalidate()V

    return-void
.end method

.method public setOnSelectListener(Lcom/kugoo/kugookirin/view/PickerView$onSelectListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mSelectListener:Lcom/kugoo/kugookirin/view/PickerView$onSelectListener;

    return-void
.end method

.method public setSelected(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/kugoo/kugookirin/view/PickerView;->mCurrentSelected:I

    return-void
.end method
