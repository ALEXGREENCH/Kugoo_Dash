.class Lcn/smssdk/gui/SmartVerifyPage$3;
.super Ljava/lang/Object;
.source "SmartVerifyPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/SmartVerifyPage;->afterSubmit(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/SmartVerifyPage;

.field final synthetic val$data:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/SmartVerifyPage;Ljava/lang/Object;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcn/smssdk/gui/SmartVerifyPage$3;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    iput-object p2, p0, Lcn/smssdk/gui/SmartVerifyPage$3;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage$3;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-static {v0}, Lcn/smssdk/gui/SmartVerifyPage;->access$1100(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage$3;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-static {v0}, Lcn/smssdk/gui/SmartVerifyPage;->access$1100(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage$3;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-static {v0}, Lcn/smssdk/gui/SmartVerifyPage;->access$1100(Lcn/smssdk/gui/SmartVerifyPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 164
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 165
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "res"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "page"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phone"

    .line 167
    iget-object v2, p0, Lcn/smssdk/gui/SmartVerifyPage$3;->val$data:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v1, p0, Lcn/smssdk/gui/SmartVerifyPage$3;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-virtual {v1, v0}, Lcn/smssdk/gui/SmartVerifyPage;->setResult(Ljava/util/HashMap;)V

    .line 169
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage$3;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-virtual {v0}, Lcn/smssdk/gui/SmartVerifyPage;->finish()V

    return-void
.end method
