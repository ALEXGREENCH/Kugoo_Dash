.class Lcom/kugoo/kugookirin/social/PublishTopicActivity$2;
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

    .line 122
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/google/android/material/chip/ChipGroup;I)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    .line 125
    :goto_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$300(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "publishTopicActivity001"

    if-ge v1, v2, :cond_4

    .line 126
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$300(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2}, Lcom/google/android/material/chip/Chip;->getId()I

    move-result v2

    if-ne p2, v2, :cond_3

    .line 127
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$200(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)I

    move-result v2

    const/4 v4, 0x5

    if-ge v2, v4, :cond_2

    .line 129
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v4, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->chipGroupTop:Lcom/google/android/material/chip/ChipGroup;

    const v5, 0x7f0d00b0

    invoke-virtual {v2, v5, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0a02eb

    .line 130
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/chip/Chip;

    .line 131
    iget-object v4, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v4}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$400(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;

    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;->getContent()Ljava/lang/String;

    move-result-object v4

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "# "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v7}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$400(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;

    invoke-virtual {v7}, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v5, p2, 0xa

    .line 134
    invoke-virtual {v2, v5}, Lcom/google/android/material/chip/Chip;->setId(I)V

    .line 135
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "chipGroupBottom=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "chipGroupBottom"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v0

    .line 137
    :goto_1
    iget-object v8, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v8}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$100(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 138
    iget-object v8, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v8}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$100(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v8}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 139
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    return-void

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 144
    :cond_1
    iget-object v4, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v4}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$208(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)I

    .line 145
    iget-object v4, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v4}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$100(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v4, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v4}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v4, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    iget-object v4, v4, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->chipGroupTop:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v4, v2}, Lcom/google/android/material/chip/ChipGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 150
    :cond_2
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$2;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    const-string v4, "\u6700\u591a\u6dfb\u52a05\u4e2a"

    invoke-static {v2, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 152
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "pos=="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 155
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "id=="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipGroup;->getCheckedChipId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
