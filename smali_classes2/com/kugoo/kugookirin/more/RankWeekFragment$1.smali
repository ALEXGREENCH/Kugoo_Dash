.class Lcom/kugoo/kugookirin/more/RankWeekFragment$1;
.super Ljava/lang/Object;
.source "RankWeekFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/more/RankWeekFragment;->getPersonalData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kugoo/kugookirin/bean/RankInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/RankWeekFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/RankWeekFragment;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/RankWeekFragment$1;->this$0:Lcom/kugoo/kugookirin/more/RankWeekFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/bean/RankInfo;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/bean/RankInfo;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kugoo/kugookirin/bean/RankInfo;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/bean/RankInfo;

    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Week==>"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RANKINFO"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/RankInfo;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/RankInfo;->getResult()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 120
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/RankWeekFragment$1;->this$0:Lcom/kugoo/kugookirin/more/RankWeekFragment;

    invoke-static {p2}, Lcom/kugoo/kugookirin/more/RankWeekFragment;->access$000(Lcom/kugoo/kugookirin/more/RankWeekFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 121
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/RankInfo;->getResult()Ljava/util/List;

    move-result-object p2

    .line 122
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankWeekFragment$1;->this$0:Lcom/kugoo/kugookirin/more/RankWeekFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/more/RankWeekFragment;->access$000(Lcom/kugoo/kugookirin/more/RankWeekFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 124
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/RankWeekFragment$1;->this$0:Lcom/kugoo/kugookirin/more/RankWeekFragment;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/RankInfo;->getUser()Lcom/kugoo/kugookirin/bean/RankInfo$UserList;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/kugoo/kugookirin/more/RankWeekFragment;->access$102(Lcom/kugoo/kugookirin/more/RankWeekFragment;Lcom/kugoo/kugookirin/bean/RankInfo$UserList;)Lcom/kugoo/kugookirin/bean/RankInfo$UserList;

    .line 126
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/RankWeekFragment$1;->this$0:Lcom/kugoo/kugookirin/more/RankWeekFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/RankWeekFragment;->access$200(Lcom/kugoo/kugookirin/more/RankWeekFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x3f4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/RankWeekFragment$1;->this$0:Lcom/kugoo/kugookirin/more/RankWeekFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/more/RankWeekFragment;->top1Relate:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/RankWeekFragment$1;->this$0:Lcom/kugoo/kugookirin/more/RankWeekFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/more/RankWeekFragment;->no_rank_tv:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
