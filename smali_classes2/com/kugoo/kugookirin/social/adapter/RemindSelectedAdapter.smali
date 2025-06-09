.class public Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RemindSelectedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter$avatarHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter$avatarHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private selectedAvatarData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/RemindInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/RemindInfo;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;->selectedAvatarData:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;->selectedAvatarData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter$avatarHolder;

    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter$avatarHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter$avatarHolder;I)V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;->selectedAvatarData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kugoo/kugookirin/social/bean/RemindInfo;

    .line 40
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->getPortraitUrl()Ljava/lang/String;

    move-result-object p2

    .line 42
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter$avatarHolder;->access$000(Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter$avatarHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;

    move-result-object p1

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getPortraitImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    .line 42
    invoke-virtual {v0, p2, p1, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter$avatarHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter$avatarHolder;
    .locals 2

    .line 33
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00bb

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 34
    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter$avatarHolder;

    invoke-direct {p2, p0, p1}, Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter$avatarHolder;-><init>(Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;Landroid/view/View;)V

    return-object p2
.end method
