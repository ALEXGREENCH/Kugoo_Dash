.class Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$6;
.super Ljava/lang/Object;
.source "SearchPostAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;

.field final synthetic val$finalPos:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;I)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$6;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$6;->val$finalPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 297
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$6;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$6;->val$finalPos:I

    const-string v1, "formerDynamic"

    invoke-static {p1, v0, v1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->access$1500(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;ILjava/lang/String;)V

    return-void
.end method
