.class Lcom/kugoo/kugookirin/social/InfoHintActivity$1;
.super Ljava/lang/Object;
.source "InfoHintActivity.java"

# interfaces
.implements Lcom/kugoo/kugookirin/view/SwipeMenuView$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/InfoHintActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/InfoHintActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/InfoHintActivity;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity$1;->this$0:Lcom/kugoo/kugookirin/social/InfoHintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(ILcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;I)V
    .locals 1

    if-nez p3, :cond_0

    .line 135
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity$1;->this$0:Lcom/kugoo/kugookirin/social/InfoHintActivity;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/InfoHintActivity;->access$000(Lcom/kugoo/kugookirin/social/InfoHintActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kugoo/kugookirin/social/bean/HintInfoList$MessageList;

    .line 136
    iget-object p3, p0, Lcom/kugoo/kugookirin/social/InfoHintActivity$1;->this$0:Lcom/kugoo/kugookirin/social/InfoHintActivity;

    invoke-static {p3}, Lcom/kugoo/kugookirin/social/InfoHintActivity;->access$100(Lcom/kugoo/kugookirin/social/InfoHintActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/HintInfoList$MessageList;->getMid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, v0, p2, p1}, Lcom/kugoo/kugookirin/social/InfoHintActivity;->access$200(Lcom/kugoo/kugookirin/social/InfoHintActivity;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
