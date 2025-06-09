.class Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$3;
.super Ljava/lang/Object;
.source "InfoHintAdapter.java"

# interfaces
.implements Lcom/kugoo/kugookirin/view/NotificationMenuView$OnEditClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;I)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$3;->this$0:Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteClick()V
    .locals 4

    const-string v0, "noticeSlideMenu"

    const-string v1, "\u70b9\u51fb\u4e86\u5220\u9664"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$3;->this$0:Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;->access$300(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;)Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$onDealItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$3;->this$0:Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;->access$300(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;)Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$onDealItemListener;

    move-result-object v0

    iget v1, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$3;->val$position:I

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$3;->this$0:Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;

    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;->access$600(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$3;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kugoo/kugookirin/social/bean/HintInfoList$MessageList;

    invoke-virtual {v2}, Lcom/kugoo/kugookirin/social/bean/HintInfoList$MessageList;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$onDealItemListener;->deleteItem(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
