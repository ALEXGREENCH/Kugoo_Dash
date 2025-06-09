.class public Lcn/smssdk/ui/a;
.super Landroid/app/AlertDialog;
.source "AuthorizeDialog.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcn/smssdk/ui/companent/CircleImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Lcn/smssdk/OnDialogListener;

.field private j:Lcn/smssdk/entity/UiSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/smssdk/OnDialogListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/smssdk/entity/UiSettings$Builder;

    invoke-direct {v0}, Lcn/smssdk/entity/UiSettings$Builder;-><init>()V

    invoke-virtual {v0}, Lcn/smssdk/entity/UiSettings$Builder;->buildDefault()Lcn/smssdk/entity/UiSettings;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcn/smssdk/ui/a;-><init>(Landroid/content/Context;Lcn/smssdk/entity/UiSettings;Lcn/smssdk/OnDialogListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/smssdk/entity/UiSettings;Lcn/smssdk/OnDialogListener;)V
    .locals 2

    const-string/jumbo v0, "smssdk_DialogStyle"

    .line 2
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getStyleRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 3
    iput-object p1, p0, Lcn/smssdk/ui/a;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcn/smssdk/ui/a;->j:Lcn/smssdk/entity/UiSettings;

    .line 5
    iput-object p3, p0, Lcn/smssdk/ui/a;->i:Lcn/smssdk/OnDialogListener;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 p3, 0x2

    const-wide v0, 0x3fe6666666666666L    # 0.7

    if-ne p2, p3, :cond_0

    .line 8
    iget-object p2, p0, Lcn/smssdk/ui/a;->b:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcn/smssdk/ui/a;->a(Landroid/content/Context;)I

    move-result p2

    int-to-double p2, p2

    mul-double/2addr p2, v0

    double-to-int p2, p2

    .line 9
    iput p2, p0, Lcn/smssdk/ui/a;->c:I

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lcn/smssdk/ui/a;->b:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcn/smssdk/ui/a;->c(Landroid/content/Context;)I

    move-result p2

    int-to-double p2, p2

    mul-double/2addr p2, v0

    double-to-int p2, p2

    .line 12
    iput p2, p0, Lcn/smssdk/ui/a;->c:I

    :goto_0
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 15
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 16
    iget-object p2, p0, Lcn/smssdk/ui/a;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const-string/jumbo p3, "smssdk_authorize_dialog"

    .line 17
    invoke-static {p1, p3}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/smssdk/ui/a;->a:Landroid/view/View;

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Lcn/smssdk/ui/a;->b(Landroid/content/Context;)[I

    move-result-object p1

    const/4 v0, 0x1

    aget p1, p1, v0

    return p1
.end method

.method static synthetic a(Lcn/smssdk/ui/a;)Lcn/smssdk/OnDialogListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/smssdk/ui/a;->i:Lcn/smssdk/OnDialogListener;

    return-object p0
.end method

.method private a()V
    .locals 2

    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Lcn/smssdk/utils/SmsResHelper;->getIconIdSafe(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/smssdk/ui/a;->f:Lcn/smssdk/ui/companent/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/smssdk/ui/a;->f:Lcn/smssdk/ui/companent/CircleImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcn/smssdk/ui/a;->h:Landroid/widget/TextView;

    new-instance v1, Lcn/smssdk/ui/a$a;

    invoke-direct {v1, p0}, Lcn/smssdk/ui/a$a;-><init>(Lcn/smssdk/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcn/smssdk/ui/a;->g:Landroid/widget/TextView;

    new-instance v1, Lcn/smssdk/ui/a$b;

    invoke-direct {v1, p0}, Lcn/smssdk/ui/a$b;-><init>(Lcn/smssdk/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/smssdk/ui/a;->a:Landroid/view/View;

    iget-object v1, p0, Lcn/smssdk/ui/a;->b:Landroid/content/Context;

    const-string/jumbo v2, "smssdk_authorize_dialog_title_tv"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/smssdk/ui/a;->d:Landroid/widget/TextView;

    .line 2
    iget-object v0, p0, Lcn/smssdk/ui/a;->a:Landroid/view/View;

    iget-object v1, p0, Lcn/smssdk/ui/a;->b:Landroid/content/Context;

    const-string/jumbo v2, "smssdk_authorize_dialog_msg"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/smssdk/ui/a;->e:Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lcn/smssdk/ui/a;->a:Landroid/view/View;

    iget-object v1, p0, Lcn/smssdk/ui/a;->b:Landroid/content/Context;

    const-string/jumbo v2, "smssdk_authorize_dialog_logo_iv"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/smssdk/ui/companent/CircleImageView;

    iput-object v0, p0, Lcn/smssdk/ui/a;->f:Lcn/smssdk/ui/companent/CircleImageView;

    .line 4
    iget-object v0, p0, Lcn/smssdk/ui/a;->a:Landroid/view/View;

    iget-object v1, p0, Lcn/smssdk/ui/a;->b:Landroid/content/Context;

    const-string/jumbo v2, "smssdk_authorize_dialog_accept_tv"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/smssdk/ui/a;->h:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcn/smssdk/ui/a;->a:Landroid/view/View;

    iget-object v1, p0, Lcn/smssdk/ui/a;->b:Landroid/content/Context;

    const-string/jumbo v2, "smssdk_authorize_dialog_reject_tv"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/smssdk/ui/a;->g:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcn/smssdk/ui/a;->j:Lcn/smssdk/entity/UiSettings;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lcn/smssdk/ui/a;->d:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v0}, Lcn/smssdk/entity/UiSettings;->getTitleTextId()I

    move-result v0

    sget v2, Lcn/smssdk/entity/UiSettings;->DEFAULT_TITLE_TEXT_ID:I

    .line 10
    invoke-static {v0, v2}, Lcn/smssdk/utils/SmsResHelper;->getStringSafe(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcn/smssdk/ui/a;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/smssdk/ui/a;->j:Lcn/smssdk/entity/UiSettings;

    .line 13
    invoke-virtual {v1}, Lcn/smssdk/entity/UiSettings;->getTitleTextColorId()I

    move-result v1

    sget v2, Lcn/smssdk/entity/UiSettings;->DEFAULT_TITLE_TEXT_COLOR_ID:I

    .line 14
    invoke-static {v1, v2}, Lcn/smssdk/utils/SmsResHelper;->getColorSafe(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    iget-object v0, p0, Lcn/smssdk/ui/a;->j:Lcn/smssdk/entity/UiSettings;

    invoke-virtual {v0}, Lcn/smssdk/entity/UiSettings;->getTitleTextSizeDp()I

    move-result v0

    if-gtz v0, :cond_0

    .line 18
    sget v0, Lcn/smssdk/entity/UiSettings;->DEFAULT_TITLE_TEXT_SIZE_DP:I

    .line 20
    :cond_0
    iget-object v1, p0, Lcn/smssdk/ui/a;->d:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 21
    iget-object v0, p0, Lcn/smssdk/ui/a;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/smssdk/ui/a;->j:Lcn/smssdk/entity/UiSettings;

    invoke-virtual {v1}, Lcn/smssdk/entity/UiSettings;->getMsgText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private b(Landroid/content/Context;)[I
    .locals 13

    const-string v0, "[SMSSDK][%s][%s] %s"

    const-string v1, "get SCreenSize Exception"

    const-string v2, "getScreenSize"

    const-string v3, "AuthorizeDialog"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    const-string/jumbo v8, "window"

    .line 22
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 24
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v3, v9, v6

    aput-object v2, v9, v7

    aput-object v1, v9, v5

    invoke-virtual {v8, p1, v0, v9}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    new-array p1, v5, [I

    .line 29
    fill-array-data p1, :array_0

    return-object p1

    .line 31
    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 38
    :try_start_1
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v10, "getRealSize"

    :try_start_2
    new-array v11, v7, [Ljava/lang/Class;

    const-class v12, Landroid/graphics/Point;

    aput-object v12, v11, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 40
    invoke-virtual {v9, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v8, v10, v6

    .line 41
    invoke-virtual {v9, p1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p1, v5, [I

    .line 42
    iget v9, v8, Landroid/graphics/Point;->x:I

    aput v9, p1, v6

    iget v8, v8, Landroid/graphics/Point;->y:I

    aput v8, p1, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    .line 44
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v6

    aput-object v2, v4, v7

    aput-object v1, v4, v5

    invoke-virtual {v8, p1, v0, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    new-array p1, v5, [I

    .line 45
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

.method private c(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcn/smssdk/ui/a;->b(Landroid/content/Context;)[I

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcn/smssdk/ui/a;->c:I

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 4
    iget-object v0, p0, Lcn/smssdk/ui/a;->a:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    invoke-direct {p0}, Lcn/smssdk/ui/a;->b()V

    .line 6
    invoke-direct {p0}, Lcn/smssdk/ui/a;->a()V

    return-void
.end method
