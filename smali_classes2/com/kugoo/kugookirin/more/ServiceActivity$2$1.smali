.class Lcom/kugoo/kugookirin/more/ServiceActivity$2$1;
.super Ljava/lang/Object;
.source "ServiceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/more/ServiceActivity$2;->onResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kugoo/kugookirin/more/ServiceActivity$2;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/ServiceActivity$2;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/ServiceActivity$2$1;->this$1:Lcom/kugoo/kugookirin/more/ServiceActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity$2$1;->this$1:Lcom/kugoo/kugookirin/more/ServiceActivity$2;

    iget-object v0, v0, Lcom/kugoo/kugookirin/more/ServiceActivity$2;->this$0:Lcom/kugoo/kugookirin/more/ServiceActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kugoo/kugookirin/more/ServiceActivity;->access$000(Lcom/kugoo/kugookirin/more/ServiceActivity;Z)V

    return-void
.end method
