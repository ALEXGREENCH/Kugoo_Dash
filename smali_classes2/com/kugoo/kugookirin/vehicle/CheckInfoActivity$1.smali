.class Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;
.super Landroid/os/Handler;
.source "CheckInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;Landroid/os/Looper;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 164
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 165
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_2

    .line 166
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$012(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;I)I

    .line 167
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$000(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "current_time=="

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->progressRate:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$000(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->selfCheckCircleView:Lcom/kugoo/kugookirin/view/SelfCheckCircleView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$000(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/view/SelfCheckCircleView;->setProgress(I)V

    .line 170
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$000(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)I

    move-result p1

    const v0, 0x7f12005b

    if-gtz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->checkStartTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-virtual {v1, v0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$000(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)I

    move-result p1

    const/16 v1, 0x64

    if-ge p1, v1, :cond_1

    .line 173
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->checkStartTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    const v1, 0x7f12005c

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$000(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 176
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$100(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)V

    .line 177
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->checkStartTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-virtual {v1, v0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$002(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;I)I

    .line 179
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$202(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
