.class Lcom/kugoo/kugookirin/social/DiscoverFragment$3;
.super Ljava/lang/Object;
.source "DiscoverFragment.java"

# interfaces
.implements Lcom/kugoo/kugookirin/view/SobLooperPager$BindTitleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/DiscoverFragment;->setSlideshow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$3;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle(I)Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$3;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$200(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/bean/PagerItem;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/PagerItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
