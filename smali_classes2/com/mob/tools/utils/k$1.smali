.class Lcom/mob/tools/utils/k$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/k;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/k;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/k;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/mob/tools/utils/k$1;->a:Lcom/mob/tools/utils/k;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 36
    invoke-static {}, Lcom/mob/tools/utils/k;->a()Lcom/mob/tools/utils/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/k;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
