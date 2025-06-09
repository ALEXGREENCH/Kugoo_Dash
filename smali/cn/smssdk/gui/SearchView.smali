.class public Lcn/smssdk/gui/SearchView;
.super Landroid/widget/RelativeLayout;
.source "SearchView.java"


# instance fields
.field private context:Landroid/content/Context;

.field private enableClear:Z

.field private etSearch:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    .line 27
    iput-boolean p2, p0, Lcn/smssdk/gui/SearchView;->enableClear:Z

    .line 29
    invoke-direct {p0}, Lcn/smssdk/gui/SearchView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 10

    .line 34
    iget-object v0, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    const-string/jumbo v1, "smssdk_white"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/SearchView;->setBackgroundResource(I)V

    .line 35
    iget-object v0, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    iget-object v2, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    iget-object v4, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    .line 36
    invoke-static {v4, v1}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v5

    .line 35
    invoke-virtual {p0, v0, v2, v4, v5}, Lcn/smssdk/gui/SearchView;->setPadding(IIII)V

    const/16 v0, 0x10

    .line 37
    invoke-virtual {p0, v0}, Lcn/smssdk/gui/SearchView;->setGravity(I)V

    .line 38
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    const/16 v5, 0x32

    .line 39
    invoke-static {v4, v5}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40
    invoke-virtual {p0, v2}, Lcn/smssdk/gui/SearchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 44
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 46
    iget-object v0, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    const-string/jumbo v6, "smssdk_conners_edittext_bg"

    invoke-static {v0, v6}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 49
    new-instance v0, Landroid/widget/ImageView;

    iget-object v6, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 50
    iget-object v6, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    const-string/jumbo v7, "smssdk_search"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52
    iget-object v9, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    invoke-static {v9, v1}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 53
    invoke-virtual {v2, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/smssdk/gui/SearchView;->etSearch:Landroid/widget/EditText;

    .line 57
    iget-object v1, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    const-string v6, "et_put_identify"

    invoke-static {v1, v6}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 58
    iget-object v0, p0, Lcn/smssdk/gui/SearchView;->etSearch:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 59
    iget-object v0, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    const-string/jumbo v1, "smssdk_999999"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 60
    iget-object v1, p0, Lcn/smssdk/gui/SearchView;->etSearch:Landroid/widget/EditText;

    iget-object v6, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 61
    iget-object v0, p0, Lcn/smssdk/gui/SearchView;->etSearch:Landroid/widget/EditText;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 62
    iget-object v0, p0, Lcn/smssdk/gui/SearchView;->etSearch:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 63
    iget-object v0, p0, Lcn/smssdk/gui/SearchView;->etSearch:Landroid/widget/EditText;

    const/4 v1, 0x2

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 64
    iget-object v0, p0, Lcn/smssdk/gui/SearchView;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 65
    iget-object v0, p0, Lcn/smssdk/gui/SearchView;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 66
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 67
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 68
    iget-object v1, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    const/4 v6, 0x3

    invoke-static {v1, v6}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 69
    iget-object v1, p0, Lcn/smssdk/gui/SearchView;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 73
    invoke-virtual {p0, v2, v0}, Lcn/smssdk/gui/SearchView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-boolean v0, p0, Lcn/smssdk/gui/SearchView;->enableClear:Z

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 78
    iget-object v1, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    const-string v2, "iv_clear"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 79
    iget-object v1, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    const-string/jumbo v2, "smssdk_clear_search"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 82
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    const/16 v3, 0x28

    .line 84
    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 86
    iget-object v2, p0, Lcn/smssdk/gui/SearchView;->context:Landroid/content/Context;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v4, v4, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-virtual {p0, v0}, Lcn/smssdk/gui/SearchView;->addView(Landroid/view/View;)V

    .line 89
    iget-object v1, p0, Lcn/smssdk/gui/SearchView;->etSearch:Landroid/widget/EditText;

    new-instance v2, Lcn/smssdk/gui/SearchView$1;

    invoke-direct {v2, p0, v0}, Lcn/smssdk/gui/SearchView$1;-><init>(Lcn/smssdk/gui/SearchView;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public setEditTextBackgroundResource(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcn/smssdk/gui/SearchView;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setEditTextGravity(I)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcn/smssdk/gui/SearchView;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setGravity(I)V

    return-void
.end method
