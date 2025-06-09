.class Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$3;
.super Ljava/util/TimerTask;
.source "CheckInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->startTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)V
    .locals 0

    .line 1255
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$3;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1258
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity$3;->this$0:Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;->access$1400(Lcom/kugoo/kugookirin/vehicle/CheckInfoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
