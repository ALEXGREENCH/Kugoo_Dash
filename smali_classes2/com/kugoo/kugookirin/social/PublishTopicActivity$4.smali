.class Lcom/kugoo/kugookirin/social/PublishTopicActivity$4;
.super Landroid/os/Handler;
.source "PublishTopicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/PublishTopicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/PublishTopicActivity;Landroid/os/Looper;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$4;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 207
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 208
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    move v0, p1

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$4;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$400(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$4;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$4;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->chipGroupBottom:Lcom/google/android/material/chip/ChipGroup;

    const v3, 0x7f0d00b0

    invoke-virtual {v1, v3, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a02eb

    .line 211
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/chip/Chip;

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "# "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$4;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v3}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$400(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {v1, v0}, Lcom/google/android/material/chip/Chip;->setId(I)V

    .line 216
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$4;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$300(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$4;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    iget-object v2, v2, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->chipGroupBottom:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v2, v1}, Lcom/google/android/material/chip/ChipGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
