.class Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;
.super Ljava/lang/Object;
.source "PublishTopicActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/PublishTopicActivity;->postNewLabel(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kugoo/kugookirin/social/bean/AddLabelInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private isNewOne:Z

.field final synthetic this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

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
            "Lcom/kugoo/kugookirin/social/bean/AddLabelInfo;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kugoo/kugookirin/social/bean/AddLabelInfo;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kugoo/kugookirin/social/bean/AddLabelInfo;",
            ">;)V"
        }
    .end annotation

    .line 321
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo;

    if-nez p1, :cond_0

    return-void

    .line 326
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getStatus=="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "publishTopicActivity001"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 328
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo;->getLabelArr()Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$602(Lcom/kugoo/kugookirin/social/PublishTopicActivity;Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;)Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;

    const/4 p1, 0x1

    .line 329
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->isNewOne:Z

    .line 330
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$600(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;->getLabelId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    .line 331
    :goto_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$400(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 332
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$400(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    iput-boolean p2, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->isNewOne:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->isNewOne:Z

    if-eqz p1, :cond_3

    .line 340
    new-instance p1, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;

    invoke-direct {p1}, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;-><init>()V

    .line 341
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$600(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;->setContent(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$600(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;->getLabelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;->setId(Ljava/lang/String;)V

    const-string v0, ""

    .line 343
    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;->setNum(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/social/bean/LabelInfo$ResultList;->setUid(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$400(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "chipList01=\u65b0label=  id=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$600(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;->getLabelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "chipList01"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "data=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$600(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  id=="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    .line 350
    invoke-static {v0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$600(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;->getLabelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "publishTopicActivity002"

    .line 349
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$200(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_6

    .line 353
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    iget-object v0, v0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->chipGroupTop:Lcom/google/android/material/chip/ChipGroup;

    const v1, 0x7f0d00b0

    invoke-virtual {p1, v1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a02eb

    .line 354
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 355
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$600(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "# "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$400(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v2}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$600(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;->getLabelId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/google/android/material/chip/Chip;->setId(I)V

    .line 360
    :goto_2
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$100(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_5

    .line 361
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$100(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v1}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 368
    :cond_5
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$208(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)I

    .line 369
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$100(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/HashMap;

    move-result-object p2

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$400(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->access$600(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/social/bean/AddLabelInfo$LabelArrList;->getLabelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    iget-object p2, p2, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->chipGroupTop:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {p2, p1}, Lcom/google/android/material/chip/ChipGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 374
    :cond_6
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity$5;->this$0:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    const-string v0, "\u6700\u591a\u6dfb\u52a05\u4e2a"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_3
    return-void
.end method
