.class public Lcn/smssdk/gui/ContactDetailPage;
.super Lcom/mob/tools/FakeActivity;
.source "ContactDetailPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private phoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phoneName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneName:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcn/smssdk/gui/ContactDetailPage;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcn/smssdk/gui/ContactDetailPage;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcn/smssdk/gui/ContactDetailPage;->sendMsg(Ljava/lang/String;)V

    return-void
.end method

.method private sendMsg(Ljava/lang/String;)V
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "smsto:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 130
    iget-object p1, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string/jumbo v1, "smssdk_invite_content"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 132
    iget-object v1, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "sms_body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcn/smssdk/gui/ContactDetailPage;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {p0, v0}, Lcn/smssdk/gui/ContactDetailPage;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private showDialog()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 143
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    iget-object v2, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string/jumbo v3, "smssdk_invite_content"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 146
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :cond_0
    const/4 v2, 0x1

    .line 148
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 149
    iget-object v2, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string/jumbo v3, "smssdk_cancel"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 151
    new-instance v3, Lcn/smssdk/gui/ContactDetailPage$1;

    invoke-direct {v3, p0}, Lcn/smssdk/gui/ContactDetailPage$1;-><init>(Lcn/smssdk/gui/ContactDetailPage;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    :cond_1
    new-instance v2, Lcn/smssdk/gui/ContactDetailPage$2;

    invoke-direct {v2, p0}, Lcn/smssdk/gui/ContactDetailPage$2;-><init>(Lcn/smssdk/gui/ContactDetailPage;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 107
    iget-object v0, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string v1, "ll_back"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 108
    iget-object v1, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string v2, "btn_invite"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne p1, v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcn/smssdk/gui/ContactDetailPage;->finish()V

    goto :goto_1

    :cond_0
    if-ne p1, v1, :cond_3

    .line 113
    iget-object p1, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 114
    invoke-direct {p0}, Lcn/smssdk/gui/ContactDetailPage;->showDialog()V

    return-void

    .line 117
    :cond_1
    iget-object p1, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, ""

    .line 118
    :goto_0
    invoke-direct {p0, p1}, Lcn/smssdk/gui/ContactDetailPage;->sendMsg(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 39
    new-instance v0, Lcn/smssdk/gui/layout/ContactDetailPageLayout;

    iget-object v1, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/smssdk/gui/layout/ContactDetailPageLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v0}, Lcn/smssdk/gui/layout/ContactDetailPageLayout;->getLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v1, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 45
    iget-object v0, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string v2, "ll_back"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "tv_title"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    iget-object v1, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "smssdk_invite_friend"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 50
    iget-object v0, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "tv_contact_name"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    iget-object v1, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "tv_phone"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    iget-object v1, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string v4, "ll_phone2"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 58
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string/jumbo v4, "vw_divider2"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string/jumbo v3, "tv_phone2"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    iget-object v2, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string v2, "btn_invite"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 77
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 72
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onResume()V

    return-void
.end method

.method public setContact(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "displayname"

    .line 86
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "phone"

    const-string v3, "phones"

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneName:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneName:Ljava/lang/String;

    .line 95
    :cond_1
    :goto_0
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 97
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 98
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method
