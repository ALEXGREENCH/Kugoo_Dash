.class Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;
.super Ljava/lang/Object;
.source "TrackRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/more/TrackRecordActivity;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/TrackRecordActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 341
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->access$000(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)I

    move-result p1

    const/16 v0, 0x8

    const v1, 0x7f12036e

    const v2, 0x7f12035f

    if-nez p1, :cond_1

    .line 342
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->access$100(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)Lcom/kugoo/kugookirin/more/NaviFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/more/NaviFragment;->deleteData()V

    .line 343
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->access$100(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)Lcom/kugoo/kugookirin/more/NaviFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/more/NaviFragment;->getNavAdapterSize()I

    move-result p1

    if-nez p1, :cond_0

    .line 344
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->access$500(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)V

    .line 345
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tvRight:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-virtual {v2, v1}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tvRight:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 348
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tvRight:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-virtual {v0, v2}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 350
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->access$000(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 351
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->access$200(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)Lcom/kugoo/kugookirin/more/TrackFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->deleteData()V

    .line 352
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->access$200(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)Lcom/kugoo/kugookirin/more/TrackFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/more/TrackFragment;->getTrajAdapterSize()I

    move-result p1

    if-nez p1, :cond_2

    .line 353
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->access$500(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)V

    .line 354
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tvRight:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-virtual {v2, v1}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tvRight:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 357
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->tvRight:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-virtual {v0, v2}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$6;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
