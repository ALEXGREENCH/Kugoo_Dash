.class public Lcn/smssdk/gui/ContactsPage;
.super Lcom/mob/tools/FakeActivity;
.source "ContactsPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/smssdk/gui/ContactsPage$OnUserInfoSubmitListener;
    }
.end annotation


# instance fields
.field private adapter:Lcn/smssdk/gui/ContactsAdapter;

.field private contactsInMobile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private etSearch:Landroid/widget/EditText;

.field private friendsInApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private handler:Lcn/smssdk/EventHandler;

.field private itemMaker:Lcn/smssdk/gui/ContactItemMaker;

.field private listView:Lcn/smssdk/gui/ContactsListView;

.field private llProfile:Landroid/widget/LinearLayout;

.field private onUserInfoSubmitListener:Lcn/smssdk/gui/ContactsPage$OnUserInfoSubmitListener;

.field private pd:Landroid/app/Dialog;

.field private tvBind:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/smssdk/gui/ContactsPage;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsPage;->afterPrepare()V

    return-void
.end method

.method static synthetic access$100(Lcn/smssdk/gui/ContactsPage;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/smssdk/gui/ContactsPage;->friendsInApp:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Activity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$102(Lcn/smssdk/gui/ContactsPage;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iput-object p1, p0, Lcn/smssdk/gui/ContactsPage;->friendsInApp:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Activity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Activity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/smssdk/gui/ContactsPage;)Landroid/widget/LinearLayout;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/smssdk/gui/ContactsPage;->llProfile:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Activity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/smssdk/gui/ContactsPage;)Lcn/smssdk/EventHandler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/smssdk/gui/ContactsPage;->handler:Lcn/smssdk/EventHandler;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/smssdk/gui/ContactsPage;)Lcn/smssdk/gui/ContactsAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/smssdk/gui/ContactsPage;->adapter:Lcn/smssdk/gui/ContactsAdapter;

    return-object p0
.end method

.method static synthetic access$1602(Lcn/smssdk/gui/ContactsPage;Lcn/smssdk/gui/ContactsAdapter;)Lcn/smssdk/gui/ContactsAdapter;
    .locals 0

    .line 44
    iput-object p1, p0, Lcn/smssdk/gui/ContactsPage;->adapter:Lcn/smssdk/gui/ContactsAdapter;

    return-object p1
.end method

.method static synthetic access$1700(Lcn/smssdk/gui/ContactsPage;)Lcn/smssdk/gui/ContactsListView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/smssdk/gui/ContactsPage;->listView:Lcn/smssdk/gui/ContactsListView;

    return-object p0
.end method

.method static synthetic access$1800(Lcn/smssdk/gui/ContactsPage;)Lcn/smssdk/gui/ContactItemMaker;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/smssdk/gui/ContactsPage;->itemMaker:Lcn/smssdk/gui/ContactItemMaker;

    return-object p0
.end method

.method static synthetic access$200(Lcn/smssdk/gui/ContactsPage;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/smssdk/gui/ContactsPage;->contactsInMobile:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$202(Lcn/smssdk/gui/ContactsPage;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iput-object p1, p0, Lcn/smssdk/gui/ContactsPage;->contactsInMobile:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Activity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$402(Lcn/smssdk/gui/ContactsPage;Lcn/smssdk/gui/ContactsPage$OnUserInfoSubmitListener;)Lcn/smssdk/gui/ContactsPage$OnUserInfoSubmitListener;
    .locals 0

    .line 44
    iput-object p1, p0, Lcn/smssdk/gui/ContactsPage;->onUserInfoSubmitListener:Lcn/smssdk/gui/ContactsPage$OnUserInfoSubmitListener;

    return-object p1
.end method

.method static synthetic access$500(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Activity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lcn/smssdk/gui/ContactsPage;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsPage;->initView()V

    return-void
.end method

.method static synthetic access$700(Lcn/smssdk/gui/ContactsPage;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsPage;->initData()V

    return-void
.end method

.method static synthetic access$800(Lcn/smssdk/gui/ContactsPage;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsPage;->refreshContactList()V

    return-void
.end method

.method static synthetic access$900(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Dialog;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/smssdk/gui/ContactsPage;->pd:Landroid/app/Dialog;

    return-object p0
.end method

.method private afterPrepare()V
    .locals 1

    .line 78
    new-instance v0, Lcn/smssdk/gui/ContactsPage$2;

    invoke-direct {v0, p0}, Lcn/smssdk/gui/ContactsPage$2;-><init>(Lcn/smssdk/gui/ContactsPage;)V

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/ContactsPage;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private bindProfile()V
    .locals 2

    .line 296
    new-instance v0, Lcn/smssdk/gui/RegisterPage;

    invoke-direct {v0}, Lcn/smssdk/gui/RegisterPage;-><init>()V

    .line 297
    new-instance v1, Lcn/smssdk/gui/ContactsPage$4;

    invoke-direct {v1, p0}, Lcn/smssdk/gui/ContactsPage$4;-><init>(Lcn/smssdk/gui/ContactsPage;)V

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/RegisterPage;->setRegisterCallback(Lcn/smssdk/EventHandler;)V

    .line 330
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/RegisterPage;->show(Landroid/content/Context;)V

    return-void
.end method

.method private initData()V
    .locals 1

    .line 141
    new-instance v0, Lcn/smssdk/gui/ContactsPage$3;

    invoke-direct {v0, p0}, Lcn/smssdk/gui/ContactsPage$3;-><init>(Lcn/smssdk/gui/ContactsPage;)V

    iput-object v0, p0, Lcn/smssdk/gui/ContactsPage;->handler:Lcn/smssdk/EventHandler;

    .line 205
    invoke-static {v0}, Lcn/smssdk/SMSSDK;->registerEventHandler(Lcn/smssdk/EventHandler;)V

    .line 207
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->friendsInApp:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 209
    invoke-static {v0}, Lcn/smssdk/SMSSDK;->getContacts(Z)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-static {}, Lcn/smssdk/SMSSDK;->getFriendsInApp()V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v2, "ll_profile"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/smssdk/gui/ContactsPage;->llProfile:Landroid/widget/LinearLayout;

    .line 123
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "tv_profile_rebind"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/smssdk/gui/ContactsPage;->tvBind:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v2, "clContact"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/smssdk/gui/ContactsListView;

    iput-object v0, p0, Lcn/smssdk/gui/ContactsPage;->listView:Lcn/smssdk/gui/ContactsListView;

    .line 126
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v2, "ll_back"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v2, "iv_clear"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->tvBind:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "tv_title"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 131
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "smssdk_search_contact"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v2, "et_put_identify"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/smssdk/gui/ContactsPage;->etSearch:Landroid/widget/EditText;

    .line 137
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private refreshContactList()V
    .locals 13

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage;->contactsInMobile:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "phones"

    const-string v4, "phone"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 340
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 341
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 342
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 343
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 344
    new-instance v6, Lcn/smssdk/gui/ContactEntry;

    invoke-direct {v6, v5, v2}, Lcn/smssdk/gui/ContactEntry;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 345
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 352
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 353
    iget-object v5, p0, Lcn/smssdk/gui/ContactsPage;->friendsInApp:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "contact"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 354
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    :goto_1
    if-ge v8, v2, :cond_2

    .line 357
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/smssdk/gui/ContactEntry;

    .line 358
    invoke-virtual {v11}, Lcn/smssdk/gui/ContactEntry;->getKey()Ljava/lang/String;

    move-result-object v12

    .line 359
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 360
    invoke-virtual {v11}, Lcn/smssdk/gui/ContactEntry;->getValue()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "fia"

    .line 361
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-virtual {v6}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 367
    :cond_4
    iput-object v1, p0, Lcn/smssdk/gui/ContactsPage;->friendsInApp:Ljava/util/ArrayList;

    .line 370
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 371
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/smssdk/gui/ContactEntry;

    .line 372
    invoke-virtual {v2}, Lcn/smssdk/gui/ContactEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 373
    invoke-virtual {v2}, Lcn/smssdk/gui/ContactEntry;->getValue()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    .line 376
    iget-object v6, p0, Lcn/smssdk/gui/ContactsPage;->friendsInApp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    .line 377
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 378
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v5, v8

    goto :goto_3

    :cond_7
    move v5, v9

    :goto_3
    if-eqz v5, :cond_5

    .line 384
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 388
    :cond_8
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->contactsInMobile:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 389
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->contactsInMobile:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 392
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->friendsInApp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 393
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_9

    .line 395
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 398
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_c

    .line 399
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_c

    .line 400
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 401
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 402
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 403
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 404
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 407
    :cond_b
    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string v5, "displayname"

    .line 412
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 417
    :cond_d
    new-instance v0, Lcn/smssdk/gui/ContactsPage$5;

    invoke-direct {v0, p0}, Lcn/smssdk/gui/ContactsPage$5;-><init>(Lcn/smssdk/gui/ContactsPage;)V

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/ContactsPage;->runOnUIThread(Ljava/lang/Runnable;)V

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
    .locals 4

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 281
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v1, "ll_back"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 282
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v2, "iv_clear"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 283
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string/jumbo v3, "tv_profile_rebind"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne p1, v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcn/smssdk/gui/ContactsPage;->finish()V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 288
    iget-object p1, p0, Lcn/smssdk/gui/ContactsPage;->etSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 290
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsPage;->bindProfile()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->pd:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->pd:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcn/smssdk/gui/CommonDialog;->ProgressDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/gui/ContactsPage;->pd:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 70
    :cond_1
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    new-instance v1, Lcn/smssdk/gui/ContactsPage$1;

    invoke-direct {v1, p0}, Lcn/smssdk/gui/ContactsPage$1;-><init>(Lcn/smssdk/gui/ContactsPage;)V

    invoke-static {v0, v1}, Lcn/smssdk/gui/SearchEngine;->prepare(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->handler:Lcn/smssdk/EventHandler;

    invoke-static {v0}, Lcn/smssdk/SMSSDK;->unregisterEventHandler(Lcn/smssdk/EventHandler;)V

    return-void
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 218
    :try_start_0
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v1, "llSearch"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 220
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    .line 221
    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 222
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v1, "llTitle"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 224
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->etSearch:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    .line 229
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 231
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/mob/tools/FakeActivity;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 0

    .line 107
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onPause()V

    return-void
.end method

.method public onResult(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 236
    invoke-super {p0, p1}, Lcom/mob/tools/FakeActivity;->onResult(Ljava/util/HashMap;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "res"

    .line 238
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 241
    iget-object p1, p0, Lcn/smssdk/gui/ContactsPage;->onUserInfoSubmitListener:Lcn/smssdk/gui/ContactsPage$OnUserInfoSubmitListener;

    if-eqz p1, :cond_0

    .line 242
    invoke-static {}, Lcn/smssdk/gui/util/GUISPDB;->getProfile()Lcn/smssdk/gui/entity/Profile;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/smssdk/gui/ContactsPage$OnUserInfoSubmitListener;->onSubmitted(Lcn/smssdk/gui/entity/Profile;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onResume()V

    .line 100
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->handler:Lcn/smssdk/EventHandler;

    if-eqz v0, :cond_0

    .line 101
    invoke-static {v0}, Lcn/smssdk/SMSSDK;->registerEventHandler(Lcn/smssdk/EventHandler;)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 256
    iget-object p2, p0, Lcn/smssdk/gui/ContactsPage;->adapter:Lcn/smssdk/gui/ContactsAdapter;

    if-eqz p2, :cond_0

    .line 257
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcn/smssdk/gui/ContactsAdapter;->search(Ljava/lang/String;)V

    .line 258
    iget-object p2, p0, Lcn/smssdk/gui/ContactsPage;->adapter:Lcn/smssdk/gui/ContactsAdapter;

    invoke-virtual {p2}, Lcn/smssdk/gui/ContactsAdapter;->notifyDataSetChanged()V

    .line 261
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 262
    iget-object p1, p0, Lcn/smssdk/gui/ContactsPage;->llProfile:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 264
    :cond_1
    iget-object p1, p0, Lcn/smssdk/gui/ContactsPage;->llProfile:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setOnUserInfoSubmitListener(Lcn/smssdk/gui/ContactsPage$OnUserInfoSubmitListener;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcn/smssdk/gui/ContactsPage;->onUserInfoSubmitListener:Lcn/smssdk/gui/ContactsPage$OnUserInfoSubmitListener;

    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 1

    .line 113
    new-instance v0, Lcn/smssdk/gui/DefaultContactViewItem;

    invoke-direct {v0}, Lcn/smssdk/gui/DefaultContactViewItem;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcn/smssdk/gui/ContactsPage;->show(Landroid/content/Context;Lcn/smssdk/gui/ContactItemMaker;)V

    return-void
.end method

.method public show(Landroid/content/Context;Lcn/smssdk/gui/ContactItemMaker;)V
    .locals 0

    .line 117
    iput-object p2, p0, Lcn/smssdk/gui/ContactsPage;->itemMaker:Lcn/smssdk/gui/ContactItemMaker;

    const/4 p2, 0x0

    .line 118
    invoke-super {p0, p1, p2}, Lcom/mob/tools/FakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
