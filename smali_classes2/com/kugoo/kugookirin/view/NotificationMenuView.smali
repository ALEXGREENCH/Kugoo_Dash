.class public Lcom/kugoo/kugookirin/view/NotificationMenuView;
.super Landroid/view/ViewGroup;
.source "NotificationMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/view/NotificationMenuView$OnEditClickListener;,
        Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;
    }
.end annotation


# instance fields
.field private downX:F

.field private downY:F

.field private interceptDownX:F

.field private interceptDownY:F

.field private isOpen:Z

.field private mContentView:Landroid/view/View;

.field private mCurDirect:Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

.field private mEditView:Landroid/view/View;

.field private mListener:Lcom/kugoo/kugookirin/view/NotificationMenuView$OnEditClickListener;

.field private mMaxDuration:I

.field private mMinDuration:I

.field private mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 19
    iput-object p2, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mListener:Lcom/kugoo/kugookirin/view/NotificationMenuView$OnEditClickListener;

    const/4 p2, 0x0

    .line 125
    iput-boolean p2, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->isOpen:Z

    .line 126
    sget-object p2, Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;->NONE:Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    iput-object p2, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mCurDirect:Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    const/16 p2, 0x12c

    .line 133
    iput p2, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mMaxDuration:I

    const/16 p2, 0x64

    .line 134
    iput p2, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mMinDuration:I

    .line 37
    sget-object p2, Lcom/kugoo/kugookirin/R$styleable;->NotificationMenuView:[I

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 38
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method private close()V
    .locals 7

    .line 230
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->getScrollX()I

    move-result v0

    neg-int v4, v0

    int-to-float v0, v4

    .line 231
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mEditView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    iget v1, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mMaxDuration:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 232
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 233
    iget v1, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mMinDuration:I

    if-ge v0, v1, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v0

    .line 237
    :goto_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->getScrollX()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->isOpen:Z

    return-void
.end method

.method private open()V
    .locals 8

    .line 218
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mEditView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->getScrollX()I

    move-result v1

    sub-int v5, v0, v1

    int-to-float v0, v5

    .line 219
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mEditView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    iget v1, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mMaxDuration:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 220
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 221
    iget v1, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mMinDuration:I

    if-ge v0, v1, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v0

    .line 225
    :goto_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->isOpen:Z

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    const/4 v1, 0x0

    .line 246
    invoke-virtual {p0, v0, v1}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->scrollTo(II)V

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currX=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slideMenu=="

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->invalidate()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mListener:Lcom/kugoo/kugookirin/view/NotificationMenuView$OnEditClickListener;

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a05d0

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mListener:Lcom/kugoo/kugookirin/view/NotificationMenuView$OnEditClickListener;

    invoke-interface {p1}, Lcom/kugoo/kugookirin/view/NotificationMenuView$OnEditClickListener;->onDeleteClick()V

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 45
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mContentView:Landroid/view/View;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xml\u5e03\u5c40\u5b50View=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "slideMenu"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d00c9

    invoke-virtual {v1, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mEditView:Landroid/view/View;

    const v1, 0x7f0a05d0

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mEditView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->addView(Landroid/view/View;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6240\u6709\u7684\u5b50view=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 265
    iget v1, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->interceptDownX:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 258
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->interceptDownX:F

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->interceptDownY:F

    .line 275
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    const/4 p2, 0x0

    add-int/2addr p1, p2

    .line 99
    iget-object p3, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mContentView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p2

    .line 101
    iget-object p4, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mContentView:Landroid/view/View;

    invoke-virtual {p4, p2, p2, p1, p3}, Landroid/view/View;->layout(IIII)V

    .line 106
    iget-object p3, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mEditView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p1

    .line 107
    iget-object p4, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mEditView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p2

    .line 109
    iget-object p5, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mEditView:Landroid/view/View;

    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 60
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 62
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 63
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 66
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x1

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_0

    .line 70
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    const/high16 v1, -0x80000000

    .line 72
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mContentView:Landroid/view/View;

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    .line 81
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    mul-int/lit8 p2, v0, 0x1

    .line 84
    div-int/lit8 p2, p2, 0x7

    .line 85
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mEditView:Landroid/view/View;

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 86
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 85
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    add-int/2addr v0, p2

    .line 89
    invoke-virtual {p0, v0, p1}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->getScrollX()I

    move-result v0

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scrollX=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "slideMenu=="

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 151
    iget p1, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->downX:F

    sub-float p1, v2, p1

    float-to-int p1, p1

    if-lez p1, :cond_1

    .line 153
    sget-object v3, Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;->RIGHT:Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    iput-object v3, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mCurDirect:Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    goto :goto_0

    .line 155
    :cond_1
    sget-object v3, Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;->LEFT:Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    iput-object v3, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mCurDirect:Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    :goto_0
    neg-int p1, p1

    add-int/2addr v0, p1

    const/4 v3, 0x0

    if-gtz v0, :cond_2

    .line 161
    invoke-virtual {p0, v3, v3}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->scrollTo(II)V

    goto :goto_1

    .line 162
    :cond_2
    iget-object v4, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mEditView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lt v0, v4, :cond_3

    .line 164
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mEditView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0, p1, v3}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->scrollTo(II)V

    goto :goto_1

    .line 166
    :cond_3
    invoke-virtual {p0, p1, v3}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->scrollBy(II)V

    .line 168
    :goto_1
    iput v2, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->downX:F

    goto :goto_3

    .line 172
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 180
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->getScrollX()I

    move-result p1

    .line 181
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mEditView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 182
    iget-boolean v2, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->isOpen:Z

    if-eqz v2, :cond_7

    .line 184
    iget-object v2, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mCurDirect:Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    sget-object v3, Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;->RIGHT:Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    if-ne v2, v3, :cond_6

    mul-int/lit8 v0, v0, 0x4

    .line 187
    div-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_5

    .line 188
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->close()V

    goto :goto_2

    .line 190
    :cond_5
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->open()V

    goto :goto_2

    .line 192
    :cond_6
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mCurDirect:Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    sget-object v0, Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;->LEFT:Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    if-ne p1, v0, :cond_a

    .line 194
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->open()V

    goto :goto_2

    .line 198
    :cond_7
    iget-object v2, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mCurDirect:Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    sget-object v3, Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;->LEFT:Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    if-ne v2, v3, :cond_9

    .line 200
    div-int/lit8 v0, v0, 0x5

    if-le p1, v0, :cond_8

    .line 201
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->open()V

    goto :goto_2

    .line 203
    :cond_8
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->close()V

    goto :goto_2

    .line 205
    :cond_9
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mCurDirect:Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    sget-object v0, Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;->RIGHT:Lcom/kugoo/kugookirin/view/NotificationMenuView$Direction;

    if-ne p1, v0, :cond_a

    .line 207
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->close()V

    .line 211
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->invalidate()V

    goto :goto_3

    .line 140
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->downX:F

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->downY:F

    :goto_3
    return v1
.end method

.method public setOnEditClickListener(Lcom/kugoo/kugookirin/view/NotificationMenuView$OnEditClickListener;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/NotificationMenuView;->mListener:Lcom/kugoo/kugookirin/view/NotificationMenuView$OnEditClickListener;

    return-void
.end method
