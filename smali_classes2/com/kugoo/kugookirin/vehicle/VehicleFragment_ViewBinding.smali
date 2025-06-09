.class public Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;
.super Ljava/lang/Object;
.source "VehicleFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

.field private view7f0a0057:Landroid/view/View;

.field private view7f0a0085:Landroid/view/View;

.field private view7f0a00c1:Landroid/view/View;

.field private view7f0a015f:Landroid/view/View;

.field private view7f0a0185:Landroid/view/View;

.field private view7f0a0191:Landroid/view/View;

.field private view7f0a0199:Landroid/view/View;

.field private view7f0a01a2:Landroid/view/View;

.field private view7f0a01a8:Landroid/view/View;

.field private view7f0a01aa:Landroid/view/View;

.field private view7f0a01b1:Landroid/view/View;

.field private view7f0a01b5:Landroid/view/View;

.field private view7f0a01d4:Landroid/view/View;

.field private view7f0a01ec:Landroid/view/View;

.field private view7f0a01ed:Landroid/view/View;

.field private view7f0a020c:Landroid/view/View;

.field private view7f0a024b:Landroid/view/View;

.field private view7f0a0287:Landroid/view/View;

.field private view7f0a028b:Landroid/view/View;

.field private view7f0a035d:Landroid/view/View;

.field private view7f0a035e:Landroid/view/View;

.field private view7f0a0364:Landroid/view/View;

.field private view7f0a036d:Landroid/view/View;

.field private view7f0a03e0:Landroid/view/View;

.field private view7f0a04f5:Landroid/view/View;

.field private view7f0a04f9:Landroid/view/View;

.field private view7f0a0565:Landroid/view/View;

.field private view7f0a0566:Landroid/view/View;

.field private view7f0a0570:Landroid/view/View;

.field private view7f0a0579:Landroid/view/View;

.field private view7f0a057a:Landroid/view/View;

.field private view7f0a05b1:Landroid/view/View;

.field private view7f0a05b3:Landroid/view/View;

.field private view7f0a0603:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/view/View;)V
    .locals 4

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const-string v0, "field \'mapBackBtn\' and method \'onClick\'"

    const v1, 0x7f0a0364

    .line 104
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mapBackBtn\'"

    .line 105
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapBackBtn:Landroid/widget/ImageView;

    .line 106
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0364:Landroid/view/View;

    .line 107
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'trackRecordBtn\' and method \'onClick\'"

    const v1, 0x7f0a05b1

    .line 113
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'trackRecordBtn\'"

    .line 114
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackRecordBtn:Landroid/widget/ImageView;

    .line 115
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a05b1:Landroid/view/View;

    .line 116
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'navigationBtn\' and method \'onClick\'"

    const v1, 0x7f0a03e0

    .line 122
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'navigationBtn\'"

    .line 123
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->navigationBtn:Landroid/widget/TextView;

    .line 124
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a03e0:Landroid/view/View;

    .line 125
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$3;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'gaodeMapLayout\'"

    .line 131
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0283

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gaodeMapLayout:Landroid/widget/RelativeLayout;

    const-string v0, "field \'googleMapLayout\'"

    .line 132
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a029a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMapLayout:Landroid/widget/RelativeLayout;

    const-string v0, "field \'trackingSpeedLayout\'"

    .line 133
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a05b5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackingSpeedLayout:Landroid/widget/LinearLayout;

    const-string v0, "field \'trackFunctionLayout\'"

    .line 134
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a05af

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackFunctionLayout:Landroid/widget/LinearLayout;

    const-string v0, "field \'startTrackBtn\' and method \'onClick\'"

    const v1, 0x7f0a036d

    .line 135
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'startTrackBtn\'"

    .line 136
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startTrackBtn:Landroid/widget/TextView;

    .line 137
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a036d:Landroid/view/View;

    .line 138
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$4;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mapBottomField\'"

    .line 144
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0366

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapBottomField:Landroid/widget/LinearLayout;

    const-string v0, "field \'exitNavigationBtn\' and method \'onClick\'"

    const v1, 0x7f0a020c

    .line 145
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'exitNavigationBtn\'"

    .line 146
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->exitNavigationBtn:Landroid/widget/TextView;

    .line 147
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a020c:Landroid/view/View;

    .line 148
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$5;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'continueFinishLinear\'"

    .line 154
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a014c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->continueFinishLinear:Landroid/widget/LinearLayout;

    const-string v0, "field \'navigationSpeedUnit\'"

    .line 155
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a03e4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->navigationSpeedUnit:Landroid/widget/TextView;

    const-string v0, "field \'navigationSpeed\'"

    .line 156
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a03e3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->navigationSpeed:Landroid/widget/TextView;

    const-string v0, "field \'trackingSpeed\'"

    .line 157
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05b4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackingSpeed:Landroid/widget/TextView;

    const-string v0, "field \'trackingSpeedUnit\'"

    .line 158
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05b6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackingSpeedUnit:Landroid/widget/TextView;

    const-string v0, "field \'detailSpeedUnit\'"

    .line 159
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01b9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSpeedUnit:Landroid/widget/TextView;

    const-string v0, "field \'detailSpeed\'"

    .line 160
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01b7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSpeed:Landroid/widget/TextView;

    const-string v0, "field \'detailTripUnit\'"

    .line 161
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01c1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailTripUnit:Landroid/widget/TextView;

    const-string v0, "field \'detailOdoUnit\'"

    .line 162
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01a7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailOdoUnit:Landroid/widget/TextView;

    const-string v0, "field \'detailTrip\'"

    .line 163
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01be

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailTrip:Landroid/widget/TextView;

    const-string v0, "field \'detailOdo\'"

    .line 164
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01a6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailOdo:Landroid/widget/TextView;

    const-string v0, "field \'mapTripTv\'"

    .line 165
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a036f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapTripTv:Landroid/widget/TextView;

    const-string v0, "field \'mapTripUnit\'"

    .line 166
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0370

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapTripUnit:Landroid/widget/TextView;

    const-string v0, "field \'mapTripTime\'"

    .line 167
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a036e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapTripTime:Landroid/widget/TextView;

    const-string v0, "field \'mapBattery\'"

    .line 168
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0365

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapBattery:Landroid/widget/TextView;

    const-string v0, "field \'mapOdo\'"

    .line 169
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0367

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapOdo:Landroid/widget/TextView;

    const-string v0, "field \'mapOdoUnit\'"

    .line 170
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0368

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapOdoUnit:Landroid/widget/TextView;

    const-string v0, "field \'trackingSign\' and method \'onClick\'"

    const v1, 0x7f0a05b3

    .line 171
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'trackingSign\'"

    .line 172
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackingSign:Landroid/widget/ImageView;

    .line 173
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a05b3:Landroid/view/View;

    .line 174
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$6;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'navigationTipsLayout\'"

    .line 180
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a03e5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->navigationTipsLayout:Landroid/widget/RelativeLayout;

    const-string v0, "field \'layoutMainMap\'"

    .line 181
    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0a0308

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->layoutMainMap:Landroid/widget/FrameLayout;

    const-string v0, "field \'layoutVehicleDetail\'"

    .line 182
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0306

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->layoutVehicleDetail:Landroid/widget/LinearLayout;

    const-string v0, "field \'detailRidingStatusLayout\' and method \'onClick\'"

    const v1, 0x7f0a01aa

    .line 183
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'detailRidingStatusLayout\'"

    .line 184
    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailRidingStatusLayout:Landroid/widget/LinearLayout;

    .line 185
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01aa:Landroid/view/View;

    .line 186
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$7;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mapUsingView\'"

    .line 192
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0371

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapUsingView:Landroid/widget/RelativeLayout;

    const-string v0, "field \'captureBottom\'"

    .line 193
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a00d5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->captureBottom:Landroid/widget/RelativeLayout;

    const-string v0, "field \'detailBattery\'"

    .line 194
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0183

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBattery:Landroid/widget/TextView;

    const-string v0, "field \'detailBatteryUnit\'"

    .line 195
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0184

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBatteryUnit:Landroid/widget/TextView;

    const-string v0, "field \'detailBlueStatus\'"

    .line 196
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0187

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBlueStatus:Landroid/widget/TextView;

    const-string v0, "field \'detailBlueIcon\' and method \'onClick\'"

    const v1, 0x7f0a0185

    .line 197
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'detailBlueIcon\'"

    .line 198
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBlueIcon:Landroid/widget/ImageView;

    .line 199
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0185:Landroid/view/View;

    .line 200
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$8;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'detailBlueName\'"

    .line 206
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0186

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBlueName:Landroid/widget/TextView;

    const-string v0, "field \'detailMapEntrance\'"

    .line 207
    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0a01a3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailMapEntrance:Landroid/widget/FrameLayout;

    const-string v0, "field \'layoutVehicleMain\'"

    .line 208
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0307

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->layoutVehicleMain:Landroid/widget/LinearLayout;

    const-string v0, "field \'vehicleMainSlPager\'"

    .line 209
    const-class v1, Lcom/kugoo/kugookirin/view/SobLooperPager;

    const v2, 0x7f0a05fd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/view/SobLooperPager;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleMainSlPager:Lcom/kugoo/kugookirin/view/SobLooperPager;

    const-string v0, "field \'detailSingleLightImg\'"

    .line 210
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01ae

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightImg:Landroid/widget/ImageView;

    const-string v0, "field \'detailSingleLockImg\'"

    .line 211
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01b2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockImg:Landroid/widget/ImageView;

    const-string v0, "field \'detailSingleLightSwitch\' and method \'onClick\'"

    const v1, 0x7f0a01b1

    .line 212
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'detailSingleLightSwitch\'"

    .line 213
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightSwitch:Landroid/widget/ImageView;

    .line 214
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01b1:Landroid/view/View;

    .line 215
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$9;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$9;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'detailSingleLockSwitch\' and method \'onClick\'"

    const v1, 0x7f0a01b5

    .line 221
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'detailSingleLockSwitch\'"

    .line 222
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockSwitch:Landroid/widget/ImageView;

    .line 223
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01b5:Landroid/view/View;

    .line 224
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$10;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$10;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'detailSingleLockStatus\'"

    .line 230
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01b4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockStatus:Landroid/widget/TextView;

    const-string v0, "field \'detailSingleLightStatus\'"

    .line 231
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01b0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightStatus:Landroid/widget/TextView;

    const-string v0, "field \'detailSingleLightLayout\'"

    .line 232
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a01af

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightLayout:Landroid/widget/LinearLayout;

    const-string v0, "field \'detailSingleLockLayout\'"

    .line 233
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a01b3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockLayout:Landroid/widget/LinearLayout;

    const-string v0, "field \'detailLightSwitch\' and method \'onClick\'"

    const v1, 0x7f0a0199

    .line 234
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'detailLightSwitch\'"

    .line 235
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightSwitch:Landroid/widget/ImageView;

    .line 236
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0199:Landroid/view/View;

    .line 237
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$11;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$11;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'detailLockSwitch\' and method \'onClick\'"

    const v1, 0x7f0a01a2

    .line 243
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'detailLockSwitch\'"

    .line 244
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockSwitch:Landroid/widget/ImageView;

    .line 245
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01a2:Landroid/view/View;

    .line 246
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$12;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$12;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'detailLockStatus\'"

    .line 252
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01a1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockStatus:Landroid/widget/TextView;

    const-string v0, "field \'detailLightStatus\'"

    .line 253
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0198

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightStatus:Landroid/widget/TextView;

    const-string v0, "field \'detailLightLayout\'"

    .line 254
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0197

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightLayout:Landroid/widget/LinearLayout;

    const-string v0, "field \'detailLockLayout\'"

    .line 255
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a01a0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockLayout:Landroid/widget/LinearLayout;

    const-string v0, "field \'detailLightImg\'"

    .line 256
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0196

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightImg:Landroid/widget/ImageView;

    const-string v0, "field \'detailLockImg\'"

    .line 257
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a019f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockImg:Landroid/widget/ImageView;

    const-string v0, "field \'detailVehicleImg\'"

    .line 258
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01c4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailVehicleImg:Landroid/widget/ImageView;

    const-string v0, "field \'mainGoBtn\' and method \'onClick\'"

    const v1, 0x7f0a035d

    .line 259
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mainGoBtn\'"

    .line 260
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mainGoBtn:Landroid/widget/TextView;

    .line 261
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a035d:Landroid/view/View;

    .line 262
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$13;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$13;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'detailGoBtn\' and method \'onClick\'"

    const v1, 0x7f0a0191

    .line 268
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'detailGoBtn\'"

    .line 269
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailGoBtn:Landroid/widget/TextView;

    .line 270
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0191:Landroid/view/View;

    .line 271
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$14;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$14;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'gearPlusIv\' and method \'onClick\'"

    const v1, 0x7f0a028b

    .line 277
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'gearPlusIv\'"

    .line 278
    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearPlusIv:Landroid/widget/Button;

    .line 279
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a028b:Landroid/view/View;

    .line 280
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$15;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$15;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'gearMinusIv\' and method \'onClick\'"

    const v1, 0x7f0a0287

    .line 286
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'gearMinusIv\'"

    .line 287
    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearMinusIv:Landroid/widget/Button;

    .line 288
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0287:Landroid/view/View;

    .line 289
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$16;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$16;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'detailGearBg\'"

    .line 295
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0190

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailGearBg:Landroid/widget/LinearLayout;

    const-string v0, "field \'btnSetting\' and method \'onClick\'"

    const v1, 0x7f0a00c1

    .line 296
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'btnSetting\'"

    .line 297
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->btnSetting:Landroid/widget/ImageView;

    .line 298
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a00c1:Landroid/view/View;

    .line 299
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$17;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$17;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'routeEt\'"

    .line 305
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a04ae

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->routeEt:Landroid/widget/EditText;

    const-string v0, "field \'noneVehicleLayout\'"

    .line 306
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a040a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->noneVehicleLayout:Landroid/widget/RelativeLayout;

    const-string v0, "field \'detailGear\'"

    .line 307
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a018f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailGear:Landroid/widget/TextView;

    const-string v0, "field \'searchResult\'"

    .line 308
    const-class v1, Landroid/widget/ListView;

    const v2, 0x7f0a04cf

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->searchResult:Landroid/widget/ListView;

    const-string v0, "field \'afterDis\'"

    .line 309
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a005a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->afterDis:Landroid/widget/TextView;

    const-string v0, "field \'nextDirection\'"

    .line 310
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a03f3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nextDirection:Landroid/widget/ImageView;

    const-string v0, "field \'vehicle_user_avatar\' and method \'onClick\'"

    const v1, 0x7f0a0603

    .line 311
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'vehicle_user_avatar\'"

    .line 312
    const-class v3, Lcom/kugoo/kugookirin/view/CircleImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/view/CircleImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicle_user_avatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    .line 313
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0603:Landroid/view/View;

    .line 314
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$18;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$18;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'vehicle_username\'"

    .line 320
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0605

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicle_username:Landroid/widget/TextView;

    const-string v0, "field \'vehicle_user_profile\'"

    .line 321
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0604

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicle_user_profile:Landroid/widget/TextView;

    const-string v0, "field \'vehicle_riding_time\'"

    .line 322
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05ff

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicle_riding_time:Landroid/widget/TextView;

    const-string v0, "field \'riding_time\'"

    .line 323
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04a2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->riding_time:Landroid/widget/TextView;

    const-string v0, "field \'progress_Linear\'"

    .line 324
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a045f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->progress_Linear:Landroid/widget/LinearLayout;

    const-string v0, "field \'shareLinear\'"

    .line 325
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a04f7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->shareLinear:Landroid/widget/LinearLayout;

    const-string v0, "field \'screenCap\'"

    .line 326
    const-class v1, Lcom/kugoo/kugookirin/view/CornerImageView;

    const v2, 0x7f0a04bb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/view/CornerImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->screenCap:Lcom/kugoo/kugookirin/view/CornerImageView;

    const-string v0, "field \'sharePhotoIv\'"

    .line 327
    const-class v1, Lcom/kugoo/kugookirin/view/CircleImageView;

    const v2, 0x7f0a01c2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/view/CircleImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->sharePhotoIv:Lcom/kugoo/kugookirin/view/CircleImageView;

    const-string v0, "field \'shareNameTv\'"

    .line 328
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01c3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->shareNameTv:Landroid/widget/TextView;

    const-string v0, "field \'itemTripDis\'"

    .line 329
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01bf

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->itemTripDis:Landroid/widget/TextView;

    const-string v0, "field \'itemMaxSpeed\'"

    .line 330
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01a4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->itemMaxSpeed:Landroid/widget/TextView;

    const-string v0, "field \'itemAvgSpeed\'"

    .line 331
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0182

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->itemAvgSpeed:Landroid/widget/TextView;

    const-string v0, "field \'itemTripTime\'"

    .line 332
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01c0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->itemTripTime:Landroid/widget/TextView;

    const-string v0, "field \'startLocTv\'"

    .line 333
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01ba

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startLocTv:Landroid/widget/TextView;

    const-string v0, "field \'endLocTv\'"

    .line 334
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a018e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->endLocTv:Landroid/widget/TextView;

    const-string v0, "field \'curPos\' and method \'onClick\'"

    const v1, 0x7f0a015f

    .line 335
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'curPos\'"

    .line 336
    const-class v3, Landroid/widget/ImageButton;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->curPos:Landroid/widget/ImageButton;

    .line 337
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a015f:Landroid/view/View;

    .line 338
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$19;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$19;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'start_riding_layout\'"

    .line 344
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0546

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->start_riding_layout:Landroid/widget/LinearLayout;

    const-string v0, "field \'vehicle_riding_status\'"

    .line 345
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05fe

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicle_riding_status:Landroid/widget/TextView;

    const-string v0, "field \'test_type\'"

    .line 346
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a057b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_type:Landroid/widget/TextView;

    const-string v0, "field \'test_imoo\'"

    .line 347
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a056e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_imoo:Landroid/widget/TextView;

    const-string v0, "field \'test_receive\'"

    .line 348
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0575

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_receive:Landroid/widget/TextView;

    const-string v0, "field \'test_receive_1\'"

    .line 349
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0576

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_receive_1:Landroid/widget/TextView;

    const-string v0, "field \'test_receive_2\'"

    .line 350
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0577

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_receive_2:Landroid/widget/TextView;

    const-string v0, "field \'test_receive_3\'"

    .line 351
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0578

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_receive_3:Landroid/widget/TextView;

    const-string v0, "field \'test_flag\'"

    .line 352
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a056d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_flag:Landroid/widget/TextView;

    const-string v0, "field \'vehicleListRv\'"

    .line 353
    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0a05fb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleListRv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "field \'test_input\'"

    .line 354
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a056f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_input:Landroid/widget/EditText;

    const-string v0, "field \'test_send\' and method \'onClick\'"

    const v1, 0x7f0a057a

    .line 355
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'test_send\'"

    .line 356
    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_send:Landroid/widget/Button;

    .line 357
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a057a:Landroid/view/View;

    .line 358
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$20;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$20;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'longJing\'"

    .line 364
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0356

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->longJing:Landroid/widget/TextView;

    const-string v0, "field \'longWei\'"

    .line 365
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0357

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->longWei:Landroid/widget/TextView;

    const-string v0, "field \'locChange\'"

    .line 366
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0343

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->locChange:Landroid/widget/TextView;

    const-string v0, "field \'other_data\'"

    .line 367
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0424

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->other_data:Landroid/widget/TextView;

    const-string v0, "field \'detailDriveLayout\'"

    .line 368
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a018c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailDriveLayout:Landroid/widget/LinearLayout;

    const-string v0, "field \'driveD\' and method \'onClick\'"

    const v1, 0x7f0a01ec

    .line 369
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'driveD\'"

    .line 370
    const-class v3, Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->driveD:Landroidx/appcompat/widget/AppCompatButton;

    .line 371
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01ec:Landroid/view/View;

    .line 372
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$21;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$21;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01ed

    const-string v1, "field \'driveS\' and method \'onClick\'"

    .line 378
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v1, "field \'driveS\'"

    .line 379
    const-class v2, Landroidx/appcompat/widget/AppCompatButton;

    const v3, 0x7f0a01ed

    invoke-static {v0, v3, v1, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->driveS:Landroidx/appcompat/widget/AppCompatButton;

    .line 380
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01ed:Landroid/view/View;

    .line 381
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$22;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$22;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01d4

    const-string v1, "method \'onClick\'"

    .line 387
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 388
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01d4:Landroid/view/View;

    .line 389
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$23;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$23;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a035e

    .line 395
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 396
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a035e:Landroid/view/View;

    .line 397
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$24;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$24;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01a8

    .line 403
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 404
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01a8:Landroid/view/View;

    .line 405
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$25;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$25;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a024b

    .line 411
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 412
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a024b:Landroid/view/View;

    .line 413
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$26;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$26;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04f9

    .line 419
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 420
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a04f9:Landroid/view/View;

    .line 421
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$27;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$27;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04f5

    .line 427
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 428
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a04f5:Landroid/view/View;

    .line 429
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$28;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$28;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0085

    .line 435
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 436
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0085:Landroid/view/View;

    .line 437
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$29;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$29;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0565

    .line 443
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 444
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0565:Landroid/view/View;

    .line 445
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$30;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$30;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0566

    .line 451
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 452
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0566:Landroid/view/View;

    .line 453
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$31;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$31;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0579

    .line 459
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 460
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0579:Landroid/view/View;

    .line 461
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$32;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$32;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0570

    .line 467
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 468
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0570:Landroid/view/View;

    .line 469
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$33;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$33;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0057

    .line 475
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 476
    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0057:Landroid/view/View;

    .line 477
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$34;

    invoke-direct {v0, p0, p1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding$34;-><init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 490
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    .line 492
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapBackBtn:Landroid/widget/ImageView;

    .line 493
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackRecordBtn:Landroid/widget/ImageView;

    .line 494
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->navigationBtn:Landroid/widget/TextView;

    .line 495
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gaodeMapLayout:Landroid/widget/RelativeLayout;

    .line 496
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->googleMapLayout:Landroid/widget/RelativeLayout;

    .line 497
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackingSpeedLayout:Landroid/widget/LinearLayout;

    .line 498
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackFunctionLayout:Landroid/widget/LinearLayout;

    .line 499
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startTrackBtn:Landroid/widget/TextView;

    .line 500
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapBottomField:Landroid/widget/LinearLayout;

    .line 501
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->exitNavigationBtn:Landroid/widget/TextView;

    .line 502
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->continueFinishLinear:Landroid/widget/LinearLayout;

    .line 503
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->navigationSpeedUnit:Landroid/widget/TextView;

    .line 504
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->navigationSpeed:Landroid/widget/TextView;

    .line 505
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackingSpeed:Landroid/widget/TextView;

    .line 506
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackingSpeedUnit:Landroid/widget/TextView;

    .line 507
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSpeedUnit:Landroid/widget/TextView;

    .line 508
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSpeed:Landroid/widget/TextView;

    .line 509
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailTripUnit:Landroid/widget/TextView;

    .line 510
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailOdoUnit:Landroid/widget/TextView;

    .line 511
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailTrip:Landroid/widget/TextView;

    .line 512
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailOdo:Landroid/widget/TextView;

    .line 513
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapTripTv:Landroid/widget/TextView;

    .line 514
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapTripUnit:Landroid/widget/TextView;

    .line 515
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapTripTime:Landroid/widget/TextView;

    .line 516
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapBattery:Landroid/widget/TextView;

    .line 517
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapOdo:Landroid/widget/TextView;

    .line 518
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapOdoUnit:Landroid/widget/TextView;

    .line 519
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->trackingSign:Landroid/widget/ImageView;

    .line 520
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->navigationTipsLayout:Landroid/widget/RelativeLayout;

    .line 521
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->layoutMainMap:Landroid/widget/FrameLayout;

    .line 522
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->layoutVehicleDetail:Landroid/widget/LinearLayout;

    .line 523
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailRidingStatusLayout:Landroid/widget/LinearLayout;

    .line 524
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapUsingView:Landroid/widget/RelativeLayout;

    .line 525
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->captureBottom:Landroid/widget/RelativeLayout;

    .line 526
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBattery:Landroid/widget/TextView;

    .line 527
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBatteryUnit:Landroid/widget/TextView;

    .line 528
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBlueStatus:Landroid/widget/TextView;

    .line 529
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBlueIcon:Landroid/widget/ImageView;

    .line 530
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailBlueName:Landroid/widget/TextView;

    .line 531
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailMapEntrance:Landroid/widget/FrameLayout;

    .line 532
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->layoutVehicleMain:Landroid/widget/LinearLayout;

    .line 533
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleMainSlPager:Lcom/kugoo/kugookirin/view/SobLooperPager;

    .line 534
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightImg:Landroid/widget/ImageView;

    .line 535
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockImg:Landroid/widget/ImageView;

    .line 536
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightSwitch:Landroid/widget/ImageView;

    .line 537
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockSwitch:Landroid/widget/ImageView;

    .line 538
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockStatus:Landroid/widget/TextView;

    .line 539
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightStatus:Landroid/widget/TextView;

    .line 540
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLightLayout:Landroid/widget/LinearLayout;

    .line 541
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailSingleLockLayout:Landroid/widget/LinearLayout;

    .line 542
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightSwitch:Landroid/widget/ImageView;

    .line 543
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockSwitch:Landroid/widget/ImageView;

    .line 544
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockStatus:Landroid/widget/TextView;

    .line 545
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightStatus:Landroid/widget/TextView;

    .line 546
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightLayout:Landroid/widget/LinearLayout;

    .line 547
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockLayout:Landroid/widget/LinearLayout;

    .line 548
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLightImg:Landroid/widget/ImageView;

    .line 549
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailLockImg:Landroid/widget/ImageView;

    .line 550
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailVehicleImg:Landroid/widget/ImageView;

    .line 551
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mainGoBtn:Landroid/widget/TextView;

    .line 552
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailGoBtn:Landroid/widget/TextView;

    .line 553
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearPlusIv:Landroid/widget/Button;

    .line 554
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->gearMinusIv:Landroid/widget/Button;

    .line 555
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailGearBg:Landroid/widget/LinearLayout;

    .line 556
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->btnSetting:Landroid/widget/ImageView;

    .line 557
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->routeEt:Landroid/widget/EditText;

    .line 558
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->noneVehicleLayout:Landroid/widget/RelativeLayout;

    .line 559
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailGear:Landroid/widget/TextView;

    .line 560
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->searchResult:Landroid/widget/ListView;

    .line 561
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->afterDis:Landroid/widget/TextView;

    .line 562
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nextDirection:Landroid/widget/ImageView;

    .line 563
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicle_user_avatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    .line 564
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicle_username:Landroid/widget/TextView;

    .line 565
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicle_user_profile:Landroid/widget/TextView;

    .line 566
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicle_riding_time:Landroid/widget/TextView;

    .line 567
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->riding_time:Landroid/widget/TextView;

    .line 568
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->progress_Linear:Landroid/widget/LinearLayout;

    .line 569
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->shareLinear:Landroid/widget/LinearLayout;

    .line 570
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->screenCap:Lcom/kugoo/kugookirin/view/CornerImageView;

    .line 571
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->sharePhotoIv:Lcom/kugoo/kugookirin/view/CircleImageView;

    .line 572
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->shareNameTv:Landroid/widget/TextView;

    .line 573
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->itemTripDis:Landroid/widget/TextView;

    .line 574
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->itemMaxSpeed:Landroid/widget/TextView;

    .line 575
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->itemAvgSpeed:Landroid/widget/TextView;

    .line 576
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->itemTripTime:Landroid/widget/TextView;

    .line 577
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->startLocTv:Landroid/widget/TextView;

    .line 578
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->endLocTv:Landroid/widget/TextView;

    .line 579
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->curPos:Landroid/widget/ImageButton;

    .line 580
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->start_riding_layout:Landroid/widget/LinearLayout;

    .line 581
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicle_riding_status:Landroid/widget/TextView;

    .line 582
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_type:Landroid/widget/TextView;

    .line 583
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_imoo:Landroid/widget/TextView;

    .line 584
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_receive:Landroid/widget/TextView;

    .line 585
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_receive_1:Landroid/widget/TextView;

    .line 586
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_receive_2:Landroid/widget/TextView;

    .line 587
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_receive_3:Landroid/widget/TextView;

    .line 588
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_flag:Landroid/widget/TextView;

    .line 589
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicleListRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 590
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_input:Landroid/widget/EditText;

    .line 591
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->test_send:Landroid/widget/Button;

    .line 592
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->longJing:Landroid/widget/TextView;

    .line 593
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->longWei:Landroid/widget/TextView;

    .line 594
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->locChange:Landroid/widget/TextView;

    .line 595
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->other_data:Landroid/widget/TextView;

    .line 596
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->detailDriveLayout:Landroid/widget/LinearLayout;

    .line 597
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->driveD:Landroidx/appcompat/widget/AppCompatButton;

    .line 598
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->driveS:Landroidx/appcompat/widget/AppCompatButton;

    .line 600
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0364:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0364:Landroid/view/View;

    .line 602
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a05b1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a05b1:Landroid/view/View;

    .line 604
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a03e0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a03e0:Landroid/view/View;

    .line 606
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a036d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a036d:Landroid/view/View;

    .line 608
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a020c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a020c:Landroid/view/View;

    .line 610
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a05b3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a05b3:Landroid/view/View;

    .line 612
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01aa:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01aa:Landroid/view/View;

    .line 614
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0185:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0185:Landroid/view/View;

    .line 616
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01b1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01b1:Landroid/view/View;

    .line 618
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01b5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01b5:Landroid/view/View;

    .line 620
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0199:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0199:Landroid/view/View;

    .line 622
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01a2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01a2:Landroid/view/View;

    .line 624
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a035d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a035d:Landroid/view/View;

    .line 626
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0191:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0191:Landroid/view/View;

    .line 628
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a028b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a028b:Landroid/view/View;

    .line 630
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0287:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0287:Landroid/view/View;

    .line 632
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a00c1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a00c1:Landroid/view/View;

    .line 634
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0603:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0603:Landroid/view/View;

    .line 636
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a015f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a015f:Landroid/view/View;

    .line 638
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a057a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a057a:Landroid/view/View;

    .line 640
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01ec:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01ec:Landroid/view/View;

    .line 642
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01ed:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01ed:Landroid/view/View;

    .line 644
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01d4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01d4:Landroid/view/View;

    .line 646
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a035e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a035e:Landroid/view/View;

    .line 648
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01a8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a01a8:Landroid/view/View;

    .line 650
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a024b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a024b:Landroid/view/View;

    .line 652
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a04f9:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a04f9:Landroid/view/View;

    .line 654
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a04f5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a04f5:Landroid/view/View;

    .line 656
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0085:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0085:Landroid/view/View;

    .line 658
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0565:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0565:Landroid/view/View;

    .line 660
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0566:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0566:Landroid/view/View;

    .line 662
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0579:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0579:Landroid/view/View;

    .line 664
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0570:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0570:Landroid/view/View;

    .line 666
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0057:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment_ViewBinding;->view7f0a0057:Landroid/view/View;

    return-void

    .line 489
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
