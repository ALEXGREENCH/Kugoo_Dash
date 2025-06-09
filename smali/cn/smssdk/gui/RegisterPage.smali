.class public Lcn/smssdk/gui/RegisterPage;
.super Lcom/mob/tools/FakeActivity;
.source "RegisterPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final DEFAULT_COUNTRY_ID:Ljava/lang/String; = "42"


# instance fields
.field private btnNext:Landroid/widget/Button;

.field private callback:Lcn/smssdk/EventHandler;

.field private currentCode:Ljava/lang/String;

.field private currentId:Ljava/lang/String;

.field private etPhoneNum:Landroid/widget/EditText;

.field private handler:Lcn/smssdk/EventHandler;

.field private ivClear:Landroid/widget/ImageView;

.field private osmHandler:Lcn/smssdk/OnSendMessageHandler;

.field private pd:Landroid/app/Dialog;

.field private tempCode:Ljava/lang/String;

.field private tvCountry:Landroid/widget/TextView;

.field private tvCountryNum:Landroid/widget/TextView;

.field private verifyResult:Lcn/smssdk/wrapper/TokenVerifyResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Dialog;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/RegisterPage;->pd:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$002(Lcn/smssdk/gui/RegisterPage;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/smssdk/gui/RegisterPage;->pd:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$100(Lcn/smssdk/gui/RegisterPage;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcn/smssdk/gui/RegisterPage;->afterVerificationCodeRequested(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcn/smssdk/gui/RegisterPage;)Lcn/smssdk/OnSendMessageHandler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/RegisterPage;->osmHandler:Lcn/smssdk/OnSendMessageHandler;

    return-object p0
.end method

.method static synthetic access$202(Lcn/smssdk/gui/RegisterPage;Lcn/smssdk/wrapper/TokenVerifyResult;)Lcn/smssdk/wrapper/TokenVerifyResult;
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/smssdk/gui/RegisterPage;->verifyResult:Lcn/smssdk/wrapper/TokenVerifyResult;

    return-object p1
.end method

.method static synthetic access$300(Lcn/smssdk/gui/RegisterPage;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcn/smssdk/gui/RegisterPage;->showVerifyResult()V

    return-void
.end method

.method static synthetic access$400(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lcn/smssdk/gui/RegisterPage;)Landroid/widget/EditText;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/RegisterPage;->etPhoneNum:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$700(Lcn/smssdk/gui/RegisterPage;)Landroid/widget/TextView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/RegisterPage;->tvCountryNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$900(Lcn/smssdk/gui/RegisterPage;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/smssdk/gui/RegisterPage;->tempCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcn/smssdk/gui/RegisterPage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/smssdk/gui/RegisterPage;->tempCode:Ljava/lang/String;

    return-object p1
.end method

.method private afterVerificationCodeRequested(Z)V
    .locals 4

    .line 441
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage;->tvCountryNum:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    .line 443
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 444
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 446
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcn/smssdk/gui/RegisterPage;->splitPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 450
    new-instance p1, Lcn/smssdk/gui/SmartVerifyPage;

    invoke-direct {p1}, Lcn/smssdk/gui/SmartVerifyPage;-><init>()V

    .line 451
    invoke-virtual {p1, v0, v1, v2}, Lcn/smssdk/gui/SmartVerifyPage;->setPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, v3, p0}, Lcn/smssdk/gui/SmartVerifyPage;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/FakeActivity;)V

    goto :goto_0

    .line 454
    :cond_1
    new-instance p1, Lcn/smssdk/gui/IdentifyNumPage;

    invoke-direct {p1}, Lcn/smssdk/gui/IdentifyNumPage;-><init>()V

    .line 455
    invoke-virtual {p1, v0, v1, v2}, Lcn/smssdk/gui/IdentifyNumPage;->setPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->tempCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/smssdk/gui/IdentifyNumPage;->setTempCode(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, v3, p0}, Lcn/smssdk/gui/IdentifyNumPage;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/FakeActivity;)V

    .line 462
    iget-object p1, p0, Lcn/smssdk/gui/RegisterPage;->handler:Lcn/smssdk/EventHandler;

    invoke-static {p1}, Lcn/smssdk/SMSSDK;->unregisterEventHandler(Lcn/smssdk/EventHandler;)V

    :goto_0
    return-void
.end method

.method private getCurrentCountry()[Ljava/lang/String;
    .locals 4

    .line 230
    invoke-direct {p0}, Lcn/smssdk/gui/RegisterPage;->getMCC()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    invoke-static {v0}, Lcn/smssdk/SMSSDK;->getCountryByMCC(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 237
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no country found by MCC: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const-string v0, "42"

    .line 238
    invoke-static {v0}, Lcn/smssdk/SMSSDK;->getCountry(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private getMCC()Ljava/lang/String;
    .locals 3

    .line 244
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 246
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 252
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hideKeyboard()V
    .locals 3

    .line 335
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 337
    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private showVerifyResult()V
    .locals 12

    .line 341
    invoke-direct {p0}, Lcn/smssdk/gui/RegisterPage;->hideKeyboard()V

    .line 342
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "smssdk_identify_success"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 343
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "smssdk_confirm"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 344
    new-instance v6, Lcn/smssdk/gui/RegisterPage$2;

    invoke-direct {v6, p0}, Lcn/smssdk/gui/RegisterPage$2;-><init>(Lcn/smssdk/gui/RegisterPage;)V

    .line 350
    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcn/smssdk/gui/PopupDialog;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZZZ)Lcn/smssdk/gui/PopupDialog;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lcn/smssdk/gui/PopupDialog;->show()V

    return-void
.end method

.method private splitPhoneNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 v1, 0x4

    :goto_0
    if-ge v1, p1, :cond_0

    const/16 v2, 0x20

    .line 390
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x5

    goto :goto_0

    .line 392
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
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

.method public confirmSend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 398
    invoke-virtual {p0}, Lcn/smssdk/gui/RegisterPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "smssdk_make_sure_mobile_num"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcn/smssdk/gui/RegisterPage;->splitPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-virtual {p0}, Lcn/smssdk/gui/RegisterPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string/jumbo v4, "smssdk_make_sure_mobile_detail"

    .line 401
    invoke-static {v2, v4}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 400
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 402
    invoke-virtual {p0}, Lcn/smssdk/gui/RegisterPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "smssdk_ok"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 403
    invoke-virtual {p0}, Lcn/smssdk/gui/RegisterPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "smssdk_cancel"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 404
    new-instance v6, Lcn/smssdk/gui/RegisterPage$3;

    invoke-direct {v6, p0, p1, p2}, Lcn/smssdk/gui/RegisterPage$3;-><init>(Lcn/smssdk/gui/RegisterPage;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    new-instance v8, Lcn/smssdk/gui/RegisterPage$4;

    invoke-direct {v8, p0}, Lcn/smssdk/gui/RegisterPage$4;-><init>(Lcn/smssdk/gui/RegisterPage;)V

    .line 430
    invoke-virtual {p0}, Lcn/smssdk/gui/RegisterPage;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcn/smssdk/gui/PopupDialog;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZZZ)Lcn/smssdk/gui/PopupDialog;

    move-result-object p1

    .line 431
    invoke-virtual {p1}, Lcn/smssdk/gui/PopupDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 305
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v1, "ll_back"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 306
    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "rl_country"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 307
    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v3, "btn_next"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 308
    iget-object v3, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v4, "iv_clear"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-ne p1, v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcn/smssdk/gui/RegisterPage;->finish()V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 314
    new-instance p1, Lcn/smssdk/gui/CountryPage;

    invoke-direct {p1}, Lcn/smssdk/gui/CountryPage;-><init>()V

    .line 315
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->currentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/smssdk/gui/CountryPage;->setCountryId(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lcn/smssdk/gui/CountryPage;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/FakeActivity;)V

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_3

    .line 319
    iget-object p1, p0, Lcn/smssdk/gui/RegisterPage;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s*"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 320
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->tvCountryNum:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage;->verifyResult:Lcn/smssdk/wrapper/TokenVerifyResult;

    if-nez v1, :cond_2

    .line 324
    invoke-virtual {p0, p1, v0}, Lcn/smssdk/gui/RegisterPage;->confirmSend(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_2
    invoke-static {p1, v1}, Lcn/smssdk/SMSSDK;->login(Ljava/lang/String;Lcn/smssdk/wrapper/TokenVerifyResult;)V

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_4

    .line 330
    iget-object p1, p0, Lcn/smssdk/gui/RegisterPage;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 7

    .line 90
    new-instance v0, Lcn/smssdk/gui/layout/RegisterPageLayout;

    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/smssdk/gui/layout/RegisterPageLayout;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-virtual {v0}, Lcn/smssdk/gui/layout/RegisterPageLayout;->getLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const-string v0, "42"

    .line 95
    iput-object v0, p0, Lcn/smssdk/gui/RegisterPage;->currentId:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v2, "ll_back"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string/jumbo v3, "rl_country"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 105
    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v4, "btn_next"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcn/smssdk/gui/RegisterPage;->btnNext:Landroid/widget/Button;

    .line 106
    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string/jumbo v4, "tv_country"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/smssdk/gui/RegisterPage;->tvCountry:Landroid/widget/TextView;

    .line 108
    invoke-direct {p0}, Lcn/smssdk/gui/RegisterPage;->getCurrentCountry()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 111
    aget-object v5, v2, v4

    iput-object v5, p0, Lcn/smssdk/gui/RegisterPage;->currentCode:Ljava/lang/String;

    .line 112
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->tvCountry:Landroid/widget/TextView;

    aget-object v2, v2, v3

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string/jumbo v6, "tv_country_num"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/smssdk/gui/RegisterPage;->tvCountryNum:Landroid/widget/TextView;

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "+"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcn/smssdk/gui/RegisterPage;->currentCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v6, "et_write_phone"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcn/smssdk/gui/RegisterPage;->etPhoneNum:Landroid/widget/EditText;

    const-string v5, ""

    .line 119
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 122
    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const-string v5, "iv_clear"

    if-lez v2, :cond_1

    .line 123
    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage;->btnNext:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    invoke-static {v4, v5}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcn/smssdk/gui/RegisterPage;->ivClear:Landroid/widget/ImageView;

    .line 126
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string/jumbo v3, "smssdk_btn_enable"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 129
    iget-object v3, p0, Lcn/smssdk/gui/RegisterPage;->btnNext:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 133
    :cond_1
    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    invoke-static {v3, v5}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcn/smssdk/gui/RegisterPage;->ivClear:Landroid/widget/ImageView;

    .line 135
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->btnNext:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->ivClear:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v0, Lcn/smssdk/gui/RegisterPage$1;

    invoke-direct {v0, p0}, Lcn/smssdk/gui/RegisterPage$1;-><init>(Lcn/smssdk/gui/RegisterPage;)V

    iput-object v0, p0, Lcn/smssdk/gui/RegisterPage;->handler:Lcn/smssdk/EventHandler;

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->handler:Lcn/smssdk/EventHandler;

    invoke-static {v0}, Lcn/smssdk/SMSSDK;->unregisterEventHandler(Lcn/smssdk/EventHandler;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResult(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    const-string v0, "page"

    .line 357
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "id"

    .line 360
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/smssdk/gui/RegisterPage;->currentId:Ljava/lang/String;

    .line 361
    invoke-static {p1}, Lcn/smssdk/SMSSDK;->getCountry(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 363
    aget-object v0, p1, v1

    iput-object v0, p0, Lcn/smssdk/gui/RegisterPage;->currentCode:Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->tvCountryNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/smssdk/gui/RegisterPage;->currentCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->tvCountry:Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "res"

    .line 369
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "phone"

    .line 372
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 374
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->callback:Lcn/smssdk/EventHandler;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    const/4 v2, -0x1

    .line 375
    invoke-virtual {v0, v1, v2, p1}, Lcn/smssdk/EventHandler;->afterEvent(IILjava/lang/Object;)V

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcn/smssdk/gui/RegisterPage;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->handler:Lcn/smssdk/EventHandler;

    invoke-static {v0}, Lcn/smssdk/SMSSDK;->registerEventHandler(Lcn/smssdk/EventHandler;)V

    .line 257
    invoke-static {}, Lcn/smssdk/SMSSDK;->getToken()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 282
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p2, 0x0

    if-lez p1, :cond_0

    .line 283
    iget-object p1, p0, Lcn/smssdk/gui/RegisterPage;->btnNext:Landroid/widget/Button;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 284
    iget-object p1, p0, Lcn/smssdk/gui/RegisterPage;->ivClear:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    iget-object p1, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string/jumbo p2, "smssdk_btn_enable"

    invoke-static {p1, p2}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    .line 287
    iget-object p2, p0, Lcn/smssdk/gui/RegisterPage;->btnNext:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object p1, p0, Lcn/smssdk/gui/RegisterPage;->btnNext:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 291
    iget-object p1, p0, Lcn/smssdk/gui/RegisterPage;->ivClear:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    iget-object p1, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string/jumbo p2, "smssdk_btn_disenable"

    invoke-static {p1, p2}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    .line 294
    iget-object p2, p0, Lcn/smssdk/gui/RegisterPage;->btnNext:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnSendMessageHandler(Lcn/smssdk/OnSendMessageHandler;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcn/smssdk/gui/RegisterPage;->osmHandler:Lcn/smssdk/OnSendMessageHandler;

    return-void
.end method

.method public setRegisterCallback(Lcn/smssdk/EventHandler;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcn/smssdk/gui/RegisterPage;->callback:Lcn/smssdk/EventHandler;

    return-void
.end method

.method public setTempCode(Ljava/lang/String;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcn/smssdk/gui/RegisterPage;->tempCode:Ljava/lang/String;

    .line 436
    invoke-static {p1}, Lcn/smssdk/gui/util/GUISPDB;->setTempCode(Ljava/lang/String;)V

    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-super {p0, p1, v0}, Lcom/mob/tools/FakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
