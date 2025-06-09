.class public Lcom/kugoo/kugookirin/view/SobLooperPager;
.super Landroid/widget/LinearLayout;
.source "SobLooperPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/view/SobLooperPager$OnPageChangeListener;,
        Lcom/kugoo/kugookirin/view/SobLooperPager$OnItemClickListener;,
        Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;,
        Lcom/kugoo/kugookirin/view/SobLooperPager$BindTitleListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SobLooperPager"


# instance fields
.field private mInnerAdapter:Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

.field private mIsAutoScroll:Z

.field private mIsTitleShow:Z

.field private mOnItemClickListener:Lcom/kugoo/kugookirin/view/SobLooperPager$OnItemClickListener;

.field private mOnPageChangeListener:Lcom/kugoo/kugookirin/view/SobLooperPager$OnPageChangeListener;

.field private mPagerShowCount:I

.field private mPointContainer:Landroid/widget/LinearLayout;

.field private mSwitchTime:I

.field private mTitleSetListener:Lcom/kugoo/kugookirin/view/SobLooperPager$BindTitleListener;

.field private mTitleTv:Landroid/widget/TextView;

.field private mViewPager:Lcom/kugoo/kugookirin/view/SobViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/view/SobLooperPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/kugoo/kugookirin/view/SobLooperPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 27
    iput-object p3, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mTitleSetListener:Lcom/kugoo/kugookirin/view/SobLooperPager$BindTitleListener;

    .line 28
    iput-object p3, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mInnerAdapter:Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    .line 29
    iput-object p3, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mOnItemClickListener:Lcom/kugoo/kugookirin/view/SobLooperPager$OnItemClickListener;

    .line 30
    iput-object p3, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mOnPageChangeListener:Lcom/kugoo/kugookirin/view/SobLooperPager$OnPageChangeListener;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0d00ce

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    sget-object p3, Lcom/kugoo/kugookirin/R$styleable;->looper_style:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 53
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mIsTitleShow:Z

    .line 54
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mPagerShowCount:I

    const/4 p2, 0x2

    const/4 p3, -0x1

    .line 55
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mSwitchTime:I

    .line 59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/view/SobLooperPager;)Lcom/kugoo/kugookirin/view/SobLooperPager$OnItemClickListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mOnItemClickListener:Lcom/kugoo/kugookirin/view/SobLooperPager$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/view/SobLooperPager;)Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mInnerAdapter:Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/view/SobLooperPager;)Lcom/kugoo/kugookirin/view/SobLooperPager$BindTitleListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mTitleSetListener:Lcom/kugoo/kugookirin/view/SobLooperPager$BindTitleListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/view/SobLooperPager;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mTitleTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/view/SobLooperPager;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->updateIndicator()V

    return-void
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/view/SobLooperPager;)Lcom/kugoo/kugookirin/view/SobLooperPager$OnPageChangeListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mOnPageChangeListener:Lcom/kugoo/kugookirin/view/SobLooperPager$OnPageChangeListener;

    return-object p0
.end method

.method private init()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->initView()V

    .line 65
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->initEvent()V

    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mViewPager:Lcom/kugoo/kugookirin/view/SobViewPager;

    new-instance v1, Lcom/kugoo/kugookirin/view/SobLooperPager$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/view/SobLooperPager$1;-><init>(Lcom/kugoo/kugookirin/view/SobLooperPager;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SobViewPager;->setPagerItemClickListener(Lcom/kugoo/kugookirin/view/SobViewPager$OnPagerItemClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mViewPager:Lcom/kugoo/kugookirin/view/SobViewPager;

    new-instance v1, Lcom/kugoo/kugookirin/view/SobLooperPager$2;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/view/SobLooperPager$2;-><init>(Lcom/kugoo/kugookirin/view/SobLooperPager;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SobViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f0a0358

    .line 204
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/view/SobViewPager;

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mViewPager:Lcom/kugoo/kugookirin/view/SobViewPager;

    .line 205
    iget v1, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mSwitchTime:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    int-to-long v1, v1

    .line 206
    invoke-virtual {v0, v1, v2}, Lcom/kugoo/kugookirin/view/SobViewPager;->setDelayTime(J)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mViewPager:Lcom/kugoo/kugookirin/view/SobViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SobViewPager;->setOffscreenPageLimit(I)V

    .line 209
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mViewPager:Lcom/kugoo/kugookirin/view/SobViewPager;

    iget-boolean v1, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mIsAutoScroll:Z

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SobViewPager;->setAutoScroll(Z)V

    .line 210
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mViewPager:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/kugoo/kugookirin/utils/SizeUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SobViewPager;->setPageMargin(I)V

    const v0, 0x7f0a0359

    .line 211
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mPointContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a035a

    .line 212
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mTitleTv:Landroid/widget/TextView;

    .line 213
    iget-boolean v1, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mIsTitleShow:Z

    if-nez v1, :cond_1

    const/16 v1, 0x8

    .line 214
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateIndicator()V
    .locals 8

    .line 180
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mInnerAdapter:Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mTitleSetListener:Lcom/kugoo/kugookirin/view/SobLooperPager$BindTitleListener;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;->getDataSize()I

    move-result v0

    if-lez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mInnerAdapter:Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;->getDataSize()I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mViewPager:Lcom/kugoo/kugookirin/view/SobViewPager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/view/SobViewPager;->setAutoScroll(Z)V

    .line 183
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mPointContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_2

    .line 185
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 186
    iget-object v4, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mViewPager:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-virtual {v4}, Lcom/kugoo/kugookirin/view/SobViewPager;->getCurrentItem()I

    move-result v4

    iget-object v5, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mInnerAdapter:Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    invoke-virtual {v5}, Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;->getDataSize()I

    move-result v5

    rem-int/2addr v4, v5

    if-ne v4, v1, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080192

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080193

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    :goto_2
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v5, v6}, Lcom/kugoo/kugookirin/utils/SizeUtils;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/kugoo/kugookirin/utils/SizeUtils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 195
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v5, v6}, Lcom/kugoo/kugookirin/utils/SizeUtils;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/kugoo/kugookirin/utils/SizeUtils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v4, v5, v3, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 196
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v4, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mPointContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public setData(Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;Lcom/kugoo/kugookirin/view/SobLooperPager$BindTitleListener;)V
    .locals 2

    .line 117
    iput-object p2, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mTitleSetListener:Lcom/kugoo/kugookirin/view/SobLooperPager$BindTitleListener;

    .line 118
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mViewPager:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/view/SobViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 119
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mViewPager:Lcom/kugoo/kugookirin/view/SobViewPager;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SobViewPager;->setCurrentItem(I)V

    .line 120
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mInnerAdapter:Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;->getDataSize()I

    move-result p1

    if-lez p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mTitleTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mViewPager:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SobViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mInnerAdapter:Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;->getDataSize()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-interface {p2, v0}, Lcom/kugoo/kugookirin/view/SobLooperPager$BindTitleListener;->getTitle(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/SobLooperPager;->updateIndicator()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/kugoo/kugookirin/view/SobLooperPager$OnItemClickListener;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mOnItemClickListener:Lcom/kugoo/kugookirin/view/SobLooperPager$OnItemClickListener;

    return-void
.end method

.method public setOnPageChangeListener(Lcom/kugoo/kugookirin/view/SobLooperPager$OnPageChangeListener;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SobLooperPager;->mOnPageChangeListener:Lcom/kugoo/kugookirin/view/SobLooperPager$OnPageChangeListener;

    return-void
.end method
