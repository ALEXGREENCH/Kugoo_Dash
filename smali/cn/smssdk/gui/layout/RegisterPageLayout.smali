.class public Lcn/smssdk/gui/layout/RegisterPageLayout;
.super Lcn/smssdk/gui/layout/BasePageLayout;
.source "RegisterPageLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcn/smssdk/gui/layout/BasePageLayout;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreateContent(Landroid/widget/LinearLayout;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 34
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 37
    iget-object v6, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const/16 v7, 0x1e

    invoke-static {v6, v7}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 38
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    .line 39
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 40
    iget-object v3, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v6, "smssdk_input_phone"

    invoke-static {v3, v6}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, -0xd5d4d0

    .line 41
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    iget-object v3, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 43
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const/16 v9, 0x60

    .line 47
    invoke-static {v6, v9}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48
    iget-object v6, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const/16 v9, 0x1a

    invoke-static {v6, v9}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v6

    iget-object v10, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const/16 v11, 0x20

    invoke-static {v10, v11}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v10

    iget-object v11, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-static {v11, v9}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v3, v6, v10, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 49
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v3, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v6, "rl_country"

    invoke-static {v3, v6}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 52
    iget-object v3, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const/16 v6, 0x6e

    invoke-static {v3, v6}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    .line 53
    new-instance v6, Landroid/widget/TextView;

    iget-object v10, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-direct {v6, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0x10

    .line 56
    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 57
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v10, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v12, "smssdk_country"

    invoke-static {v10, v12}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    .line 59
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    const/high16 v10, -0x1000000

    .line 60
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    iget-object v12, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const/16 v13, 0x19

    invoke-static {v12, v13}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v6, v8, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 62
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    new-instance v6, Landroid/widget/TextView;

    iget-object v12, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-direct {v6, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 65
    iget-object v12, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v14, "tv_country"

    invoke-static {v12, v14}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setId(I)V

    .line 66
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    iput v11, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v14, 0x3f800000    # 1.0f

    .line 69
    iput v14, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 70
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v12, 0x13

    .line 71
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 72
    iget-object v15, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const/16 v11, 0xe

    invoke-static {v15, v11}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v6, v11, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 73
    iget-object v11, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v15, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v14, "smssdk_arrow_right"

    invoke-static {v15, v14}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 74
    iget-object v14, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-static {v14, v13}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v14

    iget-object v15, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-static {v15, v13}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v15

    invoke-virtual {v11, v8, v8, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v14, 0x0

    .line 77
    invoke-virtual {v6, v14, v14, v11, v14}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v10, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-static {v10, v13}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v8, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 80
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    new-instance v2, Landroid/view/View;

    iget-object v6, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v10, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const/4 v11, 0x1

    .line 86
    invoke-static {v10, v11}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v10

    invoke-direct {v6, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 87
    iget-object v10, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-static {v10, v9}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v10

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 88
    iget-object v10, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-static {v10, v9}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v10

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 89
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v6, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v10, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v15, "smssdk_gray_press"

    invoke-static {v10, v15}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 91
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v10, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const/16 v11, 0x46

    .line 95
    invoke-static {v10, v11}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v10

    invoke-direct {v6, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    iget-object v10, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-static {v10, v9}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v10

    iget-object v11, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-static {v11, v7}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v7

    iget-object v11, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-static {v11, v9}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v6, v10, v7, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 97
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 100
    iget-object v7, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v10, "tv_country_num"

    invoke-static {v7, v10}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setId(I)V

    .line 101
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setGravity(I)V

    const v3, -0xcacacb

    .line 105
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    iget-object v7, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-static {v7, v13}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 107
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v10, 0x3f800000    # 1.0f

    .line 112
    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 113
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v7, Landroid/widget/EditText;

    iget-object v10, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-direct {v7, v10}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 116
    iget-object v10, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const-string v11, "et_write_phone"

    invoke-static {v10, v11}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/EditText;->setId(I)V

    .line 117
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0x10

    .line 119
    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v11, 0x3f800000    # 1.0f

    .line 120
    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 121
    invoke-virtual {v7, v10}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-virtual {v7, v14}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v10, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v11, "smssdk_write_mobile_phone"

    invoke-static {v10, v11}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    .line 124
    invoke-virtual {v7, v10}, Landroid/widget/EditText;->setHint(I)V

    const/4 v10, 0x3

    .line 125
    invoke-virtual {v7, v10}, Landroid/widget/EditText;->setInputType(I)V

    .line 126
    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 127
    iget-object v3, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-static {v3, v13}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v8, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 128
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    new-instance v3, Landroid/widget/ImageView;

    iget-object v7, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 131
    iget-object v7, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const-string v10, "iv_clear"

    invoke-static {v7, v10}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 132
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v10, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v10

    iget-object v12, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    .line 133
    invoke-static {v12, v11}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v11

    invoke-direct {v7, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x10

    .line 134
    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 135
    iget-object v10, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const/16 v11, 0x14

    invoke-static {v10, v11}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v10

    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 136
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v7, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v10, "smssdk_clear_search"

    invoke-static {v7, v10}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 138
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 139
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v7, 0x8

    .line 140
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    new-instance v2, Landroid/view/View;

    iget-object v3, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 146
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const/4 v7, 0x1

    .line 147
    invoke-static {v6, v7}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 148
    iget-object v5, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-static {v5, v9}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 149
    iget-object v5, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-static {v5, v9}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 150
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v3, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-static {v5, v15}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 152
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    new-instance v2, Landroid/widget/Button;

    iget-object v3, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 155
    iget-object v3, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const-string v5, "btn_next"

    invoke-static {v3, v5}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setId(I)V

    .line 156
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const/16 v6, 0x48

    .line 157
    invoke-static {v5, v6}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    iget-object v5, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-static {v5, v9}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v5

    iget-object v6, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const/16 v7, 0x24

    invoke-static {v6, v7}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v6

    iget-object v7, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-static {v7, v9}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 159
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v3, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v5, "smssdk_btn_disenable"

    invoke-static {v3, v5}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 161
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 162
    iget-object v3, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    const-string/jumbo v5, "smssdk_next"

    invoke-static {v3, v5}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 163
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 164
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 165
    iget-object v3, v0, Lcn/smssdk/gui/layout/RegisterPageLayout;->context:Landroid/content/Context;

    invoke-static {v3, v13}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v8, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 166
    invoke-virtual {v2, v8, v8, v8, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 167
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
