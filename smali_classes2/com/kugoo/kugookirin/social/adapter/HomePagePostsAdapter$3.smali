.class Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$3;
.super Ljava/lang/Object;
.source "HomePagePostsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

.field final synthetic val$finalPos:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;I)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$3;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$3;->val$finalPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 190
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$3;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$3;->val$finalPos:I

    const-string v1, "currentDynamic"

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->access$1300(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;ILjava/lang/String;)V

    return-void
.end method
