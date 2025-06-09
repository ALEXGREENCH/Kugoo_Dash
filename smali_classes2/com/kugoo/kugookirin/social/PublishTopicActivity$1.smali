.class Lcom/kugoo/kugookirin/social/PublishTopicActivity$1;
.super Ljava/lang/Object;
.source "PublishTopicActivity.java"

# interfaces
.implements Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/PublishTopicActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/google/android/material/chip/ChipGroup;I)V
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chipGroupTop=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  size=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "publishTopicActivity001"

    .line 107
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p2, :cond_0

    .line 111
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 112
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$100(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 114
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$210(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)I

    .line 115
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$100(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    iget-object p2, p2, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->chipGroupTop:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {p2, p1}, Lcom/google/android/material/chip/ChipGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
