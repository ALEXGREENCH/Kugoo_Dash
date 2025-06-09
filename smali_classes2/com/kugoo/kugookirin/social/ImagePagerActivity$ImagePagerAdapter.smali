.class Lcom/kugoo/kugookirin/social/ImagePagerActivity$ImagePagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "ImagePagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/ImagePagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagePagerAdapter"
.end annotation


# instance fields
.field public fileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/kugoo/kugookirin/social/ImagePagerActivity;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/ImagePagerActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity$ImagePagerAdapter;->this$0:Lcom/kugoo/kugookirin/social/ImagePagerActivity;

    .line 114
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 115
    iput-object p3, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity$ImagePagerAdapter;->fileList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity$ImagePagerAdapter;->fileList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ImagePagerActivity$ImagePagerAdapter;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 126
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->newInstance(Ljava/lang/String;)Lcom/kugoo/kugookirin/social/ImageDetailFragment;

    move-result-object p1

    return-object p1
.end method
