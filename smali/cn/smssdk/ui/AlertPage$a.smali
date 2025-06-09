.class Lcn/smssdk/ui/AlertPage$a;
.super Ljava/lang/Object;
.source "AlertPage.java"

# interfaces
.implements Lcn/smssdk/OnDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/ui/AlertPage;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/smssdk/ui/AlertPage;


# direct methods
.method constructor <init>(Lcn/smssdk/ui/AlertPage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/smssdk/ui/AlertPage$a;->a:Lcn/smssdk/ui/AlertPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgree()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/smssdk/ui/AlertPage$a;->a:Lcn/smssdk/ui/AlertPage;

    invoke-static {v0}, Lcn/smssdk/ui/AlertPage;->access$000(Lcn/smssdk/ui/AlertPage;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "res"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcn/smssdk/ui/AlertPage;->access$100()Lcn/smssdk/ui/AlertPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->finish()V

    return-void
.end method

.method public onDisagree()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/smssdk/ui/AlertPage$a;->a:Lcn/smssdk/ui/AlertPage;

    invoke-static {v0}, Lcn/smssdk/ui/AlertPage;->access$000(Lcn/smssdk/ui/AlertPage;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "res"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcn/smssdk/ui/AlertPage;->access$100()Lcn/smssdk/ui/AlertPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->finish()V

    return-void
.end method
