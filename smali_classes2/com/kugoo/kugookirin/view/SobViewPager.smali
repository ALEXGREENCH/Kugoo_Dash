.class public Lcom/kugoo/kugookirin/view/SobViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SobViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/view/SobViewPager$OnPagerItemClickListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_SWITCH_TIME:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "SobViewPager"


# instance fields
.field private autoScroll:Z

.field private delayTime:J

.field private downTime:J

.field private downX:F

.field private downY:F

.field private isClick:Z

.field private mItemClickListener:Lcom/kugoo/kugookirin/view/SobViewPager$OnPagerItemClickListener;

.field private mTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/view/SobViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x7d0

    .line 19
    iput-wide p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->delayTime:J

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->autoScroll:Z

    const/4 p2, 0x0

    .line 23
    iput-object p2, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->mItemClickListener:Lcom/kugoo/kugookirin/view/SobViewPager$OnPagerItemClickListener;

    .line 29
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->isClick:Z

    .line 100
    new-instance p1, Lcom/kugoo/kugookirin/view/SobViewPager$2;

    invoke-direct {p1, p0}, Lcom/kugoo/kugookirin/view/SobViewPager$2;-><init>(Lcom/kugoo/kugookirin/view/SobViewPager;)V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->mTask:Ljava/lang/Runnable;

    .line 36
    new-instance p1, Lcom/kugoo/kugookirin/view/SobViewPager$1;

    invoke-direct {p1, p0}, Lcom/kugoo/kugookirin/view/SobViewPager$1;-><init>(Lcom/kugoo/kugookirin/view/SobViewPager;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/view/SobViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/view/SobViewPager;)F
    .locals 0

    .line 13
    iget p0, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->downX:F

    return p0
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/view/SobViewPager;F)F
    .locals 0

    .line 13
    iput p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->downX:F

    return p1
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/view/SobViewPager;)F
    .locals 0

    .line 13
    iget p0, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->downY:F

    return p0
.end method

.method static synthetic access$102(Lcom/kugoo/kugookirin/view/SobViewPager;F)F
    .locals 0

    .line 13
    iput p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->downY:F

    return p1
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/view/SobViewPager;)J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->downTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/kugoo/kugookirin/view/SobViewPager;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->downTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/view/SobViewPager;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/SobViewPager;->stopLooper()V

    return-void
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/view/SobViewPager;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->isClick:Z

    return p0
.end method

.method static synthetic access$402(Lcom/kugoo/kugookirin/view/SobViewPager;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->isClick:Z

    return p1
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/view/SobViewPager;)Lcom/kugoo/kugookirin/view/SobViewPager$OnPagerItemClickListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->mItemClickListener:Lcom/kugoo/kugookirin/view/SobViewPager$OnPagerItemClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/view/SobViewPager;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->autoScroll:Z

    return p0
.end method

.method static synthetic access$700(Lcom/kugoo/kugookirin/view/SobViewPager;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/SobViewPager;->startLooper()V

    return-void
.end method

.method static synthetic access$800(Lcom/kugoo/kugookirin/view/SobViewPager;)J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->delayTime:J

    return-wide v0
.end method

.method private startLooper()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->mTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/view/SobViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 97
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->mTask:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->delayTime:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/kugoo/kugookirin/view/SobViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopLooper()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->mTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/view/SobViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public isAutoScroll()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->autoScroll:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 88
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onAttachedToWindow()V

    const-string v0, "SobViewPager"

    const-string v1, "onAttachedToWindow...."

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getChildCount()=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SobViewPager;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pagerTest"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->autoScroll:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/SobViewPager;->startLooper()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 112
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onDetachedFromWindow()V

    const-string v0, "SobViewPager"

    const-string v1, "onDetachedFromWindow..."

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/SobViewPager;->stopLooper()V

    return-void
.end method

.method public setAutoScroll(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->autoScroll:Z

    return-void
.end method

.method public setDelayTime(J)V
    .locals 0

    .line 83
    iput-wide p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->delayTime:J

    return-void
.end method

.method public setPagerItemClickListener(Lcom/kugoo/kugookirin/view/SobViewPager$OnPagerItemClickListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager;->mItemClickListener:Lcom/kugoo/kugookirin/view/SobViewPager$OnPagerItemClickListener;

    return-void
.end method
