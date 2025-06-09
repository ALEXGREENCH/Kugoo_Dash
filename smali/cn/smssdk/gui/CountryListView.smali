.class public Lcn/smssdk/gui/CountryListView;
.super Landroid/widget/RelativeLayout;
.source "CountryListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private adapter:Lcn/smssdk/gui/CountryAdapter;

.field private llScroll:Landroid/widget/LinearLayout;

.field private lvCountries:Lcn/smssdk/gui/GroupListView;

.field private tvScroll:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0, p1}, Lcn/smssdk/gui/CountryListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p1}, Lcn/smssdk/gui/CountryListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0, p1}, Lcn/smssdk/gui/CountryListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private createScrollItem(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .line 125
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xb

    .line 127
    invoke-static {p1, p2}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result p2

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p2, 0x11

    .line 128
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    const-string/jumbo p2, "smssdk_black"

    .line 129
    invoke-static {p1, p2}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 8

    .line 56
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/smssdk/gui/CountryListView;->llScroll:Landroid/widget/LinearLayout;

    const-string v1, "ll_scroll"

    .line 57
    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setId(I)V

    const-string/jumbo v0, "smssdk_country_group_scroll_up"

    .line 58
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    iget-object v2, p0, Lcn/smssdk/gui/CountryListView;->llScroll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/CountryListView;->llScroll:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 63
    iget-object v0, p0, Lcn/smssdk/gui/CountryListView;->llScroll:Landroid/widget/LinearLayout;

    const/16 v3, 0xf

    invoke-static {p1, v3}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 64
    iget-object v0, p0, Lcn/smssdk/gui/CountryListView;->llScroll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x1e

    .line 66
    invoke-static {p1, v4}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v4

    const/4 v6, -0x1

    invoke-direct {v0, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    .line 67
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    iget-object v3, p0, Lcn/smssdk/gui/CountryListView;->llScroll:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v0}, Lcn/smssdk/gui/CountryListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v0, Lcn/smssdk/gui/GroupListView;

    invoke-direct {v0, p1}, Lcn/smssdk/gui/GroupListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/smssdk/gui/CountryListView;->lvCountries:Lcn/smssdk/gui/GroupListView;

    const-string/jumbo v0, "smssdk_f6f6f6"

    .line 73
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 75
    iget-object v3, p0, Lcn/smssdk/gui/CountryListView;->lvCountries:Lcn/smssdk/gui/GroupListView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v4, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Lcn/smssdk/gui/GroupListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_1
    iget-object v0, p0, Lcn/smssdk/gui/CountryListView;->lvCountries:Lcn/smssdk/gui/GroupListView;

    invoke-static {p1, v2}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/smssdk/gui/GroupListView;->setDividerHeight(I)V

    .line 78
    new-instance v0, Lcn/smssdk/gui/CountryAdapter;

    iget-object v2, p0, Lcn/smssdk/gui/CountryListView;->lvCountries:Lcn/smssdk/gui/GroupListView;

    invoke-direct {v0, v2}, Lcn/smssdk/gui/CountryAdapter;-><init>(Lcn/smssdk/gui/GroupListView;)V

    iput-object v0, p0, Lcn/smssdk/gui/CountryListView;->adapter:Lcn/smssdk/gui/CountryAdapter;

    .line 79
    iget-object v2, p0, Lcn/smssdk/gui/CountryListView;->lvCountries:Lcn/smssdk/gui/GroupListView;

    invoke-virtual {v2, v0}, Lcn/smssdk/gui/GroupListView;->setAdapter(Lcn/smssdk/gui/GroupListView$GroupAdapter;)V

    .line 80
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 82
    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 83
    iget-object v1, p0, Lcn/smssdk/gui/CountryListView;->lvCountries:Lcn/smssdk/gui/GroupListView;

    invoke-virtual {p0, v1, v0}, Lcn/smssdk/gui/CountryListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-direct {p0, p1}, Lcn/smssdk/gui/CountryListView;->initScroll(Landroid/content/Context;)V

    .line 88
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/smssdk/gui/CountryListView;->tvScroll:Landroid/widget/TextView;

    const-string/jumbo v0, "smssdk_main_color"

    .line 89
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 91
    iget-object v1, p0, Lcn/smssdk/gui/CountryListView;->tvScroll:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const-string/jumbo v0, "smssdk_country_group_scroll_down"

    .line 93
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 95
    iget-object v1, p0, Lcn/smssdk/gui/CountryListView;->tvScroll:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 97
    :cond_3
    iget-object v0, p0, Lcn/smssdk/gui/CountryListView;->tvScroll:Landroid/widget/TextView;

    const/16 v1, 0x50

    invoke-static {p1, v1}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 98
    iget-object v0, p0, Lcn/smssdk/gui/CountryListView;->tvScroll:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 99
    iget-object v0, p0, Lcn/smssdk/gui/CountryListView;->tvScroll:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcn/smssdk/gui/CountryListView;->tvScroll:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v0, 0x78

    .line 101
    invoke-static {p1, v0}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result p1

    .line 102
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xd

    .line 103
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 104
    iget-object p1, p0, Lcn/smssdk/gui/CountryListView;->tvScroll:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0}, Lcn/smssdk/gui/CountryListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initScroll(Landroid/content/Context;)V
    .locals 8

    .line 112
    iget-object v0, p0, Lcn/smssdk/gui/CountryListView;->llScroll:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 114
    iget-object v0, p0, Lcn/smssdk/gui/CountryListView;->adapter:Lcn/smssdk/gui/CountryAdapter;

    invoke-virtual {v0}, Lcn/smssdk/gui/CountryAdapter;->getGroupCount()I

    move-result v0

    const-string v1, "#"

    .line 116
    invoke-direct {p0, p1, v1}, Lcn/smssdk/gui/CountryListView;->createScrollItem(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcn/smssdk/gui/CountryListView;->llScroll:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v5

    :goto_0
    if-ge v1, v0, :cond_0

    .line 119
    iget-object v2, p0, Lcn/smssdk/gui/CountryListView;->adapter:Lcn/smssdk/gui/CountryAdapter;

    invoke-virtual {v2, v1}, Lcn/smssdk/gui/CountryAdapter;->getGroupTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcn/smssdk/gui/CountryListView;->createScrollItem(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 120
    iget-object v3, p0, Lcn/smssdk/gui/CountryListView;->llScroll:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCountry(II)[Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcn/smssdk/gui/CountryListView;->adapter:Lcn/smssdk/gui/CountryAdapter;

    invoke-virtual {v0, p1, p2}, Lcn/smssdk/gui/CountryAdapter;->getItem(II)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onScroll(Landroid/view/ViewGroup;FF)V
    .locals 5

    .line 167
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 168
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 169
    invoke-virtual {v3}, Landroid/widget/TextView;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_1

    invoke-virtual {v3}, Landroid/widget/TextView;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_1

    .line 170
    invoke-virtual {v3}, Landroid/widget/TextView;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p3, v4

    if-ltz v4, :cond_1

    invoke-virtual {v3}, Landroid/widget/TextView;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p3, v4

    if-gtz v4, :cond_1

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    .line 174
    :cond_0
    iget-object p1, p0, Lcn/smssdk/gui/CountryListView;->lvCountries:Lcn/smssdk/gui/GroupListView;

    invoke-virtual {p1, v2}, Lcn/smssdk/gui/GroupListView;->setSelection(I)V

    .line 175
    iget-object p1, p0, Lcn/smssdk/gui/CountryListView;->tvScroll:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object p1, p0, Lcn/smssdk/gui/CountryListView;->tvScroll:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcn/smssdk/gui/CountryListView;->adapter:Lcn/smssdk/gui/CountryAdapter;

    invoke-virtual {v0, p1}, Lcn/smssdk/gui/CountryAdapter;->search(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcn/smssdk/gui/CountryListView;->adapter:Lcn/smssdk/gui/CountryAdapter;

    invoke-virtual {v0}, Lcn/smssdk/gui/CountryAdapter;->notifyDataSetChanged()V

    .line 189
    iget-object v0, p0, Lcn/smssdk/gui/CountryListView;->llScroll:Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    invoke-virtual {p0}, Lcn/smssdk/gui/CountryListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/smssdk/gui/CountryListView;->initScroll(Landroid/content/Context;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 136
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 149
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 150
    check-cast p1, Landroid/view/ViewGroup;

    .line 151
    invoke-virtual {p0, p1, v0, p2}, Lcn/smssdk/gui/CountryListView;->onScroll(Landroid/view/ViewGroup;FF)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo v0, "smssdk_country_group_scroll_up"

    invoke-static {p2, v0}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_2

    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 159
    :cond_2
    iget-object p1, p0, Lcn/smssdk/gui/CountryListView;->tvScroll:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "smssdk_country_group_scroll_down"

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 142
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 143
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 144
    check-cast p1, Landroid/view/ViewGroup;

    .line 145
    invoke-virtual {p0, p1, v0, p2}, Lcn/smssdk/gui/CountryListView;->onScroll(Landroid/view/ViewGroup;FF)V

    :goto_0
    return v1
.end method

.method public setCurrentCountryId(Ljava/lang/String;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcn/smssdk/gui/CountryListView;->lvCountries:Lcn/smssdk/gui/GroupListView;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0, p1}, Lcn/smssdk/gui/GroupListView;->setCurrentCountryId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcn/smssdk/gui/GroupListView$OnItemClickListener;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcn/smssdk/gui/CountryListView;->lvCountries:Lcn/smssdk/gui/GroupListView;

    invoke-virtual {v0, p1}, Lcn/smssdk/gui/GroupListView;->setOnItemClickListener(Lcn/smssdk/gui/GroupListView$OnItemClickListener;)V

    return-void
.end method
