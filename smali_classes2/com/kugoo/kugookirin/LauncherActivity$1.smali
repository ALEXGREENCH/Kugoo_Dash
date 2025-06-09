.class Lcom/kugoo/kugookirin/LauncherActivity$1;
.super Landroid/os/Handler;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/LauncherActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/kugoo/kugookirin/LauncherActivity$1;->this$0:Lcom/kugoo/kugookirin/LauncherActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/LauncherActivity$1;->this$0:Lcom/kugoo/kugookirin/LauncherActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/LauncherActivity;->access$000(Lcom/kugoo/kugookirin/LauncherActivity;)V

    .line 65
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
