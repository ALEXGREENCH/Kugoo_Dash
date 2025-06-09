.class Lcn/smssdk/gui/IdentifyNumPage$3;
.super Ljava/lang/Object;
.source "IdentifyNumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/IdentifyNumPage;->countDown()V
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

    .line 180
    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$410(Lcn/smssdk/gui/IdentifyNumPage;)I

    .line 183
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$400(Lcn/smssdk/gui/IdentifyNumPage;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/smssdk/gui/IdentifyNumPage;->access$500(Lcn/smssdk/gui/IdentifyNumPage;I)V

    .line 184
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$400(Lcn/smssdk/gui/IdentifyNumPage;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcn/smssdk/gui/IdentifyNumPage;->access$402(Lcn/smssdk/gui/IdentifyNumPage;I)I

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$3;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Lcn/smssdk/gui/IdentifyNumPage;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method
