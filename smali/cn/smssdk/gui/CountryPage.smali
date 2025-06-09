.class public Lcn/smssdk/gui/CountryPage;
.super Lcom/mob/tools/FakeActivity;
.source "CountryPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Lcn/smssdk/gui/GroupListView$OnItemClickListener;


# instance fields
.field private countryRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private etSearch:Landroid/widget/EditText;

.field private handler:Lcn/smssdk/EventHandler;

.field private id:Ljava/lang/String;

.field private listView:Lcn/smssdk/gui/CountryListView;

.field private pd:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/smssdk/gui/CountryPage;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcn/smssdk/gui/CountryPage;->afterPrepare()V

    return-void
.end method

.method static synthetic access$100(Lcn/smssdk/gui/CountryPage;)Landroid/app/Activity;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/smssdk/gui/CountryPage;)Landroid/app/Activity;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/smssdk/gui/CountryPage;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcn/smssdk/gui/CountryPage;->initPage()V

    return-void
.end method

.method static synthetic access$200(Lcn/smssdk/gui/CountryPage;)Landroid/app/Activity;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcn/smssdk/gui/CountryPage;)Ljava/util/HashMap;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/smssdk/gui/CountryPage;->countryRules:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcn/smssdk/gui/CountryPage;)Lcn/smssdk/EventHandler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/smssdk/gui/CountryPage;->handler:Lcn/smssdk/EventHandler;

    return-object p0
.end method

.method static synthetic access$402(Lcn/smssdk/gui/CountryPage;Lcn/smssdk/EventHandler;)Lcn/smssdk/EventHandler;
    .locals 0

    .line 42
    iput-object p1, p0, Lcn/smssdk/gui/CountryPage;->handler:Lcn/smssdk/EventHandler;

    return-object p1
.end method

.method static synthetic access$500(Lcn/smssdk/gui/CountryPage;)Landroid/app/Dialog;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/smssdk/gui/CountryPage;->pd:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$600(Lcn/smssdk/gui/CountryPage;Ljava/util/ArrayList;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcn/smssdk/gui/CountryPage;->onCountryListGot(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$700(Lcn/smssdk/gui/CountryPage;)Landroid/app/Activity;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$800(Lcn/smssdk/gui/CountryPage;)Landroid/app/Activity;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$900(Lcn/smssdk/gui/CountryPage;)Landroid/app/Activity;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private afterPrepare()V
    .locals 1

    .line 76
    new-instance v0, Lcn/smssdk/gui/CountryPage$2;

    invoke-direct {v0, p0}, Lcn/smssdk/gui/CountryPage$2;-><init>(Lcn/smssdk/gui/CountryPage;)V

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/CountryPage;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initPage()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 164
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string v2, "ll_back"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "tv_title"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 167
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "smssdk_choose_country"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 169
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcn/smssdk/gui/CountryPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 172
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 173
    invoke-virtual {p0}, Lcn/smssdk/gui/CountryPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcn/smssdk/gui/CountryPage;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "smssdk_464646"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string v1, "clCountry"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 176
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/smssdk/gui/CountryListView;

    iput-object v0, p0, Lcn/smssdk/gui/CountryPage;->listView:Lcn/smssdk/gui/CountryListView;

    .line 177
    invoke-virtual {v0, p0}, Lcn/smssdk/gui/CountryListView;->setOnItemClickListener(Lcn/smssdk/gui/GroupListView$OnItemClickListener;)V

    .line 178
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->listView:Lcn/smssdk/gui/CountryListView;

    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/CountryListView;->setCurrentCountryId(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string v1, "et_put_identify"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 180
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/smssdk/gui/CountryPage;->etSearch:Landroid/widget/EditText;

    .line 181
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 182
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string v2, "iv_clear"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private onCountryListGot(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 190
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v1, "zone"

    .line 191
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "rule"

    .line 192
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    iget-object v2, p0, Lcn/smssdk/gui/CountryPage;->countryRules:Ljava/util/HashMap;

    if-nez v2, :cond_2

    .line 198
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcn/smssdk/gui/CountryPage;->countryRules:Ljava/util/HashMap;

    .line 200
    :cond_2
    iget-object v2, p0, Lcn/smssdk/gui/CountryPage;->countryRules:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 203
    :cond_3
    invoke-direct {p0}, Lcn/smssdk/gui/CountryPage;->initPage()V

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
    .locals 3

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 223
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string v1, "ll_back"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 224
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string v2, "iv_clear"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne p1, v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcn/smssdk/gui/CountryPage;->finish()V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 228
    iget-object p1, p0, Lcn/smssdk/gui/CountryPage;->etSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->pd:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->pd:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcn/smssdk/gui/CommonDialog;->ProgressDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/gui/CountryPage;->pd:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 68
    :cond_1
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    new-instance v1, Lcn/smssdk/gui/CountryPage$1;

    invoke-direct {v1, p0}, Lcn/smssdk/gui/CountryPage$1;-><init>(Lcn/smssdk/gui/CountryPage;)V

    invoke-static {v0, v1}, Lcn/smssdk/gui/SearchEngine;->prepare(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFinish()Z
    .locals 3

    .line 252
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->handler:Lcn/smssdk/EventHandler;

    invoke-static {v0}, Lcn/smssdk/SMSSDK;->unregisterEventHandler(Lcn/smssdk/EventHandler;)V

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "id"

    .line 255
    iget-object v2, p0, Lcn/smssdk/gui/CountryPage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 257
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "page"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-virtual {p0, v0}, Lcn/smssdk/gui/CountryPage;->setResult(Ljava/util/HashMap;)V

    .line 259
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onFinish()Z

    move-result v0

    return v0
.end method

.method public onItemClick(Lcn/smssdk/gui/GroupListView;Landroid/view/View;II)V
    .locals 0

    if-ltz p4, :cond_1

    .line 208
    iget-object p1, p0, Lcn/smssdk/gui/CountryPage;->listView:Lcn/smssdk/gui/CountryListView;

    invoke-virtual {p1, p3, p4}, Lcn/smssdk/gui/CountryListView;->getCountry(II)[Ljava/lang/String;

    move-result-object p1

    .line 209
    iget-object p2, p0, Lcn/smssdk/gui/CountryPage;->countryRules:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    aget-object p3, p1, p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 210
    aget-object p1, p1, p2

    iput-object p1, p0, Lcn/smssdk/gui/CountryPage;->id:Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Lcn/smssdk/gui/CountryPage;->finish()V

    goto :goto_0

    .line 213
    :cond_0
    iget-object p1, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string/jumbo p2, "smssdk_country_not_support_currently"

    invoke-static {p1, p2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    .line 215
    iget-object p2, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 234
    :try_start_0
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string v1, "llSearch"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 236
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    .line 237
    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 238
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string v1, "llTitle"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 240
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->etSearch:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    .line 245
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 247
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/mob/tools/FakeActivity;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 0

    .line 157
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 152
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onResume()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 267
    iget-object p2, p0, Lcn/smssdk/gui/CountryPage;->listView:Lcn/smssdk/gui/CountryListView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/smssdk/gui/CountryListView;->onSearch(Ljava/lang/String;)V

    return-void
.end method

.method public setCountryId(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcn/smssdk/gui/CountryPage;->id:Ljava/lang/String;

    return-void
.end method

.method public setCountryRuls(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcn/smssdk/gui/CountryPage;->countryRules:Ljava/util/HashMap;

    return-void
.end method
