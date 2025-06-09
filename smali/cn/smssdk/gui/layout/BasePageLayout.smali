.class public abstract Lcn/smssdk/gui/layout/BasePageLayout;
.super Ljava/lang/Object;
.source "BasePageLayout.java"


# instance fields
.field context:Landroid/content/Context;

.field layout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcn/smssdk/gui/layout/BasePageLayout;->layout:Landroid/widget/LinearLayout;

    .line 35
    iput-object p1, p0, Lcn/smssdk/gui/layout/BasePageLayout;->context:Landroid/content/Context;

    .line 36
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/smssdk/gui/layout/BasePageLayout;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/smssdk/gui/layout/BasePageLayout;->layout:Landroid/widget/LinearLayout;

    .line 37
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 39
    iget-object v1, p0, Lcn/smssdk/gui/layout/BasePageLayout;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    iget-object p1, p0, Lcn/smssdk/gui/layout/BasePageLayout;->layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 41
    iget-object p1, p0, Lcn/smssdk/gui/layout/BasePageLayout;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 43
    iget-object p1, p0, Lcn/smssdk/gui/layout/BasePageLayout;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcn/smssdk/gui/layout/TitleLayout;->create(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 44
    iget-object p2, p0, Lcn/smssdk/gui/layout/BasePageLayout;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    iget-object p1, p0, Lcn/smssdk/gui/layout/BasePageLayout;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcn/smssdk/gui/layout/BasePageLayout;->onCreateContent(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcn/smssdk/gui/layout/BasePageLayout;->layout:Landroid/widget/LinearLayout;

    .line 21
    iput-object p1, p0, Lcn/smssdk/gui/layout/BasePageLayout;->context:Landroid/content/Context;

    .line 22
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/smssdk/gui/layout/BasePageLayout;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/smssdk/gui/layout/BasePageLayout;->layout:Landroid/widget/LinearLayout;

    .line 23
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 25
    iget-object v1, p0, Lcn/smssdk/gui/layout/BasePageLayout;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    iget-object p1, p0, Lcn/smssdk/gui/layout/BasePageLayout;->layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 27
    iget-object p1, p0, Lcn/smssdk/gui/layout/BasePageLayout;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 29
    iget-object p1, p0, Lcn/smssdk/gui/layout/BasePageLayout;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcn/smssdk/gui/layout/TitleLayout;->create(Landroid/content/Context;Z)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 30
    iget-object p2, p0, Lcn/smssdk/gui/layout/BasePageLayout;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 31
    iget-object p1, p0, Lcn/smssdk/gui/layout/BasePageLayout;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcn/smssdk/gui/layout/BasePageLayout;->onCreateContent(Landroid/widget/LinearLayout;)V

    return-void
.end method


# virtual methods
.method public getLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/smssdk/gui/layout/BasePageLayout;->layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected abstract onCreateContent(Landroid/widget/LinearLayout;)V
.end method
