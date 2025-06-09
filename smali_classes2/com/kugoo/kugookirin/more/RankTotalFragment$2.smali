.class Lcom/kugoo/kugookirin/more/RankTotalFragment$2;
.super Landroid/os/Handler;
.source "RankTotalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/more/RankTotalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/RankTotalFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/RankTotalFragment;Landroid/os/Looper;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/RankTotalFragment$2;->this$0:Lcom/kugoo/kugookirin/more/RankTotalFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 143
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 144
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3f5

    if-ne p1, v0, :cond_0

    .line 146
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/RankTotalFragment$2;->this$0:Lcom/kugoo/kugookirin/more/RankTotalFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/RankTotalFragment;->access$100(Lcom/kugoo/kugookirin/more/RankTotalFragment;)Lcom/kugoo/kugookirin/bean/RankInfo$UserList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/RankInfo$UserList;->getTol()Ljava/lang/String;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankTotalFragment$2;->this$0:Lcom/kugoo/kugookirin/more/RankTotalFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/more/RankTotalFragment;->access$100(Lcom/kugoo/kugookirin/more/RankTotalFragment;)Lcom/kugoo/kugookirin/bean/RankInfo$UserList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/RankInfo$UserList;->getNickName()Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/kugoo/kugookirin/more/RankTotalFragment$2;->this$0:Lcom/kugoo/kugookirin/more/RankTotalFragment;

    iget-object v1, v1, Lcom/kugoo/kugookirin/more/RankTotalFragment;->top1Name:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankTotalFragment$2;->this$0:Lcom/kugoo/kugookirin/more/RankTotalFragment;

    iget-object v0, v0, Lcom/kugoo/kugookirin/more/RankTotalFragment;->top1Dis:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " km"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/RankTotalFragment$2;->this$0:Lcom/kugoo/kugookirin/more/RankTotalFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/more/RankTotalFragment;->top1Tv:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/RankTotalFragment$2;->this$0:Lcom/kugoo/kugookirin/more/RankTotalFragment;

    const v2, 0x7f12039a

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/more/RankTotalFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/RankTotalFragment$2;->this$0:Lcom/kugoo/kugookirin/more/RankTotalFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/more/RankTotalFragment;->access$100(Lcom/kugoo/kugookirin/more/RankTotalFragment;)Lcom/kugoo/kugookirin/bean/RankInfo$UserList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/bean/RankInfo$UserList;->getRank()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/RankTotalFragment$2;->this$0:Lcom/kugoo/kugookirin/more/RankTotalFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/more/RankTotalFragment;->access$100(Lcom/kugoo/kugookirin/more/RankTotalFragment;)Lcom/kugoo/kugookirin/bean/RankInfo$UserList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/bean/RankInfo$UserList;->getPortraitUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/RankTotalFragment$2;->this$0:Lcom/kugoo/kugookirin/more/RankTotalFragment;

    iget-object v1, v1, Lcom/kugoo/kugookirin/more/RankTotalFragment;->top1PhotoIv:Lcom/kugoo/kugookirin/view/CircleImageView;

    .line 153
    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 152
    invoke-virtual {p1, v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 154
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/RankTotalFragment$2;->this$0:Lcom/kugoo/kugookirin/more/RankTotalFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/more/RankTotalFragment;->top1Relate:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 156
    new-instance p1, Lcom/kugoo/kugookirin/more/adapter/TotalRankAdapter;

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankTotalFragment$2;->this$0:Lcom/kugoo/kugookirin/more/RankTotalFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/more/RankTotalFragment;->access$000(Lcom/kugoo/kugookirin/more/RankTotalFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/RankTotalFragment$2;->this$0:Lcom/kugoo/kugookirin/more/RankTotalFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/more/RankTotalFragment;->access$300(Lcom/kugoo/kugookirin/more/RankTotalFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/kugoo/kugookirin/more/adapter/TotalRankAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 157
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankTotalFragment$2;->this$0:Lcom/kugoo/kugookirin/more/RankTotalFragment;

    iget-object v0, v0, Lcom/kugoo/kugookirin/more/RankTotalFragment;->TotalRankRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 159
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankTotalFragment$2;->this$0:Lcom/kugoo/kugookirin/more/RankTotalFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/more/RankTotalFragment;->access$300(Lcom/kugoo/kugookirin/more/RankTotalFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 160
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 161
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankTotalFragment$2;->this$0:Lcom/kugoo/kugookirin/more/RankTotalFragment;

    iget-object v0, v0, Lcom/kugoo/kugookirin/more/RankTotalFragment;->TotalRankRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_0
    return-void
.end method
