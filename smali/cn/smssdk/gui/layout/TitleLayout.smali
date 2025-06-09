.class public Lcn/smssdk/gui/layout/TitleLayout;
.super Ljava/lang/Object;
.source "TitleLayout.java"


# static fields
.field static final IN_HEIGHT:I = 0x4a

.field static final LINE_HEIGHT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 5

    .line 65
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 69
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 71
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 73
    invoke-static {p0, v0}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {v4, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, -0xbab5b5

    .line 75
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 76
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {v1, p0}, Lcn/smssdk/gui/layout/TitleLayout;->createBackLeft(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {v1, p0, p1}, Lcn/smssdk/gui/layout/TitleLayout;->createStringLeft(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method static create(Landroid/content/Context;Z)Landroid/widget/LinearLayout;
    .locals 5

    .line 33
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 37
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 39
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 41
    invoke-static {p0, v0}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {v4, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 42
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, -0xbab5b5

    .line 43
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 44
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 47
    invoke-static {v1, p0}, Lcn/smssdk/gui/layout/TitleLayout;->createSearch(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {v1, p0}, Lcn/smssdk/gui/layout/TitleLayout;->createNormal(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 52
    :goto_0
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x2

    .line 54
    invoke-static {p0, v3}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {v0, v2, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p0, -0xe5e3e3

    .line 56
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 57
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private static createBackLeft(Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 9

    const/16 v0, 0x4a

    .line 255
    invoke-static {p1, v0}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v0

    .line 257
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 258
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 259
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 262
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 264
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 265
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "ll_back"

    .line 266
    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setId(I)V

    const/16 v1, 0xe

    .line 267
    invoke-static {p1, v1}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v1

    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 269
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x28

    invoke-static {p1, v5}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v7

    invoke-static {p1, v5}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v8

    invoke-direct {v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x10

    .line 270
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 271
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 272
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v1, "smssdk_back_arrow"

    .line 273
    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 274
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 276
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 277
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 279
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 281
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v4, 0x11

    .line 282
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 283
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 284
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setGravity(I)V

    const-string/jumbo v1, "tv_title"

    .line 286
    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setId(I)V

    const/high16 v1, -0x1000000

    .line 287
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x20

    .line 288
    invoke-static {p1, v1}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v7, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 289
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 291
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 293
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v2, 0xa

    .line 294
    invoke-static {p1, v2}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v6, v6, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 295
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 296
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v1, "tv_right"

    .line 297
    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setId(I)V

    .line 298
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 299
    invoke-static {p1, v5}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    const v1, -0xff2964

    .line 300
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x18

    .line 301
    invoke-static {p1, v1}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2, v6, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 302
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 304
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static createNormal(Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 10

    const/16 v0, 0x4a

    .line 89
    invoke-static {p1, v0}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v0

    .line 91
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, -0xcfcac9

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 96
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 98
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "ll_back"

    .line 100
    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setId(I)V

    const/16 v1, 0xe

    .line 101
    invoke-static {p1, v1}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v4

    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 103
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0xf

    invoke-static {p1, v5}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v5

    const/16 v7, 0x19

    invoke-static {p1, v7}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x10

    .line 104
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 105
    invoke-static {p1, v1}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 106
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v4, "smssdk_nav_back"

    .line 108
    invoke-static {p1, v4}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 109
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 111
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x1e

    invoke-static {p1, v8}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v8

    const/16 v9, 0x2c

    invoke-static {p1, v9}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 112
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 113
    invoke-static {p1, v1}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v1

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 114
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v4, "smssdk_sharesdk_icon"

    .line 116
    invoke-static {p1, v4}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 117
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 119
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 126
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 127
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 128
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v1, "tv_title"

    .line 129
    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setId(I)V

    const v1, -0x303031

    .line 130
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x20

    .line 131
    invoke-static {p1, v1}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2, v6, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 132
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static createSearch(Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 13

    const/16 v0, 0x4a

    .line 139
    invoke-static {p1, v0}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v0

    .line 140
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 141
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, -0xcfcac9

    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 146
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 148
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 149
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "ll_back"

    .line 150
    invoke-static {p1, v3}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setId(I)V

    const/16 v3, 0xe

    .line 151
    invoke-static {p1, v3}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v6

    const/16 v7, 0x1a

    invoke-static {p1, v7}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v5, v6, v1, v7, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 153
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0xf

    invoke-static {p1, v7}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v8

    const/16 v9, 0x19

    invoke-static {p1, v9}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x10

    .line 154
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 155
    invoke-static {p1, v3}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 156
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v6, "smssdk_back_arrow"

    .line 158
    invoke-static {p1, v6}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 159
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 161
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x1e

    invoke-static {p1, v10}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v11

    const/16 v12, 0x2c

    invoke-static {p1, v12}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v6, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 162
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 163
    invoke-static {p1, v3}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v11

    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 164
    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 165
    invoke-virtual {v11, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v6, "smssdk_sharesdk_icon"

    .line 166
    invoke-static {p1, v6}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 167
    invoke-virtual {v11, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 169
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v4, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 176
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "llTitle"

    .line 178
    invoke-static {p1, v5}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setId(I)V

    .line 179
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 182
    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 183
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 184
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v5, "tv_title"

    .line 185
    invoke-static {p1, v5}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setId(I)V

    const-string/jumbo v5, "smssdk_choose_country"

    .line 186
    invoke-static {p1, v5}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 187
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(I)V

    const v5, -0x303031

    .line 188
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x20

    .line 189
    invoke-static {p1, v5}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v11, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 190
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x46

    invoke-static {p1, v11}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v11

    invoke-direct {v5, v11, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 194
    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 195
    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "ivSearch"

    .line 197
    invoke-static {p1, v5}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setId(I)V

    const-string/jumbo v5, "smssdk_search_icon"

    .line 198
    invoke-static {p1, v5}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    .line 199
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 201
    invoke-static {p1, v7}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v12

    invoke-static {p1, v7}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v11, v12, v1, v7, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 202
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 206
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v9, 0x12

    .line 207
    invoke-static {p1, v9}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 208
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 209
    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "llSearch"

    .line 210
    invoke-static {p1, v7}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setId(I)V

    const-string/jumbo v7, "smssdk_input_bg_focus"

    .line 211
    invoke-static {p1, v7}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 212
    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 213
    invoke-static {p1, v3}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v7

    invoke-static {p1, v3}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v9, v7, v1, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v3, 0x8

    .line 214
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 215
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x24

    invoke-static {p1, v11}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v12

    invoke-static {p1, v11}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v11

    invoke-direct {v7, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 218
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 219
    invoke-static {p1, v3}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v3

    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 220
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    invoke-static {p1, v5}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 223
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 225
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 228
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 229
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 230
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "et_put_identify"

    .line 231
    invoke-static {p1, v3}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setId(I)V

    const-string/jumbo v3, "smssdk_search"

    .line 232
    invoke-static {p1, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 233
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 234
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    const/4 v2, 0x0

    .line 235
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    .line 236
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 237
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1, v10}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p1, v10}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 240
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v2, 0x5

    .line 241
    invoke-static {p1, v2}, Lcn/smssdk/gui/layout/SizeHelper;->fromPxWidth(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 242
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 243
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "iv_clear"

    .line 244
    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setId(I)V

    const-string/jumbo v1, "smssdk_clear_search"

    .line 245
    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 246
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 248
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static createStringLeft(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    const/16 v0, 0x4a

    .line 309
    invoke-static {p1, v0}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v0

    .line 311
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 312
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 313
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 316
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 318
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 319
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "ll_back"

    .line 320
    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setId(I)V

    const/16 v1, 0xe

    .line 321
    invoke-static {p1, v1}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v1

    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 323
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    .line 325
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v7, 0xa

    .line 326
    invoke-static {p1, v7}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v1, v6, v6, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 327
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 328
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    invoke-static {p1, p2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setText(I)V

    const/high16 p2, -0x1000000

    .line 330
    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x18

    .line 331
    invoke-static {p1, v1}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 333
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 334
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 336
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x3f800000    # 1.0f

    .line 338
    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 339
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 340
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 341
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setGravity(I)V

    const-string/jumbo v4, "tv_title"

    .line 343
    invoke-static {p1, v4}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setId(I)V

    .line 344
    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0x20

    .line 345
    invoke-static {p1, p2}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v8, v6, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 346
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 348
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 350
    iput v5, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 351
    invoke-static {p1, v7}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v6, v6, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 352
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 353
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo p2, "tv_right"

    .line 354
    invoke-static {p1, p2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setId(I)V

    .line 355
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/16 p2, 0x28

    .line 356
    invoke-static {p1, p2}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setMinWidth(I)V

    const p2, -0xff2964

    .line 357
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    invoke-static {p1, v1}, Lcn/smssdk/gui/layout/SizeHelper;->fromPx(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2, v6, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 359
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 361
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
