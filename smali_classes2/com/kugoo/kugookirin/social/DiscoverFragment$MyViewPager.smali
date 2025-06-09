.class Lcom/kugoo/kugookirin/social/DiscoverFragment$MyViewPager;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "DiscoverFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/DiscoverFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewPager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$MyViewPager;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    .line 437
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$MyViewPager;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$700(Lcom/kugoo/kugookirin/social/DiscoverFragment;)[Landroidx/fragment/app/Fragment;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$MyViewPager;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$700(Lcom/kugoo/kugookirin/social/DiscoverFragment;)[Landroidx/fragment/app/Fragment;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$MyViewPager;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->access$600(Lcom/kugoo/kugookirin/social/DiscoverFragment;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method
