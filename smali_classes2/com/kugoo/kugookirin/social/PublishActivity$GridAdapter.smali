.class Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter;
.super Landroid/widget/BaseAdapter;
.source "PublishActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/PublishActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private listUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/kugoo/kugookirin/social/PublishActivity;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/PublishActivity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 761
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter;->this$0:Lcom/kugoo/kugookirin/social/PublishActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 762
    iput-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter;->listUrls:Ljava/util/ArrayList;

    .line 763
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter;->listUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 757
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter;->listUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 784
    new-instance p2, Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter$ViewHolder;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter$ViewHolder;-><init>(Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter;)V

    .line 785
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a02cb

    .line 786
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/view/GridImageView;

    iput-object v0, p2, Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter$ViewHolder;->image02:Lcom/kugoo/kugookirin/view/GridImageView;

    .line 787
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 789
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter$ViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 791
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter;->listUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "paizhao"

    .line 792
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    iget-object p1, p2, Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter$ViewHolder;->image02:Lcom/kugoo/kugookirin/view/GridImageView;

    const p2, 0x7f08010d

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/view/GridImageView;->setImageResource(I)V

    goto :goto_1

    .line 795
    :cond_1
    iget-object p2, p2, Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter$ViewHolder;->image02:Lcom/kugoo/kugookirin/view/GridImageView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/view/GridImageView;->setImageURI(Landroid/net/Uri;)V

    :goto_1
    return-object p3
.end method
