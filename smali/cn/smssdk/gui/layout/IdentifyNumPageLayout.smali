.class public Lcn/smssdk/gui/layout/IdentifyNumPageLayout;
.super Lcn/smssdk/gui/layout/BasePageLayout;
.source "IdentifyNumPageLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcn/smssdk/gui/layout/BasePageLayout;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreateContent(Landroid/widget/LinearLayout;)V
    .locals 16

    move-object/from16 v0, p0

    .line 35
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 38
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v2, 0x1

    .line 40
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 41
    iget-object v4, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const/16 v5, 0x1a

    invoke-static {v4, v5}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v4

    iget-object v6, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-static {v6, v5}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    move-object/from16 v4, p1

    .line 42
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 44
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45
    iget-object v5, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v7, "tv_identify_notify"

    invoke-static {v5, v7}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setId(I)V

    .line 46
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v5, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48
    iget-object v8, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const/16 v9, 0x20

    invoke-static {v8, v9}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v8, 0x11

    .line 49
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 50
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v5, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v9, "smssdk_make_sure_mobile_detail"

    invoke-static {v5, v9}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 52
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    const/high16 v5, -0x1000000

    .line 53
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    iget-object v5, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const/16 v9, 0x18

    invoke-static {v5, v9}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 55
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    iget-object v10, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const/16 v11, 0x3c

    invoke-static {v10, v11}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 62
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 64
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    iget-object v5, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const/16 v10, 0x50

    invoke-static {v5, v10}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v5

    .line 67
    iget-object v10, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const/16 v11, 0xe

    invoke-static {v10, v11}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v10

    .line 68
    iget-object v11, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v12, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v13, "smssdk_black"

    invoke-static {v12, v13}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 69
    new-instance v12, Landroid/widget/TextView;

    iget-object v13, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v13, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v14, "smssdk_label_phone"

    invoke-static {v13, v14}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    .line 74
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 75
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float v10, v10

    .line 76
    invoke-virtual {v12, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 77
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    new-instance v12, Landroid/widget/TextView;

    iget-object v13, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 80
    iget-object v13, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v14, "tv_phone"

    invoke-static {v13, v14}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setId(I)V

    .line 81
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    invoke-virtual {v12, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 86
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    new-instance v4, Landroid/view/View;

    iget-object v12, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-direct {v4, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v13, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    .line 91
    invoke-static {v13, v2}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v13

    invoke-direct {v12, v3, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    iget-object v13, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const/16 v14, 0xa

    invoke-static {v13, v14}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v13

    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 93
    invoke-virtual {v4, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v12, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v13, "smssdk_line_light_gray"

    invoke-static {v12, v13}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    .line 95
    invoke-virtual {v4, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 96
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v12, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-direct {v4, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 100
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 102
    iget-object v15, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const/16 v8, 0xf

    invoke-static {v15, v8}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v8

    iput v8, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 103
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 105
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    new-instance v8, Landroid/widget/TextView;

    iget-object v12, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-direct {v8, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v5, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v12, "smssdk_identify_code"

    invoke-static {v5, v12}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 112
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(I)V

    .line 113
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    invoke-virtual {v8, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 115
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x3f800000    # 1.0f

    .line 119
    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 120
    new-instance v8, Landroid/widget/EditText;

    iget-object v12, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-direct {v8, v12}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v5, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string v12, "et_put_identify"

    invoke-static {v5, v12}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setId(I)V

    .line 123
    iget-object v5, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v12, "smssdk_write_identify_code"

    invoke-static {v5, v12}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 124
    invoke-virtual {v8, v6, v6, v6, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 125
    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 126
    invoke-virtual {v8, v3}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 127
    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 128
    invoke-virtual {v8, v6, v10}, Landroid/widget/EditText;->setTextSize(IF)V

    const/4 v5, 0x2

    .line 129
    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v5, 0x10

    .line 130
    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 131
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v12, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const/16 v15, 0x12

    invoke-static {v12, v15}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v12

    iget-object v5, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    .line 134
    invoke-static {v5, v15}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v8, v12, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 135
    new-instance v5, Landroid/widget/ImageView;

    iget-object v12, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-direct {v5, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v8, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string v12, "iv_clear"

    invoke-static {v8, v12}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setId(I)V

    .line 138
    iget-object v8, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v12, "smssdk_clear_search"

    invoke-static {v8, v12}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 139
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v8, 0x8

    .line 141
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    new-instance v5, Landroid/widget/TextView;

    iget-object v8, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-direct {v5, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 145
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 147
    iget-object v12, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-static {v12, v14}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v12

    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 148
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v8, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v12, "tv_resend"

    invoke-static {v8, v12}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setId(I)V

    .line 150
    iget-object v8, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v12, "smssdk_identify_num_page_resend"

    invoke-static {v8, v12}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 151
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 152
    iget-object v8, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v12, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v15, "smssdk_tv_light_gray"

    invoke-static {v12, v15}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    invoke-virtual {v5, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 154
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    new-instance v4, Landroid/view/View;

    iget-object v5, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 158
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    .line 159
    invoke-static {v8, v2}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v5, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 160
    iget-object v2, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-static {v2, v14}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 161
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v2, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-static {v2, v13}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 163
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 164
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    new-instance v2, Landroid/widget/Button;

    iget-object v4, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 168
    iget-object v4, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string v5, "btn_submit"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setId(I)V

    .line 169
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const/16 v8, 0x48

    .line 170
    invoke-static {v5, v8}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 171
    iget-object v5, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const/16 v8, 0x28

    invoke-static {v5, v8}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 172
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v4, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v5, "smssdk_btn_disenable"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 174
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 175
    iget-object v4, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v5, "smssdk_next"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 176
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    .line 177
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 178
    iget-object v4, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-static {v4, v9}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v6, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 179
    iget-object v4, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-static {v4, v14}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-static {v5, v14}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v4, v6, v5, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 180
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 184
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 186
    iget-object v3, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const/16 v5, 0x14

    invoke-static {v3, v5}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v3

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 187
    iget-object v3, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string v5, "ll_voice"

    invoke-static {v3, v5}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 188
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    .line 190
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 191
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    iget-object v1, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 194
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 195
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 197
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v4, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v5, "smssdk_unreceive_identify_code"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 199
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 200
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float v1, v1

    .line 201
    invoke-virtual {v3, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 202
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 205
    iget-object v4, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v5, "tv_voice"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 206
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 208
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v4, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v5, "smssdk_voice_code"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 210
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 211
    iget-object v4, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v7, "smssdk_main_color"

    invoke-static {v5, v7}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 212
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    invoke-virtual {v3, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 214
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
