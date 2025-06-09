.class Lcom/kugoo/kugookirin/vehicle/StartupActivity$3;
.super Ljava/lang/Object;
.source "StartupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/StartupActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/StartupActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/StartupActivity;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity$3;->this$0:Lcom/kugoo/kugookirin/vehicle/StartupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity$3;->this$0:Lcom/kugoo/kugookirin/vehicle/StartupActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->access$402(Lcom/kugoo/kugookirin/vehicle/StartupActivity;Z)Z

    return-void
.end method
