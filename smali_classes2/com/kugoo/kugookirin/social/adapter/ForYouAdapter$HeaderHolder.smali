.class public Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$HeaderHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ForYouAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderHolder"
.end annotation


# instance fields
.field private forYouSlPager:Lcom/kugoo/kugookirin/view/SobLooperPager;

.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Landroid/view/View;)V
    .locals 0

    .line 819
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$HeaderHolder;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    .line 820
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a025f

    .line 821
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/view/SobLooperPager;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$HeaderHolder;->forYouSlPager:Lcom/kugoo/kugookirin/view/SobLooperPager;

    return-void
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$HeaderHolder;)Lcom/kugoo/kugookirin/view/SobLooperPager;
    .locals 0

    .line 816
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$HeaderHolder;->forYouSlPager:Lcom/kugoo/kugookirin/view/SobLooperPager;

    return-object p0
.end method
