.class Lcom/kugoo/kugookirin/view/CircleProgressView$1;
.super Ljava/lang/Object;
.source "CircleProgressView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/view/CircleProgressView;->startAnimProgress(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/view/CircleProgressView;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/view/CircleProgressView;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/CircleProgressView$1;->this$0:Lcom/kugoo/kugookirin/view/CircleProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 146
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 147
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CircleProgressView$1;->this$0:Lcom/kugoo/kugookirin/view/CircleProgressView;

    invoke-static {v0}, Lcom/kugoo/kugookirin/view/CircleProgressView;->access$000(Lcom/kugoo/kugookirin/view/CircleProgressView;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CircleProgressView$1;->this$0:Lcom/kugoo/kugookirin/view/CircleProgressView;

    invoke-static {v0, p1}, Lcom/kugoo/kugookirin/view/CircleProgressView;->access$002(Lcom/kugoo/kugookirin/view/CircleProgressView;I)I

    .line 149
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CircleProgressView$1;->this$0:Lcom/kugoo/kugookirin/view/CircleProgressView;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/view/CircleProgressView;->setCurrent(I)V

    .line 150
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CircleProgressView$1;->this$0:Lcom/kugoo/kugookirin/view/CircleProgressView;

    invoke-static {v0}, Lcom/kugoo/kugookirin/view/CircleProgressView;->access$100(Lcom/kugoo/kugookirin/view/CircleProgressView;)Lcom/kugoo/kugookirin/view/CircleProgressView$OnAnimProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/CircleProgressView$1;->this$0:Lcom/kugoo/kugookirin/view/CircleProgressView;

    invoke-static {v0}, Lcom/kugoo/kugookirin/view/CircleProgressView;->access$100(Lcom/kugoo/kugookirin/view/CircleProgressView;)Lcom/kugoo/kugookirin/view/CircleProgressView$OnAnimProgressListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kugoo/kugookirin/view/CircleProgressView$OnAnimProgressListener;->valueUpdate(I)V

    :cond_0
    return-void
.end method
