.class Lcom/mob/tools/utils/ActivityTracker$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/ActivityTracker$EachTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/ActivityTracker;->b(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/mob/tools/utils/ActivityTracker;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/ActivityTracker;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/mob/tools/utils/ActivityTracker$8;->c:Lcom/mob/tools/utils/ActivityTracker;

    iput-object p2, p0, Lcom/mob/tools/utils/ActivityTracker$8;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/mob/tools/utils/ActivityTracker$8;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public each(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/mob/tools/utils/ActivityTracker$8;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mob/tools/utils/ActivityTracker$8;->b:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Lcom/mob/tools/utils/ActivityTracker$Tracker;->onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method
