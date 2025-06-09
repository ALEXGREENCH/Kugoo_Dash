.class Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$3;
.super Ljava/lang/Object;
.source "NewNfcActivity.java"

# interfaces
.implements Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$3;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(ILcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;I)V
    .locals 0

    if-nez p3, :cond_0

    .line 225
    iget-object p2, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$3;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {p2, p1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$100(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;I)V

    :cond_0
    return-void
.end method
