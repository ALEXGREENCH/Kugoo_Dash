.class Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;
.super Ljava/lang/Object;
.source "RemindAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemindHolder"
.end annotation


# instance fields
.field private checkImg:Landroid/widget/ImageView;

.field private itemLinear:Landroid/widget/LinearLayout;

.field private remindAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

.field private remindName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;


# direct methods
.method private constructor <init>(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->this$0:Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$1;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;-><init>(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->itemLinear:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$102(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->itemLinear:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->remindAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;Lcom/kugoo/kugookirin/view/CircleImageView;)Lcom/kugoo/kugookirin/view/CircleImageView;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->remindAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;)Landroid/widget/TextView;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->remindName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->remindName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->checkImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->checkImg:Landroid/widget/ImageView;

    return-object p1
.end method
