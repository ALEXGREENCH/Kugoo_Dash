.class Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;
.super Landroid/os/Handler;
.source "VehicleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/os/Looper;)V
    .locals 0

    .line 2463
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24

    move-object/from16 v0, p0

    .line 2467
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    move-object/from16 v1, p1

    .line 2468
    iget v1, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    const-wide/16 v3, 0x3e8

    if-eq v1, v2, :cond_4

    const/16 v2, 0x44c

    const/4 v5, 0x0

    if-eq v1, v2, :cond_3

    const/16 v2, 0x898

    if-eq v1, v2, :cond_1

    const-wide v6, 0x400ccccccccccccdL    # 3.6

    const/high16 v2, 0x447a0000    # 1000.0f

    const-string v8, "locArray=="

    const-string v9, "uploadTrackRecord"

    const-string v10, "%.1f"

    const-string v11, "VehicleFragmenttracking_operation"

    const/4 v12, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 2538
    :pswitch_0
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3600(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "recordRoute"

    .line 2539
    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    iget-object v9, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v9}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$4900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-static {v9}, Lcom/kugoo/kugookirin/utils/toolUtil;->changeJsonToData(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v9

    .line 2542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    div-long/2addr v13, v3

    .line 2543
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 2545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v12, [Ljava/lang/Object;

    .line 2547
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)F

    move-result v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v10, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 2548
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    new-array v1, v12, [Ljava/lang/Object;

    .line 2549
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$4000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v10, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 2550
    iget-object v13, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v13}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$4100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/lang/String;

    move-result-object v14

    const-string v19, "1"

    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    .line 2551
    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$5000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/lang/String;

    move-result-object v21

    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$5100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    move-object/from16 v20, v9

    .line 2550
    invoke-static/range {v13 .. v23}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$4400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2516
    :pswitch_1
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$4500(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    .line 2517
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$4600(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    .line 2518
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2521
    :pswitch_2
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$4700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    goto/16 :goto_0

    .line 2493
    :pswitch_3
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3600(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2494
    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)F

    move-result v1

    float-to-double v13, v1

    const-wide v15, 0x3fb999999999999aL    # 0.1

    cmpl-double v1, v13, v15

    if-lez v1, :cond_5

    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2496
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1, v5}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3802(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Z)Z

    .line 2498
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/kugoo/kugookirin/utils/toolUtil;->changeJsonToData(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    .line 2499
    iget-object v9, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v9}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-static {v9}, Lcom/kugoo/kugookirin/utils/toolUtil;->changeJsonToData(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v9

    .line 2500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    div-long/2addr v13, v3

    .line 2501
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 2503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pauseArray=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v12, [Ljava/lang/Object;

    .line 2506
    iget-object v4, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v4}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3700(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)F

    move-result v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v10, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 2507
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    new-array v2, v12, [Ljava/lang/Object;

    .line 2508
    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$4000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)F

    move-result v3

    float-to-double v3, v3

    div-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 2509
    iget-object v13, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v13}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$4100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/lang/String;

    move-result-object v14

    const-string v19, "2"

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    .line 2510
    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$4200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/lang/String;

    move-result-object v21

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$4300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v20, v1

    move-object/from16 v23, v9

    .line 2509
    invoke-static/range {v13 .. v23}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$4400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    const-string v1, "sign_in_map"

    .line 2478
    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$1200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "tracking_operation"

    const-string v2, "put_LatLng_to_jsonArray"

    .line 2481
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x0

    .line 2482
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object v1, v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLongitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object v1, v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->nowLatitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static/range {v3 .. v8}, Lcom/kugoo/kugookirin/utils/toolUtil;->changeDataToJson(DDD)Lorg/json/JSONObject;

    move-result-object v1

    .line 2483
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3000(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2486
    :cond_0
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1, v12}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3112(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;I)I

    .line 2487
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3100(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Ljava/lang/String;)V

    .line 2488
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-object v3, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v1, v2, v4, v3}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3500(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Lcom/google/android/gms/maps/model/LatLng;ILandroid/graphics/Bitmap;)V

    .line 2490
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 2470
    :pswitch_5
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2908(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)J

    .line 2471
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object v1, v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->mapTripTime:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/kugoo/kugookirin/utils/ChangeToHour;->SecondToMin(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2472
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object v1, v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->riding_time:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/kugoo/kugookirin/utils/ChangeToHour;->SecondToMin(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2473
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object v1, v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->vehicle_riding_time:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/kugoo/kugookirin/utils/ChangeToHour;->SecondToMin(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2474
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recordTime=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$2900(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VehicleFragmenttracking_status"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2556
    :cond_1
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$5200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2558
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$5300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 2559
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$5300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$5200(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    .line 2560
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Polyline;->setWidth(F)V

    .line 2561
    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-virtual {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06020f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Polyline;->setColor(I)V

    .line 2562
    invoke-virtual {v1, v5}, Lcom/google/android/gms/maps/model/Polyline;->setGeodesic(Z)V

    :cond_2
    const-string v1, "\u6267\u884c001"

    const-string v2, "drawMarkerJ1335"

    .line 2565
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    const v3, 0x7f0f0122

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3500(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Lcom/google/android/gms/maps/model/LatLng;ILandroid/graphics/Bitmap;)V

    .line 2567
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$5400(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    const v3, 0x7f0f00ff

    invoke-static {v1, v2, v3, v4}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3500(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Lcom/google/android/gms/maps/model/LatLng;ILandroid/graphics/Bitmap;)V

    .line 2569
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object v1, v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->exitNavigationBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2570
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$5300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    iget-object v2, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v2}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$3300(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v2, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 2572
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$5500(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)V

    goto :goto_0

    :cond_3
    const-string v1, "recordRou"

    const-string v2, "\u5237\u65b0\u6570\u636e"

    .line 2532
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iget-object v1, v1, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->searchResult:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2534
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$4800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 2528
    :cond_4
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    const-wide/16 v5, 0x1

    invoke-static {v1, v5, v6}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$914(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;J)J

    .line 2529
    iget-object v1, v0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$31;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->access$800(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
