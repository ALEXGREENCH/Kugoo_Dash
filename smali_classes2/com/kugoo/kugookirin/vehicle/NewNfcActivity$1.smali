.class Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$1;
.super Ljava/lang/Object;
.source "NewNfcActivity.java"

# interfaces
.implements Lcom/kugoo/kugookirin/view/SwapRecyclerView$OnSwipeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->initEvent()V
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

    .line 185
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeEnd(I)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity$1;->this$0:Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;

    invoke-static {v0, p1}, Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;->access$002(Lcom/kugoo/kugookirin/vehicle/NewNfcActivity;I)I

    return-void
.end method

.method public onSwipeStart(I)V
    .locals 0

    return-void
.end method
