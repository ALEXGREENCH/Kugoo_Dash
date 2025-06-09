.class public Lcn/smssdk/gui/SmartVerifyPage;
.super Lcom/mob/tools/FakeActivity;
.source "SmartVerifyPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final RETRY_INTERVAL:I = 0x3c


# instance fields
.field private btnSubmit:Landroid/widget/Button;

.field private code:Ljava/lang/String;

.field private etIdentifyNum:Landroid/widget/EditText;

.field private formatedPhone:Ljava/lang/String;

.field private ivClear:Landroid/widget/ImageView;

.field private llVoice:Landroid/widget/LinearLayout;

.field private pd:Landroid/app/Dialog;

.field private phone:Ljava/lang/String;

.field private showSmart:Z

.field private time:I

.field private tvIdentifyNotify:Landroid/widget/TextView;

.field private tvPhone:Landroid/widget/TextView;

.field private tvResend:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    const/16 v0, 0x3c

    .line 37
    iput v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->time:I

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->showSmart:Z

    return-void
.end method

.method static synthetic access$000(Lcn/smssdk/gui/SmartVerifyPage;)I
    .locals 0

    .line 31
    iget p0, p0, Lcn/smssdk/gui/SmartVerifyPage;->time:I

    return p0
.end method

.method static synthetic access$002(Lcn/smssdk/gui/SmartVerifyPage;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcn/smssdk/gui/SmartVerifyPage;->time:I

    return p1
.end method

.method static synthetic access$010(Lcn/smssdk/gui/SmartVerifyPage;)I
    .locals 2

    .line 31
    iget v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->time:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/smssdk/gui/SmartVerifyPage;->time:I

    return v0
.end method

.method static synthetic access$100(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/widget/Button;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/smssdk/gui/SmartVerifyPage;->btnSubmit:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/smssdk/gui/SmartVerifyPage;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcn/smssdk/gui/SmartVerifyPage;->showNotifyDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/app/Dialog;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/smssdk/gui/SmartVerifyPage;->pd:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$200(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/app/Activity;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/app/Activity;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/widget/EditText;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/smssdk/gui/SmartVerifyPage;->etIdentifyNum:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/smssdk/gui/SmartVerifyPage;->tvResend:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/widget/LinearLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/smssdk/gui/SmartVerifyPage;->llVoice:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/app/Activity;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$800(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/smssdk/gui/SmartVerifyPage;->tvIdentifyNotify:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$902(Lcn/smssdk/gui/SmartVerifyPage;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcn/smssdk/gui/SmartVerifyPage;->showSmart:Z

    return p1
.end method

.method private afterSubmit(Ljava/lang/Object;)V
    .locals 1

    .line 158
    new-instance v0, Lcn/smssdk/gui/SmartVerifyPage$3;

    invoke-direct {v0, p0, p1}, Lcn/smssdk/gui/SmartVerifyPage$3;-><init>(Lcn/smssdk/gui/SmartVerifyPage;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/SmartVerifyPage;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private countDown()V
    .locals 3

    .line 94
    new-instance v0, Lcn/smssdk/gui/SmartVerifyPage$1;

    invoke-direct {v0, p0}, Lcn/smssdk/gui/SmartVerifyPage$1;-><init>(Lcn/smssdk/gui/SmartVerifyPage;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcn/smssdk/gui/SmartVerifyPage;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private showNotifyDialog()V
    .locals 4

    .line 177
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    const-string v1, "CommonDialog"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStyleRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 179
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcn/smssdk/gui/SmartVerifyPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 181
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcn/smssdk/gui/layout/BackVerifyDialogLayout;->create(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 184
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "tv_dialog_hint"

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 187
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 188
    iget-object v2, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    const-string/jumbo v3, "smssdk_close_identify_page_dialog"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 191
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    const-string v2, "btn_dialog_ok"

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 194
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 195
    iget-object v2, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    const-string/jumbo v3, "smssdk_wait"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 197
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 199
    :cond_1
    new-instance v2, Lcn/smssdk/gui/SmartVerifyPage$4;

    invoke-direct {v2, p0, v1}, Lcn/smssdk/gui/SmartVerifyPage$4;-><init>(Lcn/smssdk/gui/SmartVerifyPage;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    const-string v2, "btn_dialog_cancel"

    invoke-static {v0, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 205
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 206
    iget-object v2, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    const-string/jumbo v3, "smssdk_back"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 208
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 210
    :cond_2
    new-instance v2, Lcn/smssdk/gui/SmartVerifyPage$5;

    invoke-direct {v2, p0, v1}, Lcn/smssdk/gui/SmartVerifyPage$5;-><init>(Lcn/smssdk/gui/SmartVerifyPage;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 216
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 217
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 124
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    const-string v1, "ll_back"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 125
    iget-object v1, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    const-string v2, "btn_submit"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 126
    iget-object v2, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    const-string v3, "iv_clear"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne p1, v0, :cond_1

    .line 129
    iget-boolean p1, p0, Lcn/smssdk/gui/SmartVerifyPage;->showSmart:Z

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcn/smssdk/gui/SmartVerifyPage;->finish()V

    return-void

    .line 133
    :cond_0
    new-instance p1, Lcn/smssdk/gui/SmartVerifyPage$2;

    invoke-direct {p1, p0}, Lcn/smssdk/gui/SmartVerifyPage$2;-><init>(Lcn/smssdk/gui/SmartVerifyPage;)V

    invoke-virtual {p0, p1}, Lcn/smssdk/gui/SmartVerifyPage;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 140
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "country"

    .line 141
    iget-object v1, p0, Lcn/smssdk/gui/SmartVerifyPage;->code:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "phone"

    .line 142
    iget-object v1, p0, Lcn/smssdk/gui/SmartVerifyPage;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-direct {p0, p1}, Lcn/smssdk/gui/SmartVerifyPage;->afterSubmit(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    .line 146
    iget-object p1, p0, Lcn/smssdk/gui/SmartVerifyPage;->etIdentifyNum:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 57
    new-instance v0, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;

    iget-object v1, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v0}, Lcn/smssdk/gui/layout/IdentifyNumPageLayout;->getLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v1, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 62
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    const-string v2, "ll_back"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    const-string v2, "btn_submit"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->btnSubmit:Landroid/widget/Button;

    .line 65
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->btnSubmit:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    const-string v2, "et_put_identify"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->etIdentifyNum:Landroid/widget/EditText;

    .line 70
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "tv_resend"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->tvResend:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    const-string v2, "ll_voice"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->llVoice:Landroid/widget/LinearLayout;

    .line 74
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "tv_identify_notify"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->tvIdentifyNotify:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    const-string/jumbo v1, "smssdk_send_mobile_detail"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcn/smssdk/gui/SmartVerifyPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcn/smssdk/gui/SmartVerifyPage;->tvIdentifyNotify:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "tv_phone"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->tvPhone:Landroid/widget/TextView;

    .line 82
    iget-object v1, p0, Lcn/smssdk/gui/SmartVerifyPage;->formatedPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/SmartVerifyPage;->activity:Landroid/app/Activity;

    const-string v2, "iv_clear"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage;->ivClear:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-direct {p0}, Lcn/smssdk/gui/SmartVerifyPage;->countDown()V

    :cond_1
    return-void
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 225
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcn/smssdk/gui/SmartVerifyPage;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcn/smssdk/gui/SmartVerifyPage;->phone:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcn/smssdk/gui/SmartVerifyPage;->code:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcn/smssdk/gui/SmartVerifyPage;->formatedPhone:Ljava/lang/String;

    return-void
.end method
