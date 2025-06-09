.class Lcom/kugoo/kugookirin/vehicle/NfcActivity$3;
.super Ljava/lang/Object;
.source "NfcActivity.java"

# interfaces
.implements Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/NfcActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/NfcActivity;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$3;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(ILcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;I)V
    .locals 1

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    .line 232
    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$3;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    const-string p3, "+SCCARD=0"

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$100(Lcom/kugoo/kugookirin/vehicle/NfcActivity;Ljava/lang/String;I)V

    .line 233
    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/NfcActivity$3;->this$0:Lcom/kugoo/kugookirin/vehicle/NfcActivity;

    invoke-static {p2, p1}, Lcom/kugoo/kugookirin/vehicle/NfcActivity;->access$200(Lcom/kugoo/kugookirin/vehicle/NfcActivity;I)V

    :cond_0
    return-void
.end method
