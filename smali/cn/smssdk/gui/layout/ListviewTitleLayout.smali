.class public Lcn/smssdk/gui/layout/ListviewTitleLayout;
.super Ljava/lang/Object;
.source "ListviewTitleLayout.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 5

    .line 24
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "tv_title"

    .line 30
    invoke-static {p0, v3}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setId(I)V

    .line 31
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x28

    .line 32
    invoke-static {p0, v4}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, -0x14

    .line 33
    invoke-static {p0, v2}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 34
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x14

    .line 35
    invoke-static {p0, v2}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v2, 0x8

    .line 36
    invoke-static {p0, v2}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const-string/jumbo v2, "smssdk_regist"

    .line 37
    invoke-static {p0, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 38
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, -0x666667

    .line 39
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x1a

    .line 40
    invoke-static {p0, v2}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v1, v3, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p0, 0x10

    .line 41
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setGravity(I)V

    const p0, -0x151712

    .line 42
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method
