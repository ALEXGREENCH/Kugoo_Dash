.class public Lcn/smssdk/gui/layout/BackVerifyDialogLayout;
.super Ljava/lang/Object;
.source "BackVerifyDialogLayout.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 14

    .line 26
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 31
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "tv_dialog_hint"

    .line 32
    invoke-static {p0, v4}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 33
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x20

    .line 35
    invoke-static {p0, v5}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 36
    invoke-static {p0, v5}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 37
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x12

    .line 38
    invoke-static {p0, v4}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, v4}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v4, 0x8

    .line 39
    invoke-static {p0, v4}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const-string/jumbo v5, "smssdk_make_sure_mobile_detail"

    .line 40
    invoke-static {p0, v5}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 41
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    const/4 v5, -0x1

    .line 42
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v8, 0x1a

    .line 43
    invoke-static {p0, v8}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v8, 0x11

    .line 44
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 45
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 49
    invoke-static {p0, v1}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v8, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50
    invoke-virtual {v3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v8, -0x8c8c8d

    .line 51
    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v9, "btn_dialog_ok"

    .line 61
    invoke-static {p0, v9}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setId(I)V

    .line 62
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x4e

    invoke-static {p0, v10}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v11

    invoke-direct {v9, v6, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v11, 0x3

    .line 63
    invoke-static {p0, v11}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v12

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 64
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v9, "smssdk_dialog_btn_back"

    .line 65
    invoke-static {p0, v9}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    .line 66
    invoke-virtual {v2, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 67
    invoke-static {p0, v4}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v4

    .line 68
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/Button;->setPadding(IIII)V

    const-string/jumbo v12, "smssdk_ok"

    .line 69
    invoke-static {p0, v12}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    .line 70
    invoke-virtual {v2, v12}, Landroid/widget/Button;->setText(I)V

    const/16 v12, 0x16

    .line 71
    invoke-static {p0, v12}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v2, v6, v13}, Landroid/widget/Button;->setTextSize(IF)V

    .line 72
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 73
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v1}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v13, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78
    invoke-virtual {v2, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "btn_dialog_cancel"

    .line 83
    invoke-static {p0, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 84
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v8

    invoke-direct {v2, v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 85
    invoke-static {p0, v11}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 86
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-static {p0, v9}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 88
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 89
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/Button;->setPadding(IIII)V

    const-string/jumbo v2, "smssdk_cancel"

    .line 90
    invoke-static {p0, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 91
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 92
    invoke-static {p0, v12}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v1, v6, p0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 93
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 94
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method
