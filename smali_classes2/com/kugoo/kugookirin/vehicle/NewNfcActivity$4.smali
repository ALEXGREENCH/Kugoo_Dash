.class Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$4;
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


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$4;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$4;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 242
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
