.class Lcom/kugoo/kugookirin/view/MapProgressView$1;
.super Ljava/lang/Object;
.source "MapProgressView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/view/MapProgressView;->startAnimProgress(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/view/MapProgressView;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/view/MapProgressView;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/MapProgressView$1;->this$0:Lcom/kugoo/kugookirin/view/MapProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 140
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 141
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/MapProgressView$1;->this$0:Lcom/kugoo/kugookirin/view/MapProgressView;

    invoke-static {v0}, Lcom/kugoo/kugookirin/view/MapProgressView;->access$000(Lcom/kugoo/kugookirin/view/MapProgressView;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/MapProgressView$1;->this$0:Lcom/kugoo/kugookirin/view/MapProgressView;

    invoke-static {v0, p1}, Lcom/kugoo/kugookirin/view/MapProgressView;->access$002(Lcom/kugoo/kugookirin/view/MapProgressView;I)I

    .line 143
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/MapProgressView$1;->this$0:Lcom/kugoo/kugookirin/view/MapProgressView;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/view/MapProgressView;->setCurrent(I)V

    .line 144
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/MapProgressView$1;->this$0:Lcom/kugoo/kugookirin/view/MapProgressView;

    invoke-static {v0}, Lcom/kugoo/kugookirin/view/MapProgressView;->access$100(Lcom/kugoo/kugookirin/view/MapProgressView;)Lcom/kugoo/kugookirin/view/MapProgressView$OnAnimProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/MapProgressView$1;->this$0:Lcom/kugoo/kugookirin/view/MapProgressView;

    invoke-static {v0}, Lcom/kugoo/kugookirin/view/MapProgressView;->access$100(Lcom/kugoo/kugookirin/view/MapProgressView;)Lcom/kugoo/kugookirin/view/MapProgressView$OnAnimProgressListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kugoo/kugookirin/view/MapProgressView$OnAnimProgressListener;->valueUpdate(I)V

    :cond_0
    return-void
.end method
