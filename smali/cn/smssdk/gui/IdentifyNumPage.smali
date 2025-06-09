.class public Lcn/smssdk/gui/IdentifyNumPage;
.super Lcom/mob/tools/FakeActivity;
.source "IdentifyNumPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final MIN_REQUEST_VOICE_VERIFY_INTERVAL:I = 0x3e8

.field private static final RETRY_INTERVAL:I = 0x3c


# instance fields
.field private btnSounds:Landroid/widget/TextView;

.field private btnSubmit:Landroid/widget/Button;

.field private code:Ljava/lang/String;

.field private etIdentifyNum:Landroid/widget/EditText;

.field private formatedPhone:Ljava/lang/String;

.field private handler:Lcn/smssdk/EventHandler;

.field private ivClear:Landroid/widget/ImageView;

.field private lastRequestVVTime:J

.field private pd:Landroid/app/Dialog;

.field private phone:Ljava/lang/String;

.field private smsReceiver:Landroid/content/BroadcastReceiver;

.field private tempCode:Ljava/lang/String;

.field private time:I

.field private tvIdentifyNotify:Landroid/widget/TextView;

.field private tvPhone:Landroid/widget/TextView;

.field private tvResend:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    const/16 v0, 0x3c

    .line 56
    iput v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->time:I

    return-void
.end method

.method static synthetic access$000(Lcn/smssdk/gui/IdentifyNumPage;ILjava/lang/Object;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcn/smssdk/gui/IdentifyNumPage;->afterSubmit(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcn/smssdk/gui/IdentifyNumPage;ILjava/lang/Object;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcn/smssdk/gui/IdentifyNumPage;->afterGet(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcn/smssdk/gui/IdentifyNumPage;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/IdentifyNumPage;->phone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/smssdk/gui/IdentifyNumPage;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcn/smssdk/gui/IdentifyNumPage;->stopCountDown()V

    return-void
.end method

.method static synthetic access$1200(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/smssdk/gui/IdentifyNumPage;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcn/smssdk/gui/IdentifyNumPage;->countDown()V

    return-void
.end method

.method static synthetic access$1700(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1800(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1900(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcn/smssdk/gui/IdentifyNumPage;ILjava/lang/Object;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcn/smssdk/gui/IdentifyNumPage;->afterGetVoice(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2100(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2200(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2300(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2400(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2500(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2600(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/widget/EditText;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/IdentifyNumPage;->etIdentifyNum:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcn/smssdk/gui/IdentifyNumPage;)I
    .locals 0

    .line 49
    iget p0, p0, Lcn/smssdk/gui/IdentifyNumPage;->time:I

    return p0
.end method

.method static synthetic access$402(Lcn/smssdk/gui/IdentifyNumPage;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->time:I

    return p1
.end method

.method static synthetic access$410(Lcn/smssdk/gui/IdentifyNumPage;)I
    .locals 2

    .line 49
    iget v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->time:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->time:I

    return v0
.end method

.method static synthetic access$500(Lcn/smssdk/gui/IdentifyNumPage;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcn/smssdk/gui/IdentifyNumPage;->setResendText(I)V

    return-void
.end method

.method static synthetic access$600(Lcn/smssdk/gui/IdentifyNumPage;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcn/smssdk/gui/IdentifyNumPage;->showNotifyDialog()V

    return-void
.end method

.method static synthetic access$700(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/IdentifyNumPage;->pd:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$702(Lcn/smssdk/gui/IdentifyNumPage;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->pd:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$800(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$900(Lcn/smssdk/gui/IdentifyNumPage;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/IdentifyNumPage;->code:Ljava/lang/String;

    return-object p0
.end method

.method private afterGet(ILjava/lang/Object;)V
    .locals 1

    .line 385
    new-instance v0, Lcn/smssdk/gui/IdentifyNumPage$7;

    invoke-direct {v0, p0, p1, p2}, Lcn/smssdk/gui/IdentifyNumPage$7;-><init>(Lcn/smssdk/gui/IdentifyNumPage;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/IdentifyNumPage;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private afterGetVoice(ILjava/lang/Object;)V
    .locals 1

    .line 438
    new-instance v0, Lcn/smssdk/gui/IdentifyNumPage$8;

    invoke-direct {v0, p0, p1, p2}, Lcn/smssdk/gui/IdentifyNumPage$8;-><init>(Lcn/smssdk/gui/IdentifyNumPage;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/IdentifyNumPage;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private afterSubmit(ILjava/lang/Object;)V
    .locals 1

    .line 319
    new-instance v0, Lcn/smssdk/gui/IdentifyNumPage$6;

    invoke-direct {v0, p0, p1, p2}, Lcn/smssdk/gui/IdentifyNumPage$6;-><init>(Lcn/smssdk/gui/IdentifyNumPage;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/IdentifyNumPage;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private countDown()V
    .locals 3

    .line 180
    new-instance v0, Lcn/smssdk/gui/IdentifyNumPage$3;

    invoke-direct {v0, p0}, Lcn/smssdk/gui/IdentifyNumPage$3;-><init>(Lcn/smssdk/gui/IdentifyNumPage;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcn/smssdk/gui/IdentifyNumPage;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private setResendText(I)V
    .locals 3

    .line 523
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvResend:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 524
    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "smssdk_identify_num_page_resend"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    .line 526
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvResend:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvResend:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "smssdk_main_color"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 528
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvResend:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    .line 530
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 531
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvResend:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvResend:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "smssdk_tv_light_gray"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 533
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvResend:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showNotifyDialog()V
    .locals 12

    .line 486
    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "smssdk_close_identify_page_dialog"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 487
    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "smssdk_confirm"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 488
    new-instance v6, Lcn/smssdk/gui/IdentifyNumPage$9;

    invoke-direct {v6, p0}, Lcn/smssdk/gui/IdentifyNumPage$9;-><init>(Lcn/smssdk/gui/IdentifyNumPage;)V

    .line 496
    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "smssdk_wait"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 497
    new-instance v8, Lcn/smssdk/gui/IdentifyNumPage$10;

    invoke-direct {v8, p0}, Lcn/smssdk/gui/IdentifyNumPage$10;-><init>(Lcn/smssdk/gui/IdentifyNumPage;)V

    .line 503
    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcn/smssdk/gui/PopupDialog;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZZZ)Lcn/smssdk/gui/PopupDialog;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Lcn/smssdk/gui/PopupDialog;->show()V

    return-void
.end method

.method private stopCountDown()V
    .locals 1

    const/4 v0, 0x1

    .line 210
    iput v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->time:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 243
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v1, "ll_back"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 244
    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v2, "btn_submit"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 245
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v3, "iv_clear"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 246
    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string/jumbo v4, "tv_voice"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 247
    iget-object v4, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string/jumbo v5, "tv_resend"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-ne p1, v0, :cond_0

    .line 250
    new-instance p1, Lcn/smssdk/gui/IdentifyNumPage$4;

    invoke-direct {p1, p0}, Lcn/smssdk/gui/IdentifyNumPage$4;-><init>(Lcn/smssdk/gui/IdentifyNumPage;)V

    invoke-virtual {p0, p1}, Lcn/smssdk/gui/IdentifyNumPage;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_0
    if-ne p1, v1, :cond_4

    .line 257
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->etIdentifyNum:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 258
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 259
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->pd:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->pd:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 262
    :cond_1
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcn/smssdk/gui/CommonDialog;->ProgressDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->pd:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 266
    :cond_2
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->code:Ljava/lang/String;

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->phone:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcn/smssdk/SMSSDK;->submitVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    :cond_3
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string/jumbo v0, "smssdk_write_identify_code"

    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_9

    .line 270
    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_4
    if-ne p1, v2, :cond_5

    .line 274
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->etIdentifyNum:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    goto/16 :goto_0

    :cond_5
    if-ne p1, v3, :cond_6

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 277
    iget-wide v2, p0, Lcn/smssdk/gui/IdentifyNumPage;->lastRequestVVTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-lez p1, :cond_9

    .line 278
    iput-wide v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->lastRequestVVTime:J

    .line 280
    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string/jumbo v1, "smssdk_send_sounds_identify_code"

    .line 281
    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 280
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 282
    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string/jumbo v1, "smssdk_i_know"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 283
    new-instance v5, Lcn/smssdk/gui/IdentifyNumPage$5;

    invoke-direct {v5, p0}, Lcn/smssdk/gui/IdentifyNumPage$5;-><init>(Lcn/smssdk/gui/IdentifyNumPage;)V

    .line 296
    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lcn/smssdk/gui/PopupDialog;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZZZ)Lcn/smssdk/gui/PopupDialog;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Lcn/smssdk/gui/PopupDialog;->show()V

    goto :goto_0

    :cond_6
    if-ne p1, v4, :cond_9

    .line 300
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->pd:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 301
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->pd:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 303
    :cond_7
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcn/smssdk/gui/CommonDialog;->ProgressDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->pd:Landroid/app/Dialog;

    if-eqz p1, :cond_8

    .line 305
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 308
    :cond_8
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->code:Ljava/lang/String;

    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->phone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->tempCode:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcn/smssdk/SMSSDK;->getVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/smssdk/OnSendMessageHandler;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 82
    new-instance v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {v0}, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->getLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v2, "ll_back"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v2, "btn_submit"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->btnSubmit:Landroid/widget/Button;

    .line 90
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->btnSubmit:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v2, "et_put_identify"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->etIdentifyNum:Landroid/widget/EditText;

    .line 94
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "tv_identify_notify"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvIdentifyNotify:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string/jumbo v1, "smssdk_send_mobile_detail"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcn/smssdk/gui/IdentifyNumPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvIdentifyNotify:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "tv_phone"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvPhone:Landroid/widget/TextView;

    .line 104
    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->formatedPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string v2, "iv_clear"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->ivClear:Landroid/widget/ImageView;

    .line 107
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "tv_resend"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->tvResend:Landroid/widget/TextView;

    .line 110
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "tv_voice"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->btnSounds:Landroid/widget/TextView;

    .line 113
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    new-instance v0, Lcn/smssdk/gui/IdentifyNumPage$1;

    invoke-direct {v0, p0}, Lcn/smssdk/gui/IdentifyNumPage$1;-><init>(Lcn/smssdk/gui/IdentifyNumPage;)V

    iput-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->handler:Lcn/smssdk/EventHandler;

    .line 129
    invoke-static {v0}, Lcn/smssdk/SMSSDK;->registerEventHandler(Lcn/smssdk/EventHandler;)V

    .line 130
    invoke-direct {p0}, Lcn/smssdk/gui/IdentifyNumPage;->countDown()V

    :cond_1
    :try_start_0
    const-string v0, "android.permission.RECEIVE_SMS"

    .line 137
    invoke-static {v0}, Lcom/mob/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    new-instance v0, Lcn/smssdk/gui/SMSReceiver;

    new-instance v1, Lcn/smssdk/gui/IdentifyNumPage$2;

    invoke-direct {v1, p0}, Lcn/smssdk/gui/IdentifyNumPage$2;-><init>(Lcn/smssdk/gui/IdentifyNumPage;)V

    invoke-direct {v0, v1}, Lcn/smssdk/gui/SMSReceiver;-><init>(Lcn/smssdk/SMSSDK$VerifyCodeReadListener;)V

    iput-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->smsReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->smsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->smsReceiver:Landroid/content/BroadcastReceiver;

    :cond_2
    :goto_0
    return-void
.end method

.method public onFinish()Z
    .locals 2

    .line 167
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->handler:Lcn/smssdk/EventHandler;

    invoke-static {v0}, Lcn/smssdk/SMSSDK;->unregisterEventHandler(Lcn/smssdk/EventHandler;)V

    .line 168
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->smsReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage;->smsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onFinish()Z

    move-result v0

    return v0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 510
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 511
    new-instance p1, Lcn/smssdk/gui/IdentifyNumPage$11;

    invoke-direct {p1, p0}, Lcn/smssdk/gui/IdentifyNumPage$11;-><init>(Lcn/smssdk/gui/IdentifyNumPage;)V

    invoke-virtual {p0, p1}, Lcn/smssdk/gui/IdentifyNumPage;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 0

    .line 163
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 158
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onResume()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 215
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p2, 0x0

    if-lez p1, :cond_0

    .line 216
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->btnSubmit:Landroid/widget/Button;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 217
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->ivClear:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string/jumbo p2, "smssdk_btn_enable"

    invoke-static {p1, p2}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    .line 220
    iget-object p2, p0, Lcn/smssdk/gui/IdentifyNumPage;->btnSubmit:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 223
    :cond_0
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->btnSubmit:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 224
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->ivClear:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->activity:Landroid/app/Activity;

    const-string/jumbo p2, "smssdk_btn_disenable"

    invoke-static {p1, p2}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    .line 227
    iget-object p2, p0, Lcn/smssdk/gui/IdentifyNumPage;->btnSubmit:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->phone:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcn/smssdk/gui/IdentifyNumPage;->code:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcn/smssdk/gui/IdentifyNumPage;->formatedPhone:Ljava/lang/String;

    return-void
.end method

.method public setTempCode(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage;->tempCode:Ljava/lang/String;

    return-void
.end method
