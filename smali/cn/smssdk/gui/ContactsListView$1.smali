.class Lcn/smssdk/gui/ContactsListView$1;
.super Ljava/lang/Object;
.source "ContactsListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/ContactsListView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/ContactsListView;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/ContactsListView;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/smssdk/gui/ContactsListView$1;->this$0:Lcn/smssdk/gui/ContactsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$1;->this$0:Lcn/smssdk/gui/ContactsListView;

    invoke-static {v0, p2}, Lcn/smssdk/gui/ContactsListView;->access$102(Lcn/smssdk/gui/ContactsListView;I)I

    .line 74
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$1;->this$0:Lcn/smssdk/gui/ContactsListView;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsListView;->access$200(Lcn/smssdk/gui/ContactsListView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$1;->this$0:Lcn/smssdk/gui/ContactsListView;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsListView;->access$300(Lcn/smssdk/gui/ContactsListView;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$1;->this$0:Lcn/smssdk/gui/ContactsListView;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsListView;->access$000(Lcn/smssdk/gui/ContactsListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$1;->this$0:Lcn/smssdk/gui/ContactsListView;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsListView;->access$000(Lcn/smssdk/gui/ContactsListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$1;->this$0:Lcn/smssdk/gui/ContactsListView;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsListView;->access$000(Lcn/smssdk/gui/ContactsListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView$1;->this$0:Lcn/smssdk/gui/ContactsListView;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsListView;->access$000(Lcn/smssdk/gui/ContactsListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method
