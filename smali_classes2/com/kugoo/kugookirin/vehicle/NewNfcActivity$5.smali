.class Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$5;
.super Ljava/lang/Object;
.source "NewNfcActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->deleteNfcCardDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;ILandroid/app/Dialog;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    iput p2, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$5;->val$position:I

    iput-object p3, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$5;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 249
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->recyclerView:Lcom/kugoo/kugookirin/view/SwapRecyclerView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$000(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/view/SwapRecyclerView;->smoothCloseMenu(I)V

    .line 251
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$5;->val$position:I

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;

    .line 253
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+RFDL="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;->getProof()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/String;I)V

    .line 255
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$400(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 256
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$500(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 257
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    const-string v0, "+RFRP=?"

    const/16 v1, 0x96

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$300(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/String;I)V

    .line 259
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 260
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$5;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$600(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Ljava/lang/String;)V

    return-void
.end method
