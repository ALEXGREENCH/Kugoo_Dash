.class public Lcn/smssdk/gui/layout/ContactDetailPageLayout;
.super Lcn/smssdk/gui/layout/BasePageLayout;
.source "ContactDetailPageLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcn/smssdk/gui/layout/BasePageLayout;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreateContent(Landroid/widget/LinearLayout;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 32
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 33
    iget-object v3, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v4, "tv_contact_name"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 34
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 36
    iget-object v6, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const/16 v7, 0x1a

    invoke-static {v6, v7}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v6

    iget-object v8, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const/16 v9, 0x3c

    invoke-static {v8, v9}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v8

    iget-object v10, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-static {v10, v7}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v3, v6, v8, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 37
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    .line 38
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 39
    iget-object v3, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v6, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v8, "smssdk_main_color"

    invoke-static {v6, v8}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    iget-object v3, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const/16 v6, 0x34

    invoke-static {v3, v6}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v11, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 41
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 44
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    iget-object v6, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-static {v6, v7}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v6

    iget-object v8, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-static {v8, v9}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v8

    iget-object v9, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-static {v9, v7}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v3, v6, v8, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 48
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    iget-object v3, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const/16 v6, 0x50

    invoke-static {v3, v6}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    .line 53
    iget-object v6, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const/16 v8, 0xe

    invoke-static {v6, v8}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v6

    .line 54
    iget-object v8, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v10, "smssdk_black"

    invoke-static {v9, v10}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 55
    new-instance v9, Landroid/widget/TextView;

    iget-object v10, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v10, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v12, "smssdk_label_phone"

    invoke-static {v10, v12}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    .line 60
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 61
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float v6, v6

    .line 62
    invoke-virtual {v9, v11, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 63
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    new-instance v9, Landroid/widget/TextView;

    iget-object v10, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 66
    iget-object v10, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v12, "tv_phone"

    invoke-static {v10, v12}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setId(I)V

    .line 67
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, 0x5

    .line 70
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 71
    iget-object v12, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget-object v13, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v14, "smssdk_tv_light_gray"

    invoke-static {v13, v14}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    invoke-virtual {v9, v11, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 73
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    new-instance v2, Landroid/view/View;

    iget-object v9, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v12, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const/4 v13, 0x1

    .line 78
    invoke-static {v12, v13}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v9, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79
    iget-object v12, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-static {v12, v7}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v12

    iget-object v15, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const/16 v13, 0xa

    invoke-static {v15, v13}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v15

    iget-object v13, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-static {v13, v7}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v9, v12, v15, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 80
    invoke-virtual {v2, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v9, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v12, "smssdk_line_light_gray"

    invoke-static {v9, v12}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    .line 82
    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 83
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 89
    iget-object v13, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-static {v13, v7}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v13

    iget-object v15, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const/16 v10, 0x16

    invoke-static {v15, v10}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v10

    iget-object v15, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-static {v15, v7}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v15

    invoke-virtual {v9, v13, v10, v15, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 90
    iget-object v10, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const-string v13, "ll_phone2"

    invoke-static {v10, v13}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setId(I)V

    .line 91
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x8

    .line 93
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    new-instance v10, Landroid/widget/TextView;

    iget-object v13, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-direct {v10, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v3, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v13, "smssdk_label_phone2"

    invoke-static {v3, v13}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 101
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(I)V

    .line 102
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    invoke-virtual {v10, v11, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 104
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    new-instance v3, Landroid/widget/TextView;

    iget-object v8, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 107
    iget-object v8, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v10, "tv_phone2"

    invoke-static {v8, v10}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setId(I)V

    .line 108
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x5

    .line 111
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 112
    iget-object v5, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v8, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-static {v8, v14}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    invoke-virtual {v3, v11, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 114
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    new-instance v2, Landroid/view/View;

    iget-object v3, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 118
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const/4 v6, 0x1

    .line 119
    invoke-static {v5, v6}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 120
    iget-object v5, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-static {v5, v7}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v5

    iget-object v6, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v6

    iget-object v8, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-static {v8, v7}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v3, v5, v6, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 121
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v3, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v5, "vw_divider2"

    invoke-static {v3, v5}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 123
    iget-object v3, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-static {v3, v12}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 124
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 125
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    new-instance v2, Landroid/widget/Button;

    iget-object v3, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 129
    iget-object v3, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const-string v5, "btn_invite"

    invoke-static {v3, v5}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setId(I)V

    .line 130
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const/16 v6, 0x48

    .line 131
    invoke-static {v5, v6}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 132
    iget-object v5, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-static {v5, v7}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v5

    iget-object v6, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const/16 v8, 0x28

    invoke-static {v6, v8}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v6

    iget-object v8, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    invoke-static {v8, v7}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 133
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v3, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v5, "smssdk_btn_enable"

    invoke-static {v3, v5}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 135
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 136
    iget-object v3, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v5, "smssdk_send_invitation"

    invoke-static {v3, v5}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 137
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 138
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 139
    iget-object v3, v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->context:Landroid/content/Context;

    const/16 v4, 0x1c

    invoke-static {v3, v4}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v11, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 140
    invoke-virtual {v2, v11, v11, v11, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 141
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
