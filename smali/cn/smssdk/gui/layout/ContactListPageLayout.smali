.class public Lcn/smssdk/gui/layout/ContactListPageLayout;
.super Lcn/smssdk/gui/layout/BasePageLayout;
.source "ContactListPageLayout.java"


# instance fields
.field private personalInfoView:Lcn/smssdk/gui/PersonalInfoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcn/smssdk/gui/layout/BasePageLayout;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcn/smssdk/gui/layout/ContactListPageLayout;)Lcn/smssdk/gui/PersonalInfoView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/smssdk/gui/layout/ContactListPageLayout;->personalInfoView:Lcn/smssdk/gui/PersonalInfoView;

    return-object p0
.end method


# virtual methods
.method public getUserInfoSubmitListenerInstance()Lcn/smssdk/gui/ContactsPage$OnUserInfoSubmitListener;
    .locals 1

    .line 55
    new-instance v0, Lcn/smssdk/gui/layout/ContactListPageLayout$1;

    invoke-direct {v0, p0}, Lcn/smssdk/gui/layout/ContactListPageLayout$1;-><init>(Lcn/smssdk/gui/layout/ContactListPageLayout;)V

    return-object v0
.end method

.method protected onCreateContent(Landroid/widget/LinearLayout;)V
    .locals 5

    .line 33
    new-instance v0, Lcn/smssdk/gui/SearchView;

    iget-object v1, p0, Lcn/smssdk/gui/layout/ContactListPageLayout;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/smssdk/gui/SearchView;-><init>(Landroid/content/Context;Z)V

    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 41
    new-instance v0, Lcn/smssdk/gui/PersonalInfoView;

    iget-object v1, p0, Lcn/smssdk/gui/layout/ContactListPageLayout;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/smssdk/gui/PersonalInfoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/smssdk/gui/layout/ContactListPageLayout;->personalInfoView:Lcn/smssdk/gui/PersonalInfoView;

    .line 42
    invoke-virtual {v0}, Lcn/smssdk/gui/PersonalInfoView;->create()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    new-instance v0, Lcn/smssdk/gui/ContactsListView;

    iget-object v1, p0, Lcn/smssdk/gui/layout/ContactListPageLayout;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/smssdk/gui/ContactsListView;-><init>(Landroid/content/Context;)V

    .line 46
    iget-object v1, p0, Lcn/smssdk/gui/layout/ContactListPageLayout;->context:Landroid/content/Context;

    const-string v3, "clContact"

    invoke-static {v1, v3}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/ContactsListView;->setId(I)V

    .line 47
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 49
    invoke-virtual {v0, v1}, Lcn/smssdk/gui/ContactsListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
