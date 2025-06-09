.class Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$6;
.super Ljava/lang/Object;
.source "DiscoverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->requestPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$6;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$6;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 434
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$6;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 435
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$6;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->access$302(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;Z)Z

    return-void
.end method
