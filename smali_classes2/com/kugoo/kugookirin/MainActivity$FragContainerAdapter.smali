.class Lcom/kugoo/kugookirin/MainActivity$FragContainerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragContainerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/MainActivity;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/MainActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/kugoo/kugookirin/MainActivity$FragContainerAdapter;->this$0:Lcom/kugoo/kugookirin/MainActivity;

    .line 305
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity$FragContainerAdapter;->this$0:Lcom/kugoo/kugookirin/MainActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/MainActivity;->access$000(Lcom/kugoo/kugookirin/MainActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity$FragContainerAdapter;->this$0:Lcom/kugoo/kugookirin/MainActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/MainActivity;->access$100(Lcom/kugoo/kugookirin/MainActivity;)[Landroidx/fragment/app/Fragment;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity$FragContainerAdapter;->this$0:Lcom/kugoo/kugookirin/MainActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/MainActivity;->access$000(Lcom/kugoo/kugookirin/MainActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method
