.class Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$6;
.super Ljava/lang/Object;
.source "DiscoverPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

.field final synthetic val$finalPos:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;I)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$6;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$6;->val$finalPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 303
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$6;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$6;->val$finalPos:I

    const-string v1, "formerDynamic"

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$1600(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;ILjava/lang/String;)V

    return-void
.end method
