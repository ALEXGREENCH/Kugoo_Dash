.class Lcom/kugoo/kugookirin/social/PublishRemindActivity$2;
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

    .line 181
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selectBean(Lcom/kugoo/kugookirin/social/bean/RemindInfo;)V
    .locals 5

    const-string v0, "sasasasas"

    const-string v1, "onItemClick== add"

    .line 185
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    const v0, 0x7f120169

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    :cond_0
    move v0, v2

    .line 192
    :goto_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$200(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 193
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$200(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kugoo/kugookirin/social/bean/RemindInfo;

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$200(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/social/bean/RemindInfo;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->setChecked(Z)V

    goto :goto_1

    .line 195
    :cond_1
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$200(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kugoo/kugookirin/social/bean/RemindInfo;

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$200(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/social/bean/RemindInfo;

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->setChecked(Z)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "currentID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sasaasasa050"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 203
    :goto_2
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 204
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kugoo/kugookirin/social/bean/RemindInfo;

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "remove="

    .line 206
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    if-ltz v0, :cond_6

    .line 213
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 216
    :cond_6
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :goto_3
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$300(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;->notifyDataSetChanged()V

    .line 221
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->top_select_tv:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

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

    .line 222
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->access$100(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/adapter/RemindSelectedAdapter;->notifyDataSetChanged()V

    :goto_4
    return-void
.end method
