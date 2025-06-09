.class public Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SearchUserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final loginID:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mUserDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->mUserDataList:Ljava/util/List;

    .line 42
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->loginID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->mUserDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->loginID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->getUserData(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getUserData(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 121
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 122
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

    .line 123
    invoke-interface {v0, p1, p2, v1}, Lcom/kugoo/kugookirin/utils/NetLink;->postFollowUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 124
    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$3;

    invoke-direct {p2, p0, p3}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$3;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;I)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->mUserDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 33
    check-cast p1, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;

    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;I)V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->mUserDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "name=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  url=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;->getPortraitUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "size=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->mUserDataList:Ljava/util/List;

    .line 55
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "searchUserInfo=="

    .line 54
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;->access$000(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;->getPortraitUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;->access$100(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;

    move-result-object v3

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getPortraitImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    .line 57
    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 60
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;->getId()Ljava/lang/String;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->loginID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 63
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;->access$200(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 66
    :cond_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;->access$200(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 67
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;->getFollow()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;->access$200(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;)Landroid/widget/Button;

    move-result-object v1

    const-string v2, "Y"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f12035e

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f12039c

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;->access$200(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 73
    :goto_1
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;->access$200(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$1;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;->access$100(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;

    move-result-object p1

    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$2;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;I)V

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/view/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;
    .locals 2

    .line 47
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00b8

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 48
    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;

    invoke-direct {p2, p0, p1}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;Landroid/view/View;)V

    return-object p2
.end method
