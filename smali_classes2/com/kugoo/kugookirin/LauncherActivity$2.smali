.class Lcom/kugoo/kugookirin/LauncherActivity$2;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/LauncherActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/LauncherActivity;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/kugoo/kugookirin/LauncherActivity$2;->this$0:Lcom/kugoo/kugookirin/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/kugoo/kugookirin/LauncherActivity$2;->this$0:Lcom/kugoo/kugookirin/LauncherActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/LauncherActivity;->access$100(Lcom/kugoo/kugookirin/LauncherActivity;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
