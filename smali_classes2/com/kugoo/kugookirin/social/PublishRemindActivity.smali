.class public Lcom/kugoo/kugookirin/social/PublishRemindActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PublishRemindActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final dynamicRemindCODE:I = 0x68


# instance fields
.field private SelectedTxt:Ljava/lang/String;

.field avatarRv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0081
    .end annotation
.end field

.field private dynamicLocCODE:I

.field imgTopBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02d3
    .end annotation
.end field

.field loadLinear:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0341
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private preferences:Landroid/content/SharedPreferences;

.field private remindAllAdapter:Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;

.field private remindAllList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/RemindInfo;",
            ">;"
        }
    .end annotation
.end field

.field remindLv:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a048e
    .end annotation
.end field

.field remindSearchEt:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0490
    .end annotation
.end field

.field remindSearchLinear:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0491
    .end annotation
.end field

.field private remindSelectedAdapter:Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;

.field private searchAdapter:Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;

.field private searchInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/RemindInfo;",
            ">;"
        }
    .end annotation
.end field

.field searchLv:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04cc
    .end annotation
.end field

.field search_img:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04c8
    .end annotation
.end field

.field private selectedID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPicUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedRemindList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/RemindInfo;",
            ">;"
        }
    .end annotation
.end field

.field private token:Ljava/lang/String;

.field top_select_tv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05a4
    .end annotation
.end field

.field top_tv_ok:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05a6
    .end annotation
.end field

.field txtTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05e8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/16 v0, 0x65

    .line 87
    iput v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->dynamicLocCODE:I

    const-string v0, ""

    .line 88
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->SelectedTxt:Ljava/lang/String;

    .line 243
    new-instance v0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity$3;-><init>(Lcom/kugoo/kugookirin/social/PublishRemindActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->selectedRemindList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->remindSelectedAdapter:Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->remindAllList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->remindAllAdapter:Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->setAllFollowAdapter()V

    return-void
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->searchInfoList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->searchAdapter:Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;

    return-object p0
.end method

.method private getAllRemindPerson(Ljava/lang/String;)V
    .locals 7

    .line 261
    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->USER_URL:Ljava/lang/String;

    .line 262
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "token"

    .line 263
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "content"

    const-string v0, ""

    .line 264
    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string v0, "Remind"

    .line 265
    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 266
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    new-instance p1, Lcom/kugoo/kugookirin/social/PublishRemindActivity$6;

    const/4 v2, 0x1

    new-instance v4, Lcom/kugoo/kugookirin/social/PublishRemindActivity$4;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity$4;-><init>(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)V

    new-instance v5, Lcom/kugoo/kugookirin/social/PublishRemindActivity$5;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity$5;-><init>(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/social/PublishRemindActivity$6;-><init>(Lcom/kugoo/kugookirin/social/PublishRemindActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 363
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private initEvent()V
    .locals 3

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->remindAllList:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->searchInfoList:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->selectedRemindList:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->selectedPicUrl:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->selectedID:Ljava/util/ArrayList;

    .line 121
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->preferences:Landroid/content/SharedPreferences;

    .line 122
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->token:Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->selectedRemindList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->remindSelectedAdapter:Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;

    .line 126
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 127
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 128
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->avatarRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 129
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->avatarRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->remindSelectedAdapter:Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 131
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->getAllRemindPerson(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f120137

    .line 134
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->remindSearchEt:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->txtTitle:Landroid/widget/TextView;

    const v1, 0x7f120352

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private searchRemind(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 372
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    const-string v1, "Remind"

    .line 373
    invoke-interface {v0, p1, p2, v1}, Lcom/kugoo/kugookirin/utils/NetLink;->getSearchRemind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 374
    new-instance p2, Lcom/kugoo/kugookirin/social/PublishRemindActivity$7;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity$7;-><init>(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private setAllFollowAdapter()V
    .locals 2

    .line 142
    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->remindAllList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->remindAllAdapter:Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;

    .line 143
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->remindLv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->searchInfoList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->searchAdapter:Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;

    .line 146
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->searchLv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->remindAllAdapter:Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;

    new-instance v1, Lcom/kugoo/kugookirin/social/PublishRemindActivity$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity$1;-><init>(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;->setOnItemSelectListener(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$itemSelectListener;)V

    .line 181
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->searchAdapter:Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;

    new-instance v1, Lcom/kugoo/kugookirin/social/PublishRemindActivity$2;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity$2;-><init>(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;->setOnItemSelectListener(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$itemSelectListener;)V

    return-void
.end method

.method private setLabelIntent()V
    .locals 3

    .line 452
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 453
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->selectedID:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "remindIDArray"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "remindPICArray"

    .line 454
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->selectedPicUrl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 v1, 0x68

    .line 455
    invoke-virtual {p0, v1, v0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->setResult(ILandroid/content/Intent;)V

    .line 456
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->finish()V

    return-void
.end method

.method private setLocTxtIntent(Ljava/lang/String;)V
    .locals 2

    .line 236
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "publishLocTxt"

    .line 237
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->dynamicLocCODE:I

    invoke-virtual {p0, p1, v0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->setResult(ILandroid/content/Intent;)V

    .line 239
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->finish()V

    return-void
.end method

.method private toRemindIDArray()V
    .locals 4

    .line 460
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->selectedID:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 461
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->selectedPicUrl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 462
    :goto_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->selectedRemindList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->selectedRemindList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/social/bean/RemindInfo;

    .line 464
    invoke-virtual {v1}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 465
    invoke-virtual {v1}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->getPortraitUrl()Ljava/lang/String;

    move-result-object v1

    .line 466
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->selectedID:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->selectedPicUrl:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "selectedID=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->selectedID:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sasasasa,"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "selectedPicUrl=="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->selectedPicUrl:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "string=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sasasasas"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 491
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->searchLv:Landroid/widget/ListView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 492
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->remindLv:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->token:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->searchRemind(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f120137

    .line 497
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 231
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 232
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->SelectedTxt:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->setLocTxtIntent(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a02d3,
            0x7f0a05a6,
            0x7f0a04c8
        }
    .end annotation

    .line 434
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02d3

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a04c8

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a05a6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->toRemindIDArray()V

    .line 441
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->setLabelIntent()V

    goto :goto_0

    .line 444
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->remindSearchLinear:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 445
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->search_img:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 436
    :cond_2
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0041

    .line 103
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->setContentView(I)V

    .line 104
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 106
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->initView()V

    .line 107
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->initEvent()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 427
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 428
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
