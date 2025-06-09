.class public Lcom/kugoo/kugookirin/view/SwapRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SwapRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/view/SwapRecyclerView$OnSwipeListener;
    }
.end annotation


# static fields
.field private static final TOUCH_STATE_NONE:I = 0x0

.field private static final TOUCH_STATE_X:I = 0x1

.field private static final TOUCH_STATE_Y:I = 0x2


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private mOnSwipeListener:Lcom/kugoo/kugookirin/view/SwapRecyclerView$OnSwipeListener;

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mTouchPosition:I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchView:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

.field private oldPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchState:I

    .line 26
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchFrame:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchPosition:I

    .line 28
    iput p1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->oldPos:I

    .line 35
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchState:I

    .line 26
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchFrame:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchPosition:I

    .line 28
    iput p1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->oldPos:I

    .line 40
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchState:I

    .line 26
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchFrame:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchPosition:I

    .line 28
    iput p1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->oldPos:I

    .line 45
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->init()V

    return-void
.end method

.method public static inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 187
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-gtz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    int-to-float v4, v0

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    return v1
.end method

.method private init()V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchSlop:I

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/4 v0, 0x2

    if-eq v2, v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mDownY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mDownX:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 103
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    goto :goto_1

    .line 117
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 104
    :cond_2
    :goto_1
    iget p1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchState:I

    if-nez p1, :cond_4

    .line 105
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchSlop:I

    int-to-float v4, v1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_3

    .line 106
    iput v0, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchState:I

    goto :goto_2

    :cond_3
    int-to-float p1, v1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_4

    .line 108
    iput v3, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchState:I

    .line 109
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mOnSwipeListener:Lcom/kugoo/kugookirin/view/SwapRecyclerView$OnSwipeListener;

    if-eqz p1, :cond_4

    .line 110
    iget v0, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchPosition:I

    invoke-interface {p1, v0}, Lcom/kugoo/kugookirin/view/SwapRecyclerView$OnSwipeListener;->onSwipeStart(I)V

    :cond_4
    :goto_2
    return v3

    .line 59
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mDownX:F

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mDownY:F

    .line 62
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v4, 0x0

    .line 63
    iput v4, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchState:I

    .line 64
    iget v5, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchPosition:I

    iput v5, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->oldPos:I

    .line 66
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v5

    .line 67
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->getChildCount()I

    move-result v6

    :goto_3
    if-ge v4, v6, :cond_7

    .line 69
    invoke-virtual {p0, v4}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 70
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_6

    .line 71
    iget-object v8, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 73
    iget-object v7, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_6

    add-int/2addr v4, v5

    .line 74
    iput v4, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchPosition:I

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 80
    :cond_7
    :goto_4
    iget v0, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    sub-int/2addr v0, v5

    .line 82
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 83
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 84
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v1, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    if-eqz v1, :cond_9

    .line 86
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchView:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchView:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->getmMenuView()Lcom/kugoo/kugookirin/view/SwipeMenuView;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 90
    :cond_8
    check-cast v0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchView:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    .line 95
    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->onSwipe(Landroid/view/MotionEvent;)V

    goto :goto_5

    .line 92
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "viewHolder.itemView  must be SwipeMenuLayout layout"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_5
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchView:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    if-nez v0, :cond_0

    .line 123
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 124
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    const/4 v3, 0x3

    if-eq v0, v2, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 143
    :cond_1
    iget v0, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchState:I

    if-ne v0, v2, :cond_9

    .line 144
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchView:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->onSwipe(Landroid/view/MotionEvent;)V

    .line 147
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 148
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v2

    .line 154
    :cond_3
    iget v0, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchState:I

    if-ne v0, v2, :cond_9

    .line 155
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchView:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    if-eqz v0, :cond_5

    .line 156
    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->onSwipe(Landroid/view/MotionEvent;)V

    .line 157
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchView:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->isOpen()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, -0x1

    .line 158
    iput v0, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchPosition:I

    .line 159
    iput-object v1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchView:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    goto :goto_0

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchView:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->getmMenuView()Lcom/kugoo/kugookirin/view/SwipeMenuView;

    move-result-object v0

    iget v1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchPosition:I

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SwipeMenuView;->setPosition(I)V

    .line 164
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mOnSwipeListener:Lcom/kugoo/kugookirin/view/SwapRecyclerView$OnSwipeListener;

    if-eqz v0, :cond_6

    .line 165
    iget v1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchPosition:I

    invoke-interface {v0, v1}, Lcom/kugoo/kugookirin/view/SwapRecyclerView$OnSwipeListener;->onSwipeEnd(I)V

    .line 167
    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 168
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v2

    .line 127
    :cond_7
    iget v0, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchPosition:I

    iget v3, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->oldPos:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchView:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    if-eqz v0, :cond_8

    .line 128
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 129
    iput v2, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchState:I

    .line 130
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchView:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->onSwipe(Landroid/view/MotionEvent;)V

    return v2

    .line 134
    :cond_8
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchView:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 135
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchView:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->smoothCloseMenu()V

    .line 136
    iput-object v1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mTouchView:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    .line 137
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 175
    :cond_9
    :goto_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnSwipeListener(Lcom/kugoo/kugookirin/view/SwapRecyclerView$OnSwipeListener;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->mOnSwipeListener:Lcom/kugoo/kugookirin/view/SwapRecyclerView$OnSwipeListener;

    return-void
.end method

.method public smoothCloseMenu(I)V
    .locals 1

    .line 197
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-ltz p1, :cond_0

    sub-int/2addr p1, v0

    .line 199
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 200
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 201
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    if-eqz v0, :cond_0

    .line 202
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    .line 203
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->smoothCloseMenu()V

    :cond_0
    return-void
.end method
