.class Lcom/kugoo/kugookirin/more/ServiceActivity$1;
.super Ljava/lang/Object;
.source "ServiceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/more/ServiceActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/ServiceActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/ServiceActivity;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/ServiceActivity$1;->this$0:Lcom/kugoo/kugookirin/more/ServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity$1;->this$0:Lcom/kugoo/kugookirin/more/ServiceActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/more/ServiceActivity;->access$000(Lcom/kugoo/kugookirin/more/ServiceActivity;Z)V

    return-void
.end method
