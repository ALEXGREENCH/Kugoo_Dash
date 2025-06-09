.class public Lcn/smssdk/gui/PopupDialog;
.super Landroid/app/AlertDialog;
.source "PopupDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupDialog"


# instance fields
.field private bottomLl:Landroid/widget/LinearLayout;

.field private cancel:Landroid/widget/TextView;

.field private close:Landroid/widget/ImageView;

.field private confirm:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private msg:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private topRl:Landroid/widget/RelativeLayout;

.field private verticalLine:Landroid/view/View;

.field private view:Landroid/view/View;

.field private width:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4

    const-string v0, "Dialog_Common"

    .line 46
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getStyleRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 47
    iput-object p1, p0, Lcn/smssdk/gui/PopupDialog;->context:Landroid/content/Context;

    .line 48
    invoke-direct {p0, p1}, Lcn/smssdk/gui/PopupDialog;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 49
    iput v0, p0, Lcn/smssdk/gui/PopupDialog;->width:I

    .line 50
    invoke-virtual {p0, p2}, Lcn/smssdk/gui/PopupDialog;->setCancelable(Z)V

    .line 51
    invoke-virtual {p0, p3}, Lcn/smssdk/gui/PopupDialog;->setCanceledOnTouchOutside(Z)V

    .line 52
    iget-object p2, p0, Lcn/smssdk/gui/PopupDialog;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const-string/jumbo p3, "smssdk_popup_dialog"

    .line 53
    invoke-static {p1, p3}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/smssdk/gui/PopupDialog;->view:Landroid/view/View;

    .line 54
    invoke-direct {p0}, Lcn/smssdk/gui/PopupDialog;->initView()V

    return-void
.end method

.method public static create(Landroid/content/Context;IIILandroid/view/View$OnClickListener;ILandroid/view/View$OnClickListener;ZZZ)Lcn/smssdk/gui/PopupDialog;
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 242
    invoke-static/range {v0 .. v10}, Lcn/smssdk/gui/PopupDialog;->create(Landroid/content/Context;IIILandroid/view/View$OnClickListener;ILandroid/view/View$OnClickListener;ZZZLandroid/content/DialogInterface$OnDismissListener;)Lcn/smssdk/gui/PopupDialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;IIILandroid/view/View$OnClickListener;ILandroid/view/View$OnClickListener;ZZZLandroid/content/DialogInterface$OnDismissListener;)Lcn/smssdk/gui/PopupDialog;
    .locals 17

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    move-object/from16 v0, p10

    .line 249
    new-instance v5, Lcn/smssdk/gui/PopupDialog;

    move-object/from16 v6, p0

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct {v5, v6, v7, v8}, Lcn/smssdk/gui/PopupDialog;-><init>(Landroid/content/Context;ZZ)V

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v5, v0}, Lcn/smssdk/gui/PopupDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    const-string v7, "Resource not found. resId="

    const-string v10, "create"

    const/4 v11, 0x1

    const-string v12, "PopupDialog"

    const/4 v13, 0x0

    const/4 v14, 0x4

    const-string v15, "[SMSSDK][%s][%s] %s"

    const/16 v16, 0x0

    if-lez v1, :cond_1

    .line 255
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 257
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v12, v9, v13

    aput-object v10, v9, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x2

    aput-object v1, v9, v11

    const/4 v1, 0x3

    aput-object v0, v9, v1

    invoke-virtual {v8, v15, v9}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    move/from16 v1, p9

    move-object/from16 v0, v16

    goto :goto_1

    :cond_1
    move-object/from16 v0, v16

    :goto_0
    move/from16 v1, p9

    .line 259
    :goto_1
    invoke-virtual {v5, v0, v1}, Lcn/smssdk/gui/PopupDialog;->setDialogTitle(Ljava/lang/CharSequence;Z)V

    if-lez v2, :cond_2

    .line 262
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 264
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-array v8, v14, [Ljava/lang/Object;

    aput-object v12, v8, v13

    const/4 v9, 0x1

    aput-object v10, v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x2

    aput-object v2, v8, v7

    const/4 v2, 0x3

    aput-object v0, v8, v2

    invoke-virtual {v1, v15, v8}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_2
    move-object/from16 v0, v16

    .line 266
    :goto_2
    invoke-virtual {v5, v0}, Lcn/smssdk/gui/PopupDialog;->setDialogMessage(Ljava/lang/CharSequence;)V

    if-lez v3, :cond_3

    .line 270
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_4

    :cond_3
    move-object/from16 v1, v16

    :goto_3
    if-lez v4, :cond_4

    .line 271
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v16, v0

    goto :goto_5

    :catch_3
    move-exception v0

    .line 273
    :goto_4
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-array v3, v14, [Ljava/lang/Object;

    aput-object v12, v3, v13

    const/4 v4, 0x1

    aput-object v10, v3, v4

    const-string v4, "Resource not found."

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const/4 v4, 0x3

    aput-object v0, v3, v4

    invoke-virtual {v2, v15, v3}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_4
    :goto_5
    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v0, v16

    .line 275
    invoke-virtual {v5, v1, v2, v0, v3}, Lcn/smssdk/gui/PopupDialog;->setDialogButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-object v5
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZZZ)Lcn/smssdk/gui/PopupDialog;
    .locals 1

    .line 215
    new-instance v0, Lcn/smssdk/gui/PopupDialog;

    invoke-direct {v0, p0, p7, p8}, Lcn/smssdk/gui/PopupDialog;-><init>(Landroid/content/Context;ZZ)V

    .line 216
    invoke-virtual {v0, p1, p9}, Lcn/smssdk/gui/PopupDialog;->setDialogTitle(Ljava/lang/CharSequence;Z)V

    .line 217
    invoke-virtual {v0, p2}, Lcn/smssdk/gui/PopupDialog;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {v0, p3, p4, p5, p6}, Lcn/smssdk/gui/PopupDialog;->setDialogButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private getScreenHeight(Landroid/content/Context;)I
    .locals 1

    .line 289
    invoke-direct {p0, p1}, Lcn/smssdk/gui/PopupDialog;->getScreenSize(Landroid/content/Context;)[I

    move-result-object p1

    const/4 v0, 0x1

    aget p1, p1, v0

    return p1
.end method

.method private getScreenSize(Landroid/content/Context;)[I
    .locals 12

    const-string v0, "getScreenSize"

    const-string v1, "PopupDialog"

    const-string v2, "[SMSSDK][%s][%s] %s"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    const-string/jumbo v7, "window"

    .line 295
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 297
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v1, v8, v5

    aput-object v0, v8, v6

    aput-object p1, v8, v4

    invoke-virtual {v7, v2, v8}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    new-array p1, v4, [I

    .line 302
    fill-array-data p1, :array_0

    return-object p1

    .line 304
    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 311
    :try_start_1
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 312
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getRealSize"

    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Landroid/graphics/Point;

    aput-object v11, v10, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 313
    invoke-virtual {v8, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v7, v9, v5

    .line 314
    invoke-virtual {v8, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p1, v4, [I

    .line 315
    iget v8, v7, Landroid/graphics/Point;->x:I

    aput v8, p1, v5

    iget v7, v7, Landroid/graphics/Point;->y:I

    aput v7, p1, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    .line 317
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object v0, v3, v6

    aput-object p1, v3, v4

    invoke-virtual {v7, v2, v3}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    new-array p1, v4, [I

    .line 318
    fill-array-data p1, :array_1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getScreenWidth(Landroid/content/Context;)I
    .locals 1

    .line 285
    invoke-direct {p0, p1}, Lcn/smssdk/gui/PopupDialog;->getScreenSize(Landroid/content/Context;)[I

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method

.method private initView()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcn/smssdk/gui/PopupDialog;->view:Landroid/view/View;

    iget-object v1, p0, Lcn/smssdk/gui/PopupDialog;->context:Landroid/content/Context;

    const-string v2, "common_dialog_title_tv"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/smssdk/gui/PopupDialog;->title:Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Lcn/smssdk/gui/PopupDialog;->view:Landroid/view/View;

    iget-object v1, p0, Lcn/smssdk/gui/PopupDialog;->context:Landroid/content/Context;

    const-string v2, "common_dialog_close_iv"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/smssdk/gui/PopupDialog;->close:Landroid/widget/ImageView;

    .line 177
    iget-object v0, p0, Lcn/smssdk/gui/PopupDialog;->view:Landroid/view/View;

    iget-object v1, p0, Lcn/smssdk/gui/PopupDialog;->context:Landroid/content/Context;

    const-string v2, "common_dialog_message_tv"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/smssdk/gui/PopupDialog;->msg:Landroid/widget/TextView;

    .line 179
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 180
    iget-object v0, p0, Lcn/smssdk/gui/PopupDialog;->view:Landroid/view/View;

    iget-object v1, p0, Lcn/smssdk/gui/PopupDialog;->context:Landroid/content/Context;

    const-string v2, "common_dialog_confirm_tv"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/smssdk/gui/PopupDialog;->confirm:Landroid/widget/TextView;

    .line 181
    iget-object v0, p0, Lcn/smssdk/gui/PopupDialog;->view:Landroid/view/View;

    iget-object v1, p0, Lcn/smssdk/gui/PopupDialog;->context:Landroid/content/Context;

    const-string v2, "common_dialog_cancel_tv"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/smssdk/gui/PopupDialog;->cancel:Landroid/widget/TextView;

    .line 182
    iget-object v0, p0, Lcn/smssdk/gui/PopupDialog;->view:Landroid/view/View;

    iget-object v1, p0, Lcn/smssdk/gui/PopupDialog;->context:Landroid/content/Context;

    const-string v2, "common_dialog_bottom_ll"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/smssdk/gui/PopupDialog;->bottomLl:Landroid/widget/LinearLayout;

    .line 183
    iget-object v0, p0, Lcn/smssdk/gui/PopupDialog;->view:Landroid/view/View;

    iget-object v1, p0, Lcn/smssdk/gui/PopupDialog;->context:Landroid/content/Context;

    const-string v2, "common_dialog_top_rl"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/smssdk/gui/PopupDialog;->topRl:Landroid/widget/RelativeLayout;

    .line 184
    iget-object v0, p0, Lcn/smssdk/gui/PopupDialog;->view:Landroid/view/View;

    iget-object v1, p0, Lcn/smssdk/gui/PopupDialog;->context:Landroid/content/Context;

    const-string v2, "common_dialog_vertical_line"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/gui/PopupDialog;->verticalLine:Landroid/view/View;

    .line 186
    iget-object v0, p0, Lcn/smssdk/gui/PopupDialog;->close:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 187
    new-instance v1, Lcn/smssdk/gui/PopupDialog$3;

    invoke-direct {v1, p0}, Lcn/smssdk/gui/PopupDialog$3;-><init>(Lcn/smssdk/gui/PopupDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 59
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 60
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcn/smssdk/gui/PopupDialog;->width:I

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 62
    iget-object v0, p0, Lcn/smssdk/gui/PopupDialog;->view:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcn/smssdk/gui/PopupDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setCancel(I)V
    .locals 2

    .line 281
    iget-object v0, p0, Lcn/smssdk/gui/PopupDialog;->cancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/smssdk/gui/PopupDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setDialogButton(ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 11

    const-string v0, "Button can not be found. whichButton="

    const/4 v1, 0x2

    const-string/jumbo v2, "setDialogButton"

    const/4 v3, 0x1

    const-string v4, "PopupDialog"

    const/4 v5, 0x0

    const/4 v6, 0x3

    const-string v7, "[SMSSDK][%s][%s] %s"

    const/4 v8, -0x1

    const/4 v9, -0x2

    if-eqz p2, :cond_3

    const-string v10, ""

    .line 93
    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, v9, :cond_2

    if-eq p1, v8, :cond_1

    .line 144
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-array p3, v6, [Ljava/lang/Object;

    aput-object v4, p3, v5

    aput-object v2, p3, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v1

    invoke-virtual {p2, v7, p3}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_1

    .line 114
    :cond_1
    iget-object p1, p0, Lcn/smssdk/gui/PopupDialog;->confirm:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 115
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object p1, p0, Lcn/smssdk/gui/PopupDialog;->confirm:Landroid/widget/TextView;

    new-instance p2, Lcn/smssdk/gui/PopupDialog$1;

    invoke-direct {p2, p0, p3}, Lcn/smssdk/gui/PopupDialog$1;-><init>(Lcn/smssdk/gui/PopupDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 129
    :cond_2
    iget-object p1, p0, Lcn/smssdk/gui/PopupDialog;->cancel:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 130
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object p1, p0, Lcn/smssdk/gui/PopupDialog;->cancel:Landroid/widget/TextView;

    new-instance p2, Lcn/smssdk/gui/PopupDialog$2;

    invoke-direct {p2, p0, p3}, Lcn/smssdk/gui/PopupDialog$2;-><init>(Lcn/smssdk/gui/PopupDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    :goto_0
    const/16 p2, 0x8

    if-eq p1, v9, :cond_5

    if-eq p1, v8, :cond_4

    .line 108
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-array p3, v6, [Ljava/lang/Object;

    aput-object v4, p3, v5

    aput-object v2, p3, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v1

    invoke-virtual {p2, v7, p3}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_1

    .line 96
    :cond_4
    iget-object p1, p0, Lcn/smssdk/gui/PopupDialog;->confirm:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 97
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 102
    :cond_5
    iget-object p1, p0, Lcn/smssdk/gui/PopupDialog;->cancel:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 103
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setDialogButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 5

    const/16 v0, 0x8

    const-string v1, ""

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz p3, :cond_5

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    const/4 v3, -0x2

    if-eqz p1, :cond_2

    .line 156
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 157
    invoke-virtual {p0, v2, p1, p2}, Lcn/smssdk/gui/PopupDialog;->setDialogButton(ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {p0, v3, p3, p4}, Lcn/smssdk/gui/PopupDialog;->setDialogButton(ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 161
    :cond_2
    iget-object v4, p0, Lcn/smssdk/gui/PopupDialog;->verticalLine:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, v2, v0, v0}, Lcn/smssdk/gui/PopupDialog;->setDialogButton(ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_4

    .line 164
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 168
    :cond_3
    invoke-virtual {p0, v3, p1, p2}, Lcn/smssdk/gui/PopupDialog;->setDialogButton(ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 165
    :cond_4
    :goto_0
    invoke-virtual {p0, v3, p3, p4}, Lcn/smssdk/gui/PopupDialog;->setDialogButton(ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 153
    :cond_5
    :goto_1
    iget-object p1, p0, Lcn/smssdk/gui/PopupDialog;->bottomLl:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    .line 154
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/PopupDialog;->msg:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 82
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/smssdk/gui/PopupDialog;->msg:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;Z)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/PopupDialog;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/smssdk/gui/PopupDialog;->title:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 68
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 75
    iget-object p1, p0, Lcn/smssdk/gui/PopupDialog;->close:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    .line 76
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method
