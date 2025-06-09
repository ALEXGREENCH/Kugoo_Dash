.class Lcom/kugoo/kugookirin/user/ChangeNameActivity$2;
.super Ljava/lang/Object;
.source "ChangeNameActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/ChangeNameActivity;->postName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/ChangeNameActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/ChangeNameActivity;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity$2;->this$0:Lcom/kugoo/kugookirin/user/ChangeNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 174
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity$2;->this$0:Lcom/kugoo/kugookirin/user/ChangeNameActivity;

    const v0, 0x7f120125

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
