.class Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$1;
.super Ljava/lang/Object;
.source "MessageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;I)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 93
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;->access$000(Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/HintInfoList$MessageList;

    .line 94
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/HintInfoList$MessageList;->getDynamicId()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/HintInfoList$MessageList;->getDynamicUid()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;

    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;->access$100(Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "dynamicID"

    .line 101
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dynamicUID"

    .line 102
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "infoBundler"

    .line 103
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 104
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;->access$100(Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
