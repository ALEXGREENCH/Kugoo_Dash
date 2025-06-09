.class Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$3$1;
.super Ljava/lang/Object;
.source "DiscoverActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$3;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$3;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$3$1;->this$1:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$3$1;->this$1:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$3;

    iget-object v0, v0, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity$3;->this$0:Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;->access$200(Lcom/kugoo/kugookirin/bluetooth/DiscoverActivity;)V

    return-void
.end method
