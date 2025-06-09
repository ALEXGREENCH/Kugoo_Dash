.class Lcn/smssdk/gui/IdentifyNumPage$6$1;
.super Ljava/lang/Object;
.source "IdentifyNumPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/IdentifyNumPage$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/smssdk/gui/IdentifyNumPage$6;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/IdentifyNumPage$6;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$6$1;->this$1:Lcn/smssdk/gui/IdentifyNumPage$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 334
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    .line 335
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "res"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 336
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$6$1;->this$1:Lcn/smssdk/gui/IdentifyNumPage$6;

    iget-object v0, v0, Lcn/smssdk/gui/IdentifyNumPage$6;->val$data:Ljava/lang/Object;

    const-string v1, "phone"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$6$1;->this$1:Lcn/smssdk/gui/IdentifyNumPage$6;

    iget-object v0, v0, Lcn/smssdk/gui/IdentifyNumPage$6;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-virtual {v0, p1}, Lcn/smssdk/gui/IdentifyNumPage;->setResult(Ljava/util/HashMap;)V

    .line 339
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$6$1;->this$1:Lcn/smssdk/gui/IdentifyNumPage$6;

    iget-object p1, p1, Lcn/smssdk/gui/IdentifyNumPage$6;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-virtual {p1}, Lcn/smssdk/gui/IdentifyNumPage;->finish()V

    return-void
.end method
