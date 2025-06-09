.class Lcom/kugoo/kugookirin/view/SwipeMenuLayout$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SwipeMenuLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/view/SwipeMenuLayout;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout$1;->this$0:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout$1;->this$0:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->access$002(Lcom/kugoo/kugookirin/view/SwipeMenuLayout;Z)Z

    .line 69
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout$1;->this$0:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    invoke-static {v1}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->access$100(Lcom/kugoo/kugookirin/view/SwipeMenuLayout;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 75
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout$1;->this$0:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    invoke-static {v1}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->access$200(Lcom/kugoo/kugookirin/view/SwipeMenuLayout;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SwipeMenuLayout$1;->this$0:Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/view/SwipeMenuLayout;->access$002(Lcom/kugoo/kugookirin/view/SwipeMenuLayout;Z)Z

    .line 78
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method
