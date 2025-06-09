.class Lcom/kugoo/kugookirin/vehicle/NfcActivity$5;
.super Ljava/lang/Object;
.source "NfcActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/NfcActivity;->deleteNfcCardDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity;ILandroid/app/Dialog;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    iput p2, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$5;->val$position:I

    iput-object p3, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$5;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 259
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->recyclerView:Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$000(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->smoothCloseMenu(I)V

    .line 261
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$5;->val$position:I

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;

    .line 263
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;->getProof()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "E1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v6, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "D1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v6, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "C1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v6, v3

    goto :goto_0

    :sswitch_3
    const-string v0, "B1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v6, v4

    goto :goto_0

    :sswitch_4
    const-string v0, "A1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v6, v5

    :goto_0
    packed-switch v6, :pswitch_data_0

    move v1, v5

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x5

    goto :goto_1

    :pswitch_1
    move v1, v2

    goto :goto_1

    :pswitch_2
    move v1, v3

    goto :goto_1

    :pswitch_3
    move v1, v4

    .line 281
    :goto_1
    :pswitch_4
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 282
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$500(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 283
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->notifyDataSetChanged()V

    .line 285
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "+DELCARD="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$100(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/String;I)V

    .line 286
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    const-string v0, "+DELCARD=0"

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$100(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/String;I)V

    .line 287
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    const-string v0, "+SCCARD=1"

    const/16 v1, 0xc8

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$100(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/String;I)V

    .line 289
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 290
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$600(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/String;)V

    .line 291
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$700(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x810 -> :sswitch_4
        0x82f -> :sswitch_3
        0x84e -> :sswitch_2
        0x86d -> :sswitch_1
        0x88c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
