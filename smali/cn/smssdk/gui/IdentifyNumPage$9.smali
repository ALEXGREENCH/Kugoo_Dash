.class Lcn/smssdk/gui/IdentifyNumPage$9;
.super Ljava/lang/Object;
.source "IdentifyNumPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/IdentifyNumPage;->showNotifyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/IdentifyNumPage;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/IdentifyNumPage;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$9;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 492
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$9;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {p1}, Lcn/smssdk/gui/IdentifyNumPage;->access$1100(Lcn/smssdk/gui/IdentifyNumPage;)V

    .line 493
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$9;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-virtual {p1}, Lcn/smssdk/gui/IdentifyNumPage;->finish()V

    return-void
.end method
