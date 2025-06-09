.class Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;
.super Ljava/lang/Object;
.source "GpsInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InfoHolder"
.end annotation


# instance fields
.field private btnShowDetail:Landroid/widget/TextView;

.field private endLocTv:Landroid/widget/TextView;

.field private ivCheckBox:Landroid/widget/CheckBox;

.field private relaItem:Landroid/widget/LinearLayout;

.field private startLocTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

.field private tripDis:Landroid/widget/TextView;

.field private tripUnit:Landroid/widget/TextView;

.field private tvDate:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$1;)V
    .locals 0

    .line 254
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;)Landroid/widget/TextView;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;->startLocTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;->startLocTv:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;)Landroid/widget/TextView;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;->endLocTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;->endLocTv:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;)Landroid/widget/TextView;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;->tvDate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;->tvDate:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;)Landroid/widget/TextView;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;->btnShowDetail:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;->btnShowDetail:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;)Landroid/widget/TextView;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;->tripDis:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;->tripDis:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;)Landroid/widget/TextView;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;->tripUnit:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;->tripUnit:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;->relaItem:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$702(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;->relaItem:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$800(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;)Landroid/widget/CheckBox;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;->ivCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$802(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$InfoHolder;->ivCheckBox:Landroid/widget/CheckBox;

    return-object p1
.end method
