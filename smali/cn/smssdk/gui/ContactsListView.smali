.class public Lcn/smssdk/gui/ContactsListView;
.super Landroid/widget/RelativeLayout;
.source "ContactsListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/smssdk/gui/ContactsListView$GroupAdapter;,
        Lcn/smssdk/gui/ContactsListView$InnerAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

.field private curFirstItem:I

.field private innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

.field private lvBody:Landroid/widget/ListView;

.field private osListener:Landroid/widget/AbsListView$OnScrollListener;

.field private titleHeight:I

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p1}, Lcn/smssdk/gui/ContactsListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0, p1}, Lcn/smssdk/gui/ContactsListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-direct {p0, p1}, Lcn/smssdk/gui/ContactsListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcn/smssdk/gui/ContactsListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/smssdk/gui/ContactsListView;->osListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method

.method static synthetic access$102(Lcn/smssdk/gui/ContactsListView;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcn/smssdk/gui/ContactsListView;->curFirstItem:I

    return p1
.end method

.method static synthetic access$200(Lcn/smssdk/gui/ContactsListView;)Landroid/widget/TextView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/smssdk/gui/ContactsListView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsListView;->onScroll()V

    return-void
.end method

.method static synthetic access$500(Lcn/smssdk/gui/ContactsListView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsListView;->notifyDataSetChanged()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 54
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 56
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    const-string/jumbo v0, "smssdk_cl_divider"

    .line 57
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    iget-object v2, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :cond_0
    iget-object p1, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 62
    iget-object p1, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 63
    iget-object p1, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    new-instance v0, Lcn/smssdk/gui/ContactsListView$1;

    invoke-direct {v0, p0}, Lcn/smssdk/gui/ContactsListView$1;-><init>(Lcn/smssdk/gui/ContactsListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 83
    iget-object p1, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object p1, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcn/smssdk/gui/ContactsListView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private notifyDataSetChanged()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    invoke-virtual {v0}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->notifyDataSetChanged()V

    .line 101
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsListView;->setTitle()V

    return-void
.end method

.method private onScroll()V
    .locals 4

    .line 138
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 139
    iget-object v1, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    iget v2, p0, Lcn/smssdk/gui/ContactsListView;->curFirstItem:I

    invoke-virtual {v1, v2}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->isLastItem(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    iget v3, p0, Lcn/smssdk/gui/ContactsListView;->curFirstItem:I

    invoke-virtual {v1, v3}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->getItemGroup(I)I

    move-result v1

    .line 142
    iget-object v3, p0, Lcn/smssdk/gui/ContactsListView;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    invoke-virtual {v3, v1}, Lcn/smssdk/gui/ContactsListView$GroupAdapter;->getGroupTitle(I)Ljava/lang/String;

    move-result-object v1

    .line 143
    iget-object v3, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v1, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 145
    iget v3, p0, Lcn/smssdk/gui/ContactsListView;->titleHeight:I

    if-ge v1, v3, :cond_0

    sub-int/2addr v1, v3

    .line 146
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 147
    iget-object v1, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 151
    :cond_0
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 152
    iget-object v1, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    iget v1, p0, Lcn/smssdk/gui/ContactsListView;->curFirstItem:I

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->isTitle(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    iget v1, p0, Lcn/smssdk/gui/ContactsListView;->curFirstItem:I

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->getItemGroup(I)I

    move-result v0

    .line 157
    iget-object v1, p0, Lcn/smssdk/gui/ContactsListView;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    invoke-virtual {v1, v0}, Lcn/smssdk/gui/ContactsListView$GroupAdapter;->getGroupTitle(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setTitle()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0, v0}, Lcn/smssdk/gui/ContactsListView;->removeView(Landroid/view/View;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    invoke-virtual {v0}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    iget v1, p0, Lcn/smssdk/gui/ContactsListView;->curFirstItem:I

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->getItemGroup(I)I

    move-result v0

    .line 113
    iget-object v1, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    invoke-static {v1}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->access$400(Lcn/smssdk/gui/ContactsListView$InnerAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 114
    iget-object v1, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    .line 115
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 119
    iget-object v1, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcn/smssdk/gui/ContactsListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 122
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/smssdk/gui/ContactsListView;->titleHeight:I

    .line 123
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsListView;->onScroll()V

    return-void
.end method


# virtual methods
.method public getAdapter()Lcn/smssdk/gui/ContactsListView$GroupAdapter;
    .locals 1

    .line 96
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    return-object v0
.end method

.method public setAdapter(Lcn/smssdk/gui/ContactsListView$GroupAdapter;)V
    .locals 1

    .line 89
    iput-object p1, p0, Lcn/smssdk/gui/ContactsListView;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    .line 90
    new-instance v0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    invoke-direct {v0, p1}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;-><init>(Lcn/smssdk/gui/ContactsListView$GroupAdapter;)V

    iput-object v0, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    .line 91
    iget-object p1, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsListView;->setTitle()V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcn/smssdk/gui/ContactsListView;->osListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    const/4 v0, -0x1

    .line 127
    invoke-virtual {p0, p1, v0}, Lcn/smssdk/gui/ContactsListView;->setSelection(II)V

    return-void
.end method

.method public setSelection(II)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->access$400(Lcn/smssdk/gui/ContactsListView$InnerAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    .line 133
    iget-object p2, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
