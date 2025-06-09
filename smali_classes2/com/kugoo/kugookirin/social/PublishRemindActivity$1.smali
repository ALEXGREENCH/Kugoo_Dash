.class Lcom/kugoo/kugookirin/social/PublishRemindActivity$1;
.super Ljava/lang/Object;
.source "PublishRemindActivity.java"

# interfaces
.implements Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$itemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/PublishRemindActivity;->setAllFollowAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selectBean(Lcom/kugoo/kugookirin/social/bean/RemindInfo;)V
    .locals 4

    const-string v0, "sasasasas"

    const-string v1, "onItemClick== add"

    .line 153
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    const v0, 0x7f120169

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_0
    const/4 v0, -0x1

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/social/bean/RemindInfo;

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-ltz v0, :cond_3

    .line 168
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :goto_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->top_select_tv:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/10"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$100(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;->notifyDataSetChanged()V

    :goto_2
    return-void
.end method
