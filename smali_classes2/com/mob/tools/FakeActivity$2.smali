.class Lcom/mob/tools/FakeActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/FakeActivity;->showActivity(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/mob/tools/FakeActivity;


# direct methods
.method constructor <init>(Lcom/mob/tools/FakeActivity;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/mob/tools/FakeActivity$2;->c:Lcom/mob/tools/FakeActivity;

    iput-object p2, p0, Lcom/mob/tools/FakeActivity$2;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/mob/tools/FakeActivity$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 1

    .line 241
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getTopActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 243
    iget-object p1, p0, Lcom/mob/tools/FakeActivity$2;->a:Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    iget-object p1, p0, Lcom/mob/tools/FakeActivity$2;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/mob/tools/FakeActivity$2;->a:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/FakeActivity$2;->a:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
