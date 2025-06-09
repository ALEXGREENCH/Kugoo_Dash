.class public Lcn/smssdk/gui/GroupListView;
.super Landroid/widget/RelativeLayout;
.source "GroupListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/smssdk/gui/GroupListView$OnItemClickListener;,
        Lcn/smssdk/gui/GroupListView$GroupAdapter;,
        Lcn/smssdk/gui/GroupListView$InnerAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

.field private curFirstItem:I

.field private innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

.field private lvBody:Landroid/widget/ListView;

.field private oicListener:Lcn/smssdk/gui/GroupListView$OnItemClickListener;

.field private osListener:Landroid/widget/AbsListView$OnScrollListener;

.field private titleHeight:I

.field private tvTitle:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0, p1}, Lcn/smssdk/gui/GroupListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0, p1}, Lcn/smssdk/gui/GroupListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-direct {p0, p1}, Lcn/smssdk/gui/GroupListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcn/smssdk/gui/GroupListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/smssdk/gui/GroupListView;->osListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method

.method static synthetic access$102(Lcn/smssdk/gui/GroupListView;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcn/smssdk/gui/GroupListView;->curFirstItem:I

    return p1
.end method

.method static synthetic access$200(Lcn/smssdk/gui/GroupListView;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcn/smssdk/gui/GroupListView;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcn/smssdk/gui/GroupListView;->onScroll()V

    return-void
.end method

.method static synthetic access$400(Lcn/smssdk/gui/GroupListView;)Lcn/smssdk/gui/GroupListView$OnItemClickListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/smssdk/gui/GroupListView;->oicListener:Lcn/smssdk/gui/GroupListView$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$500(Lcn/smssdk/gui/GroupListView;)Lcn/smssdk/gui/GroupListView$InnerAdapter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcn/smssdk/gui/GroupListView;)Landroid/widget/ListView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$800(Lcn/smssdk/gui/GroupListView;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcn/smssdk/gui/GroupListView;->notifyDataSetChanged()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 57
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    const/4 p1, 0x0

    .line 58
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 59
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 61
    iget-object p1, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    new-instance v0, Lcn/smssdk/gui/GroupListView$1;

    invoke-direct {v0, p0}, Lcn/smssdk/gui/GroupListView$1;-><init>(Lcn/smssdk/gui/GroupListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 82
    iget-object p1, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    new-instance v0, Lcn/smssdk/gui/GroupListView$2;

    invoke-direct {v0, p0}, Lcn/smssdk/gui/GroupListView$2;-><init>(Lcn/smssdk/gui/GroupListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    iget-object p1, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object p1, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcn/smssdk/gui/GroupListView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private notifyDataSetChanged()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    invoke-virtual {v0}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->notifyDataSetChanged()V

    .line 117
    invoke-direct {p0}, Lcn/smssdk/gui/GroupListView;->setTitle()V

    return-void
.end method

.method private onScroll()V
    .locals 5

    .line 155
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 156
    iget-object v1, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 157
    iget-object v1, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    iget v3, p0, Lcn/smssdk/gui/GroupListView;->curFirstItem:I

    if-lez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :cond_1
    iget-object v1, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    iget v3, p0, Lcn/smssdk/gui/GroupListView;->curFirstItem:I

    iget-object v4, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->isLastItem(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    iget v3, p0, Lcn/smssdk/gui/GroupListView;->curFirstItem:I

    invoke-virtual {v1, v3}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->getItemGroup(I)I

    move-result v1

    .line 162
    iget-object v3, p0, Lcn/smssdk/gui/GroupListView;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    invoke-virtual {v3, v1}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->getGroupTitle(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    iget-object v3, p0, Lcn/smssdk/gui/GroupListView;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    iget-object v4, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    invoke-virtual {v3, v4, v1}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->onGroupChange(Landroid/view/View;Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 165
    iget v3, p0, Lcn/smssdk/gui/GroupListView;->titleHeight:I

    if-ge v1, v3, :cond_2

    sub-int/2addr v1, v3

    .line 166
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 167
    iget-object v1, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 171
    :cond_2
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 172
    iget-object v1, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    iget v1, p0, Lcn/smssdk/gui/GroupListView;->curFirstItem:I

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->isTitle(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    iget v1, p0, Lcn/smssdk/gui/GroupListView;->curFirstItem:I

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->getItemGroup(I)I

    move-result v0

    .line 177
    iget-object v1, p0, Lcn/smssdk/gui/GroupListView;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    invoke-virtual {v1, v0}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->getGroupTitle(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcn/smssdk/gui/GroupListView;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    iget-object v2, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->onGroupChange(Landroid/view/View;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private setTitle()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0, v0}, Lcn/smssdk/gui/GroupListView;->removeView(Landroid/view/View;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    invoke-virtual {v0}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    iget v1, p0, Lcn/smssdk/gui/GroupListView;->curFirstItem:I

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->getItemGroup(I)I

    move-result v0

    .line 128
    iget-object v1, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    invoke-static {v1}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->access$600(Lcn/smssdk/gui/GroupListView$InnerAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 129
    iget-object v1, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 137
    iget-object v1, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcn/smssdk/gui/GroupListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 140
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/smssdk/gui/GroupListView;->titleHeight:I

    .line 141
    invoke-direct {p0}, Lcn/smssdk/gui/GroupListView;->onScroll()V

    return-void
.end method


# virtual methods
.method public getAdapter()Lcn/smssdk/gui/GroupListView$GroupAdapter;
    .locals 1

    .line 112
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    return-object v0
.end method

.method public setAdapter(Lcn/smssdk/gui/GroupListView$GroupAdapter;)V
    .locals 1

    .line 105
    iput-object p1, p0, Lcn/smssdk/gui/GroupListView;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    .line 106
    new-instance v0, Lcn/smssdk/gui/GroupListView$InnerAdapter;

    invoke-direct {v0, p1}, Lcn/smssdk/gui/GroupListView$InnerAdapter;-><init>(Lcn/smssdk/gui/GroupListView$GroupAdapter;)V

    iput-object v0, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    .line 107
    iget-object p1, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    invoke-direct {p0}, Lcn/smssdk/gui/GroupListView;->setTitle()V

    return-void
.end method

.method public setCurrentCountryId(Ljava/lang/String;)V
    .locals 5

    .line 191
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/smssdk/gui/GroupListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 194
    iget-object v1, p0, Lcn/smssdk/gui/GroupListView;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    invoke-virtual {p0}, Lcn/smssdk/gui/GroupListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcn/smssdk/gui/GroupListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "smssdk_selected"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->getSubTitleView(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    iget-object v1, p0, Lcn/smssdk/gui/GroupListView;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    invoke-static {p1}, Lcn/smssdk/SMSSDK;->getCountry(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, v0, p1}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->getView(Landroid/view/View;Landroid/view/ViewGroup;[Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    iget-object p1, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 197
    iget-object p1, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public setOnItemClickListener(Lcn/smssdk/gui/GroupListView$OnItemClickListener;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcn/smssdk/gui/GroupListView;->oicListener:Lcn/smssdk/gui/GroupListView$OnItemClickListener;

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcn/smssdk/gui/GroupListView;->osListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    const/4 v0, -0x1

    .line 145
    invoke-virtual {p0, p1, v0}, Lcn/smssdk/gui/GroupListView;->setSelection(II)V

    return-void
.end method

.method public setSelection(II)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    invoke-static {v0}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->access$600(Lcn/smssdk/gui/GroupListView$InnerAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    .line 151
    iget-object p2, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
