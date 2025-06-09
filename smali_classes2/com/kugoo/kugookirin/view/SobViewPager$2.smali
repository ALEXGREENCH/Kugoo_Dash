.class Lcom/kugoo/kugookirin/view/SobViewPager$2;
.super Ljava/lang/Object;
.source "SobViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/view/SobViewPager;
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

    .line 100
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/SobViewPager$2;->this$0:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobViewPager$2;->this$0:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/SobViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 105
    iget-object v1, p0, Lcom/kugoo/kugookirin/view/SobViewPager$2;->this$0:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-virtual {v1, v0}, Lcom/kugoo/kugookirin/view/SobViewPager;->setCurrentItem(I)V

    .line 106
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/SobViewPager$2;->this$0:Lcom/kugoo/kugookirin/view/SobViewPager;

    invoke-static {v0}, Lcom/kugoo/kugookirin/view/SobViewPager;->access$800(Lcom/kugoo/kugookirin/view/SobViewPager;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/kugoo/kugookirin/view/SobViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
