.class Lcom/mob/guard/MobGuard$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/mgs/OnIdChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/guard/MobGuard;->getGuardId(Lcom/mob/guard/OnIdChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/guard/OnIdChangeListener;


# direct methods
.method constructor <init>(Lcom/mob/guard/OnIdChangeListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/mob/guard/MobGuard$1;->a:Lcom/mob/guard/OnIdChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/mob/guard/MobGuard$1;->a:Lcom/mob/guard/OnIdChangeListener;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p1, p2}, Lcom/mob/guard/OnIdChangeListener;->onChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
