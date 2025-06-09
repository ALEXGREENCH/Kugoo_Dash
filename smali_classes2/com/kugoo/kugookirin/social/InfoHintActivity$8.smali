.class Lcom/kugoo/kugookirin/social/InfoHintActivity$8;
.super Ljava/lang/Object;
.source "InfoHintActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/InfoHintActivity;->getInfoHintList(Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kugoo/kugookirin/social/bean/HintInfoList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/InfoHintActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/InfoHintActivity;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity$8;->this$0:Lcom/kugoo/kugookirin/social/InfoHintActivity;

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
            "Lcom/kugoo/kugookirin/social/bean/HintInfoList;",
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
            "Lcom/kugoo/kugookirin/social/bean/HintInfoList;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kugoo/kugookirin/social/bean/HintInfoList;",
            ">;)V"
        }
    .end annotation

    .line 261
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/HintInfoList;

    if-nez p1, :cond_0

    return-void

    .line 265
    :cond_0
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/HintInfoList;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 266
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity$8;->this$0:Lcom/kugoo/kugookirin/social/InfoHintActivity;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/InfoHintActivity;->access$000(Lcom/kugoo/kugookirin/social/InfoHintActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 267
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/HintInfoList;->getMessageList()Ljava/util/List;

    move-result-object p1

    .line 268
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity$8;->this$0:Lcom/kugoo/kugookirin/social/InfoHintActivity;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/InfoHintActivity;->access$000(Lcom/kugoo/kugookirin/social/InfoHintActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 269
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-nez p1, :cond_1

    .line 270
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity$8;->this$0:Lcom/kugoo/kugookirin/social/InfoHintActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/InfoHintActivity;->messageContent:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 271
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity$8;->this$0:Lcom/kugoo/kugookirin/social/InfoHintActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/InfoHintActivity;->noDataView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 273
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity$8;->this$0:Lcom/kugoo/kugookirin/social/InfoHintActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/InfoHintActivity;->noDataView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 274
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity$8;->this$0:Lcom/kugoo/kugookirin/social/InfoHintActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/InfoHintActivity;->messageContent:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 276
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity$8;->this$0:Lcom/kugoo/kugookirin/social/InfoHintActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/InfoHintActivity;->access$300(Lcom/kugoo/kugookirin/social/InfoHintActivity;)Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
