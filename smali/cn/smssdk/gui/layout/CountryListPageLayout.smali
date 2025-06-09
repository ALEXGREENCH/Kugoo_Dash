.class public Lcn/smssdk/gui/layout/CountryListPageLayout;
.super Lcn/smssdk/gui/layout/BasePageLayout;
.source "CountryListPageLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcn/smssdk/gui/layout/BasePageLayout;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreateContent(Landroid/widget/LinearLayout;)V
    .locals 5

    .line 28
    new-instance v0, Lcn/smssdk/gui/SearchView;

    iget-object v1, p0, Lcn/smssdk/gui/layout/CountryListPageLayout;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/smssdk/gui/SearchView;-><init>(Landroid/content/Context;Z)V

    .line 29
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 32
    new-instance v0, Lcn/smssdk/gui/CountryListView;

    iget-object v1, p0, Lcn/smssdk/gui/layout/CountryListPageLayout;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/smssdk/gui/CountryListView;-><init>(Landroid/content/Context;)V

    .line 33
    iget-object v1, p0, Lcn/smssdk/gui/layout/CountryListPageLayout;->context:Landroid/content/Context;

    const-string v2, "clCountry"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/CountryListView;->setId(I)V

    .line 34
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 36
    invoke-virtual {v0, v1}, Lcn/smssdk/gui/CountryListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v1, p0, Lcn/smssdk/gui/layout/CountryListPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v2, "smssdk_bg_gray"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/CountryListView;->setBackgroundResource(I)V

    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
