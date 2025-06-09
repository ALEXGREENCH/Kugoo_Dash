.class Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter$GridHolder;
.super Ljava/lang/Object;
.source "NoScrollGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridHolder"
.end annotation


# instance fields
.field private itemImageView:Lcom/kugoo/kugookirin/view/GridImageView;

.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter;


# direct methods
.method private constructor <init>(Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter$GridHolder;->this$0:Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter;Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter$1;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter$GridHolder;-><init>(Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter$GridHolder;)Lcom/kugoo/kugookirin/view/GridImageView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter$GridHolder;->itemImageView:Lcom/kugoo/kugookirin/view/GridImageView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter$GridHolder;Lcom/kugoo/kugookirin/view/GridImageView;)Lcom/kugoo/kugookirin/view/GridImageView;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter$GridHolder;->itemImageView:Lcom/kugoo/kugookirin/view/GridImageView;

    return-object p1
.end method
