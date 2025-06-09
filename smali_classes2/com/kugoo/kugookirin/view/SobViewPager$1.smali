.class Lcom/kugoo/kugookirin/view/SobViewPager$1;
.super Ljava/lang/Object;
.source "SobViewPager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/view/SobViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/view/SobViewPager;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/view/SobViewPager;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 39
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto/16 :goto_1

    .line 49
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v2, p0, Lcom/kugoo/kugookirin/view/SobViewPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-static {v2}, Lcom/kugoo/kugookirin/view/SobViewPager;->access$000(Lcom/kugoo/kugookirin/view/SobViewPager;)F

    move-result v2

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 50
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget-object v2, p0, Lcom/kugoo/kugookirin/view/SobViewPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-static {v2}, Lcom/kugoo/kugookirin/view/SobViewPager;->access$100(Lcom/kugoo/kugookirin/view/SobViewPager;)F

    move-result v2

    sub-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/kugoo/kugookirin/view/SobViewPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-static {v4}, Lcom/kugoo/kugookirin/view/SobViewPager;->access$200(Lcom/kugoo/kugookirin/view/SobViewPager;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 52
    iget-object v4, p0, Lcom/kugoo/kugookirin/view/SobViewPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobViewPager;

    const/high16 v5, 0x40a00000    # 5.0f

    cmpg-float p2, p2, v5

    if-gtz p2, :cond_1

    cmpg-float p1, p1, v5

    if-gtz p1, :cond_1

    const-wide/16 p1, 0x3e8

    cmp-long p1, v2, p1

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-static {v4, v1}, Lcom/kugoo/kugookirin/view/SobViewPager;->access$402(Lcom/kugoo/kugookirin/view/SobViewPager;Z)Z

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "is Click -- > "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kugoo/kugookirin/view/SobViewPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-static {p2}, Lcom/kugoo/kugookirin/view/SobViewPager;->access$400(Lcom/kugoo/kugookirin/view/SobViewPager;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SobViewPager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-static {p1}, Lcom/kugoo/kugookirin/view/SobViewPager;->access$400(Lcom/kugoo/kugookirin/view/SobViewPager;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-static {p1}, Lcom/kugoo/kugookirin/view/SobViewPager;->access$500(Lcom/kugoo/kugookirin/view/SobViewPager;)Lcom/kugoo/kugookirin/view/SobViewPager$OnPagerItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 55
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-static {p1}, Lcom/kugoo/kugookirin/view/SobViewPager;->access$500(Lcom/kugoo/kugookirin/view/SobViewPager;)Lcom/kugoo/kugookirin/view/SobViewPager$OnPagerItemClickListener;

    move-result-object p1

    iget-object p2, p0, Lcom/kugoo/kugookirin/view/SobViewPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/view/SobViewPager;->getCurrentItem()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/kugoo/kugookirin/view/SobViewPager$OnPagerItemClickListener;->onItemClick(I)V

    .line 57
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-static {p1}, Lcom/kugoo/kugookirin/view/SobViewPager;->access$600(Lcom/kugoo/kugookirin/view/SobViewPager;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 58
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-static {p1}, Lcom/kugoo/kugookirin/view/SobViewPager;->access$700(Lcom/kugoo/kugookirin/view/SobViewPager;)V

    goto :goto_1

    .line 42
    :cond_3
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {p1, v1}, Lcom/kugoo/kugookirin/view/SobViewPager;->access$002(Lcom/kugoo/kugookirin/view/SobViewPager;F)F

    .line 43
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/kugoo/kugookirin/view/SobViewPager;->access$102(Lcom/kugoo/kugookirin/view/SobViewPager;F)F

    .line 44
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/kugoo/kugookirin/view/SobViewPager;->access$202(Lcom/kugoo/kugookirin/view/SobViewPager;J)J

    .line 45
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager$1;->this$0:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-static {p1}, Lcom/kugoo/kugookirin/view/SobViewPager;->access$300(Lcom/kugoo/kugookirin/view/SobViewPager;)V

    :cond_4
    :goto_1
    return v0
.end method
