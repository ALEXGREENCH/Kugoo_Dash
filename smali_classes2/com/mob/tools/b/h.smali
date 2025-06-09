.class public Lcom/mob/tools/b/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/b/h$a;
    }
.end annotation


# direct methods
.method private static a()Landroid/os/Parcelable$Creator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "025deBdcdjdkdidcdlPg:dk2cdi=didkRe;dlfedk_cdiRdidk$e"

    .line 94
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "007;edgjgifdfcghgj"

    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable$Creator;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 33
    invoke-static {}, Lcom/mob/commons/d;->f()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 34
    invoke-static {}, Lcom/mob/tools/utils/f;->a()Lcom/mob/tools/utils/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v3

    .line 40
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/mob/tools/a/d;->a(Landroid/content/Context;)Lcom/mob/tools/a/d;

    move-result-object v2

    .line 42
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1f

    const-string v12, "$"

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-lt v4, v11, :cond_2

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "036de1dcdjdkdidcdl6gKdkKcdi\'didk+eIdlfeAdNfiNi:fedk<cdiXdidkVe^gjFf(dedg*f5fiLi"

    invoke-static {v5}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "007]fjdgdiVgOdcCf)dj"

    invoke-static {v5}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {v2, v4}, Lcom/mob/tools/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "036deXdcdjdkdidcdlKgFdkQcdiYdidk3e0dlfe:dDfi0iNfedkZcdiOdidkHe[gjWfGdedg1fPfiTi"

    invoke-static {v5}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "007!fjdgdiZgLdcDfOdj"

    invoke-static {v5}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, "005Bffdgdi>g,dc"

    .line 48
    invoke-static {v4}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    .line 46
    invoke-virtual/range {v4 .. v10}, Lcom/mob/tools/a/d;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v3

    goto :goto_0

    :cond_2
    const-string v4, "032deYdcdjdkdidcdl0g<dk3cdiMdidkVeUdlfedk^cdi1didkMe^gjMfUdedgQfBfi[i"

    .line 51
    invoke-static {v4}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v4, "028c1djVfdifWgcdjdkdfflYfj$dj!fcdif0dcgldjdkdddidc[fVdj"

    .line 52
    invoke-static {v4}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x4

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v15

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v14

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v13

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v9, v8, v10

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v0, v9, v15

    .line 54
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v14

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v13

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v9, v10

    const/4 v10, 0x0

    move-object v4, v2

    .line 51
    invoke-virtual/range {v4 .. v10}, Lcom/mob/tools/a/d;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_0
    move-object/from16 v16, v4

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "033deAdcdjdkdidcdlPgUdkYcdi$didk>e:dleefedk@cdi[didk\'e<hcKdedDejQf;dj"

    invoke-static {v5}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "004Jel(iSdgff"

    .line 57
    invoke-static {v5}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "027;fcgjfdegelfdedfceeghegdhejZfiBfeHd9fi4i2fedk%cdiOdidk e"

    .line 58
    invoke-static {v5}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 56
    invoke-virtual {v2, v4, v5, v3, v6}, Lcom/mob/tools/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v4, "025deAdcdjdkdidcdldkfidlel9fTdjdddi$cfEhc(ded ej(f_dj"

    .line 59
    invoke-static {v4}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v4, "010AejQfi*el8fJdjdddiYcf"

    invoke-static {v4}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v14, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v8, v15

    new-array v9, v14, [Ljava/lang/Object;

    const-string v4, "008gZdk$cdi7didk)e"

    .line 60
    invoke-static {v4}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v15

    const/4 v10, 0x0

    move-object v4, v2

    .line 59
    invoke-virtual/range {v4 .. v10}, Lcom/mob/tools/a/d;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/os/IBinder;

    if-eqz v16, :cond_5

    if-eqz v10, :cond_5

    .line 62
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 63
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    :try_start_0
    const-string v4, "033de0dcdjdkdidcdl$gQdk1cdi>didkOe2dleefedk cdiWdidkHe$hcVdedXejOfPdj"

    .line 65
    invoke-static {v4}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 66
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v11, :cond_3

    .line 67
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    move-object/from16 v0, v16

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v3, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object v2, v9

    move-object v0, v10

    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {v3, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v0, "013_fgdjdiMifWfcdkglCd)dj<cfg"

    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v13, [Ljava/lang/Class;

    const-class v0, Landroid/os/Parcel;

    aput-object v0, v8, v15

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v8, v14

    new-array v0, v13, [Ljava/lang/Object;

    aput-object v3, v0, v15

    .line 74
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v11, 0x0

    move-object v4, v2

    move-object/from16 v6, v16

    move-object v2, v9

    move-object v9, v0

    move-object v0, v10

    move-object v10, v11

    .line 72
    :try_start_1
    invoke-virtual/range {v4 .. v10}, Lcom/mob/tools/a/d;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_4

    .line 78
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    :cond_4
    invoke-interface {v0, v12, v3, v2, v15}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 81
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 82
    invoke-static {}, Lcom/mob/tools/b/h;->a()Landroid/os/Parcelable$Creator;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    invoke-static/range {p0 .. p0}, Lcom/mob/tools/a/d;->a(Landroid/content/Context;)Lcom/mob/tools/a/d;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mob/tools/a/d;->b(Landroid/content/Context;)Z

    .line 85
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 86
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v9

    .line 84
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/mob/tools/a/d;->a(Landroid/content/Context;)Lcom/mob/tools/a/d;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mob/tools/a/d;->b(Landroid/content/Context;)Z

    .line 85
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 86
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 87
    throw v0

    :cond_5
    return-object v3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 98
    invoke-static {}, Lcom/mob/commons/d;->e()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    .line 99
    invoke-static {}, Lcom/mob/tools/utils/f;->a()Lcom/mob/tools/utils/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v3

    .line 105
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/mob/tools/a/d;->a(Landroid/content/Context;)Lcom/mob/tools/a/d;

    move-result-object v2

    .line 106
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v13, v12, [Ljava/lang/Object;

    .line 109
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1f

    const/4 v15, 0x3

    const-string v10, "$"

    const/4 v9, 0x2

    const/4 v8, 0x0

    if-lt v4, v14, :cond_2

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "032dePdcdjdkdidcdlDgHdkScdiJdidk9e2dlfedkQcdi6didk^e8gjBfGdedg3fEfi0i"

    invoke-static {v5}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "007Tfjdgdi3gDdc8fWdj"

    .line 111
    invoke-static {v5}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    new-array v6, v12, [Ljava/lang/Object;

    const-wide/16 v16, 0x0

    .line 112
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    .line 110
    invoke-virtual {v2, v4, v5, v6}, Lcom/mob/tools/a/d;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "032de=dcdjdkdidcdl;g0dkRcdiXdidk3e6dlfedk9cdi4didk9e(gj\'fIdedg$f6fi@i"

    invoke-static {v5}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "007)fjdgdiKg6dcBf^dj"

    .line 115
    invoke-static {v5}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, "005Uffdgdi7g_dc"

    .line 116
    invoke-static {v4}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v4, v2

    move v3, v8

    move-object/from16 v8, v16

    move v14, v9

    move-object/from16 v9, v17

    move-object/from16 v19, v10

    move-object/from16 v10, v18

    .line 114
    invoke-virtual/range {v4 .. v10}, Lcom/mob/tools/a/d;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_1
    move v3, v8

    move v14, v9

    move-object/from16 v19, v10

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move v3, v8

    move v14, v9

    move-object/from16 v19, v10

    const-string v4, "032deVdcdjdkdidcdlKg=dkUcdiGdidkTeIdlfedk+cdi+didk[e:gjYfCdedg7f?fiFi"

    .line 119
    invoke-static {v4}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v4, "028c;dj\'fdif,gcdjdkdffl)fj+djPfcdif*dcgldjdkdddidc@fEdj"

    .line 120
    invoke-static {v4}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x4

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v3

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v12

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v14

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v15

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v0, v9, v3

    .line 122
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v14

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v9, v15

    const/4 v10, 0x0

    move-object v4, v2

    .line 119
    invoke-virtual/range {v4 .. v10}, Lcom/mob/tools/a/d;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_0
    move-object/from16 v17, v4

    const-string v4, "025de:dcdjdkdidcdldkfidlelNf@djdddiMcf2hc?dedOejYf3dj"

    .line 124
    invoke-static {v4}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v4, "010<ej8fiUelHf$djdddi0cf"

    invoke-static {v4}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v8, v3

    new-array v9, v12, [Ljava/lang/Object;

    const-string v4, "008gQdkQcdiUdidkUe"

    .line 125
    invoke-static {v4}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v3

    const/4 v10, 0x0

    move-object v4, v2

    .line 124
    invoke-virtual/range {v4 .. v10}, Lcom/mob/tools/a/d;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/os/IBinder;

    if-eqz v17, :cond_6

    if-eqz v10, :cond_6

    .line 127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    :try_start_0
    const-string v4, "033deUdcdjdkdidcdlJg5dk>cdiXdidkYe$dleefedkScdiTdidkWe:hc$ded1ej8fFdj"

    .line 131
    invoke-static {v4}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 132
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, -0x1

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_4

    .line 134
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    move-object/from16 v0, v17

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v9, v0, v3}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 136
    new-instance v0, Lcom/mob/tools/b/h$1;

    invoke-direct {v0, v13, v11}, Lcom/mob/tools/b/h$1;-><init>([Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "032deSdcdjdkdidcdl]g-dk^cdiUdidkEeVdlfedkYcdi5didk[e1hcNdedEej5f-dj"

    invoke-static {v5}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, v19

    .line 149
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "027-idMfi0eddgdjdj^fei4fedk4cdiZdidk<eDfcdj9de>fiRjSdkdjKi"

    invoke-static {v5}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v15, [Ljava/lang/Class;

    const-class v6, Ljava/util/concurrent/Executor;

    aput-object v6, v5, v3

    const-class v6, Ljava/util/function/Consumer;

    aput-object v6, v5, v12

    const-class v6, Landroid/os/CancellationSignal;

    aput-object v6, v5, v14

    new-array v6, v15, [Ljava/lang/Object;

    .line 151
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v15

    aput-object v15, v6, v3

    aput-object v0, v6, v12

    const/4 v15, 0x0

    aput-object v15, v6, v14

    .line 148
    invoke-virtual {v2, v4, v5, v6}, Lcom/mob/tools/a/d;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 152
    const-class v5, Landroid/app/AppOpsManager;

    const/4 v6, 0x0

    const-string v4, "012i@dkgj$fcfWdiddOf)djeedc"

    invoke-static {v4}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-array v4, v12, [Ljava/lang/Class;

    const-class v16, Ljava/lang/Object;

    aput-object v16, v4, v3

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v0, v12, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const/4 v0, 0x0

    move-object/from16 v16, v4

    move-object v4, v2

    move-object v3, v7

    move-object v7, v15

    move-object v15, v8

    move-object/from16 v8, v16

    move-object/from16 v20, v9

    move-object v9, v12

    move-object v12, v10

    move-object v10, v0

    :try_start_1
    invoke-virtual/range {v4 .. v10}, Lcom/mob/tools/a/d;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 155
    check-cast v14, Landroid/os/IInterface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v10, v20

    :try_start_2
    invoke-virtual {v10, v14}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "033de<dcdjdkdidcdl>g@dk<cdiXdidkXeJdleefedkXcdiYdidk7eUhcBded(ejXfSdj"

    invoke-static {v4}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "004(elWi(dgff"

    invoke-static {v3}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0305fcgjfdegelfdedfceeghegdhej3fiPeddgdjdj<fei,fedk\'cdi_didkBe"

    .line 162
    invoke-static {v3}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    .line 160
    invoke-virtual {v2, v0, v3, v5, v4}, Lcom/mob/tools/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    .line 163
    invoke-interface {v12, v0, v10, v15, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v10

    move-object v3, v15

    goto/16 :goto_5

    :cond_3
    move-object/from16 v10, v20

    :goto_1
    move-object v4, v10

    move-object v3, v15

    const/4 v5, 0x0

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v15

    move-object/from16 v4, v20

    goto/16 :goto_5

    :cond_4
    move-object/from16 v3, v19

    move-object/from16 v24, v10

    move-object v10, v9

    move-object/from16 v9, v24

    .line 167
    :try_start_3
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v0, "013UfgdjdiKif4fcdkglKd6djTcfg"

    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v0, v14, [Ljava/lang/Class;

    const-class v4, Landroid/os/Parcel;

    const/4 v6, 0x0

    aput-object v4, v0, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v12

    new-array v4, v14, [Ljava/lang/Object;

    aput-object v10, v4, v6

    .line 170
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v4, v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    const/16 v16, 0x0

    move-object/from16 v20, v4

    move-object v4, v2

    move-object/from16 v6, v17

    move-object/from16 v21, v8

    move-object v8, v0

    move-object/from16 v22, v9

    move-object/from16 v9, v20

    move-object/from16 v23, v10

    move-object/from16 v10, v16

    .line 168
    :try_start_4
    invoke-virtual/range {v4 .. v10}, Lcom/mob/tools/a/d;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 172
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    const-string v5, "0177dk)eQfedk7cdi0didk%eCed-hde;ej\'fKdc"

    .line 175
    invoke-static {v5}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/mob/tools/b/h$2;

    invoke-direct {v6, v13, v11}, Lcom/mob/tools/b/h$2;-><init>([Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "equals"

    .line 197
    new-instance v6, Lcom/mob/tools/b/h$3;

    invoke-direct {v6, v4}, Lcom/mob/tools/b/h$3;-><init>(I)V

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "008hd*fiShDeddkdc?f"

    .line 206
    invoke-static {v5}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/mob/tools/b/h$4;

    invoke-direct {v6, v4}, Lcom/mob/tools/b/h$4;-><init>(I)V

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "033deEdcdjdkdidcdlXgEdkWcdiLdidk9e(dlfedk?cdiKdidkKeTfedifi+ifef)dj"

    .line 212
    invoke-static {v4}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 213
    invoke-static {v0, v5}, Lcom/mob/tools/utils/ReflectHelper;->createProxy(Ljava/util/Map;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 215
    :try_start_6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 217
    :goto_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_5

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "032deGdcdjdkdidcdl]g5dkUcdiCdidk\'eIdlfedkScdiLdidk$e;hcAded<ej(f%dj"

    invoke-static {v5}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "025Nfedk3cdiHdidk6e8fedifiZifef^djfcdj%deZfiEjJdkdjOi"

    .line 220
    invoke-static {v5}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v14, [Ljava/lang/Class;

    const-string v6, "032de8dcdjdkdidcdl?gIdk_cdi%didkCe dlfedkJcdi6didk2e=hcVded2ej6f)dj"

    .line 221
    invoke-static {v6}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "033de?dcdjdkdidcdl@g!dk4cdi>didk@e<dlfedk=cdi+didkTe?fedifi@ifefIdj"

    .line 222
    invoke-static {v6}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v12

    new-array v6, v14, [Ljava/lang/Object;

    const-string v7, "008g9dk3cdi1didkUe"

    .line 223
    invoke-static {v7}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    aput-object v0, v6, v12

    .line 219
    invoke-virtual {v2, v4, v5, v6}, Lcom/mob/tools/a/d;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v4, "008Ydj\'f<ejdifi>if!dj"

    invoke-static {v4}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Class;

    const-class v4, Ljava/util/concurrent/Executor;

    const/4 v6, 0x0

    aput-object v4, v8, v6

    new-array v9, v12, [Ljava/lang/Object;

    .line 225
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    aput-object v4, v9, v6

    const/4 v10, 0x0

    move-object v4, v2

    move-object v6, v0

    .line 224
    invoke-virtual/range {v4 .. v10}, Lcom/mob/tools/a/d;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 228
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "032de8dcdjdkdidcdl4g6dk*cdi[didk7e1dlfedk(cdi(didk6eUhc]dedRej_f+dj"

    invoke-static {v5}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "017PfedifiOifef0djfcdj$deIfi)j>dkdjFi"

    .line 229
    invoke-static {v5}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v15, [Ljava/lang/Class;

    const-string v6, "032de9dcdjdkdidcdl@gOdkUcdi0didk.eIdlfedk cdiLdidkVe=hc[dedKejEfHdj"

    .line 230
    invoke-static {v6}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "033de\'dcdjdkdidcdlIg\'dkYcdi*didk1eAdlfedk2cdi,didkBeVfedifi_ifef]dj"

    .line 231
    invoke-static {v6}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v12

    const-class v6, Landroid/os/Looper;

    aput-object v6, v5, v14

    new-array v6, v15, [Ljava/lang/Object;

    const-string v7, "008g3dk]cdi)didkLe"

    .line 232
    invoke-static {v7}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    aput-object v0, v6, v12

    invoke-static {}, Lcom/mob/commons/a/l;->a()Lcom/mob/commons/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/a/l;->c()Landroid/os/Looper;

    move-result-object v0

    aput-object v0, v6, v14

    .line 228
    invoke-virtual {v2, v4, v5, v6}, Lcom/mob/tools/a/d;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 234
    :goto_3
    check-cast v0, Landroid/os/IBinder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object/from16 v4, v23

    :try_start_7
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v5, 0x0

    .line 235
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "033deYdcdjdkdidcdl*g?dk1cdi3didk(eJdleefedk>cdiEdidkKe0hc!dedSej*fSdj"

    invoke-static {v5}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "0045el]i@dgff"

    invoke-static {v3}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "034Afcgjfdegelfdedfceeghegdhdj1fNdedgVf2fiPi6fedkLcdi<didkTeAek+jCdcBdifDfi"

    .line 240
    invoke-static {v3}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    .line 238
    invoke-virtual {v2, v0, v3, v6, v5}, Lcom/mob/tools/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v3, v21

    move-object/from16 v2, v22

    const/4 v5, 0x0

    .line 241
    :try_start_8
    invoke-interface {v2, v0, v4, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 243
    :goto_4
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 244
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v6, p2

    invoke-virtual {v11, v6, v7, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    aget-object v0, v13, v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 247
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 248
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 249
    invoke-static/range {p0 .. p0}, Lcom/mob/tools/a/d;->a(Landroid/content/Context;)Lcom/mob/tools/a/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/a/d;->b(Landroid/content/Context;)Z

    return-object v0

    :catchall_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v3, v21

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v4, v23

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object v3, v8

    move-object v4, v10

    goto :goto_5

    :catchall_7
    move-exception v0

    move-object v3, v8

    move-object v4, v9

    .line 247
    :goto_5
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 248
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 249
    invoke-static/range {p0 .. p0}, Lcom/mob/tools/a/d;->a(Landroid/content/Context;)Lcom/mob/tools/a/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/a/d;->b(Landroid/content/Context;)Z

    .line 250
    throw v0

    :cond_6
    const/4 v1, 0x0

    goto :goto_6

    :cond_7
    move-object v1, v3

    :goto_6
    return-object v1
.end method
