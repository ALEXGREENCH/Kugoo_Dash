.class public Lcom/kugoo/kugookirin/social/FriendListActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FriendListActivity.java"


# instance fields
.field circleBarImage:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0102
    .end annotation
.end field

.field circleBarTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0103
    .end annotation
.end field

.field confirmPublishBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0142
    .end annotation
.end field

.field private friendFollowerAdapter:Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;

.field private friendOrFollow:Ljava/lang/String;

.field friendRv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a027f
    .end annotation
.end field

.field mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;",
            ">;"
        }
    .end annotation
.end field

.field no_follower_item:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0400
    .end annotation
.end field

.field private token:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "1"

    .line 48
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->friendOrFollow:Ljava/lang/String;

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->uid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/FriendListActivity;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->friendOrFollow:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/FriendListActivity;)Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->friendFollowerAdapter:Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;

    return-object p0
.end method

.method private getFriendData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 122
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->token:Ljava/lang/String;

    const-string v2, "followList"

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/kugoo/kugookirin/utils/NetLink;->getFriendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 124
    new-instance p2, Lcom/kugoo/kugookirin/social/FriendListActivity$1;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/social/FriendListActivity$1;-><init>(Lcom/kugoo/kugookirin/social/FriendListActivity;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initEvent()V
    .locals 3

    .line 82
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->token:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->mDataList:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->mDataList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0}, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->friendFollowerAdapter:Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;

    .line 85
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 87
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->friendRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 88
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->friendRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->friendFollowerAdapter:Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 98
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 99
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/FriendListActivity;->finish()V

    return-void
.end method

.method public onClick()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0102
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/FriendListActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002f

    .line 54
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/FriendListActivity;->setContentView(I)V

    .line 55
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 58
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/FriendListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "friendOrFollow"

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->friendOrFollow:Ljava/lang/String;

    const-string v1, "uid"

    .line 63
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->uid:Ljava/lang/String;

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "type=="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->friendOrFollow:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->friendOrFollow:Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->circleBarTitle:Landroid/widget/TextView;

    const v0, 0x7f120375

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/social/FriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->friendOrFollow:Ljava/lang/String;

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 72
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->circleBarTitle:Landroid/widget/TextView;

    const v0, 0x7f120172

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/social/FriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/FriendListActivity;->initEvent()V

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "token=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "friendListActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->uid:Ljava/lang/String;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/FriendListActivity;->friendOrFollow:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/social/FriendListActivity;->getFriendData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
