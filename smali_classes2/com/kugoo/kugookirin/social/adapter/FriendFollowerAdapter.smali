.class public Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FriendFollowerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;",
            ">;"
        }
    .end annotation
.end field

.field private prefrence:Landroid/content/SharedPreferences;

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->mDataList:Ljava/util/ArrayList;

    .line 43
    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->mContext:Landroid/content/Context;

    .line 44
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->prefrence:Landroid/content/SharedPreferences;

    .line 45
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->userID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->mDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->userID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->postFollow(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private postFollow(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 125
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "all==  uid=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  fid=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   position=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "testFollow002"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "followUser"

    .line 127
    invoke-interface {v0, p1, p2, v1}, Lcom/kugoo/kugookirin/utils/NetLink;->postFollowUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 128
    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$3;

    invoke-direct {p2, p0, p3}, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$3;-><init>(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;I)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 34
    check-cast p1, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;I)V
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;

    .line 60
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;->getPortraitUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;->access$000(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;)Lcom/kugoo/kugookirin/view/CircleImageView;

    move-result-object v3

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getPortraitImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    .line 60
    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 62
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;->getIsattention()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;->access$100(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;->access$000(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;)Lcom/kugoo/kugookirin/view/CircleImageView;

    move-result-object v0

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$1;-><init>(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;I)V

    invoke-virtual {v0, v2}, Lcom/kugoo/kugookirin/view/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;->access$600(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;)Landroid/widget/Button;

    move-result-object v0

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$2;

    invoke-direct {v2, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$2;-><init>(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "Y"

    .line 89
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;->access$600(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;->access$600(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 95
    :goto_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;->access$600(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f12035e

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f12039c

    :goto_1
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;
    .locals 2

    .line 51
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00b3

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 53
    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;

    invoke-direct {p2, p0, p1}, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;-><init>(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;Landroid/view/View;)V

    return-object p2
.end method
