.class Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$4;
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

.field final synthetic val$postBean:Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$4;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$4;->val$postBean:Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 202
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/*"

    .line 203
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$4;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->access$2100(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1201a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$4;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->access$2100(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120231

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$4;->val$postBean:Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$4;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->access$2100(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$4;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->access$2100(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120234

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
