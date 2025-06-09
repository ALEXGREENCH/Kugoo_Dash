.class public Lcom/kugoo/kugookirin/utils/CrashHandlers;
.super Ljava/lang/Object;
.source "CrashHandlers.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final TGA:Ljava/lang/String; = "CrashHandlers"

.field private static instance:Lcom/kugoo/kugookirin/utils/CrashHandlers;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private phone:Lcom/kugoo/kugookirin/utils/GetPhoneInfo;

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appCollapse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 168
    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->USER_URL:Ljava/lang/String;

    .line 169
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  phoneEdition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  APPEdition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  collapseDescribe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bugcode\u6536\u96c6"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "uid"

    .line 172
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "model"

    .line 173
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "phoneEdition"

    .line 174
    invoke-virtual {v6, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "APPEdition"

    .line 175
    invoke-virtual {v6, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "collapseDescribe"

    .line 176
    invoke-virtual {v6, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "platform"

    const-string p2, "Android"

    .line 177
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string p2, "APPCollapse"

    .line 178
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 179
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "appCollapse"

    const-string p2, "appCollapse=   zzzz"

    .line 181
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance p1, Lcom/kugoo/kugookirin/utils/CrashHandlers$3;

    const/4 v2, 0x1

    new-instance v4, Lcom/kugoo/kugookirin/utils/CrashHandlers$1;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/utils/CrashHandlers$1;-><init>(Lcom/kugoo/kugookirin/utils/CrashHandlers;)V

    new-instance v5, Lcom/kugoo/kugookirin/utils/CrashHandlers$2;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/utils/CrashHandlers$2;-><init>(Lcom/kugoo/kugookirin/utils/CrashHandlers;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/utils/CrashHandlers$3;-><init>(Lcom/kugoo/kugookirin/utils/CrashHandlers;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 209
    iget-object p2, p0, Lcom/kugoo/kugookirin/utils/CrashHandlers;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/kugoo/kugookirin/utils/CrashHandlers;
    .locals 3

    const-class v0, Lcom/kugoo/kugookirin/utils/CrashHandlers;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/kugoo/kugookirin/utils/CrashHandlers;->instance:Lcom/kugoo/kugookirin/utils/CrashHandlers;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/kugoo/kugookirin/utils/CrashHandlers;

    invoke-direct {v1}, Lcom/kugoo/kugookirin/utils/CrashHandlers;-><init>()V

    sput-object v1, Lcom/kugoo/kugookirin/utils/CrashHandlers;->instance:Lcom/kugoo/kugookirin/utils/CrashHandlers;

    const-string v1, "bugcode\u6536\u96c6"

    const-string v2, "instance"

    .line 51
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    sget-object v1, Lcom/kugoo/kugookirin/utils/CrashHandlers;->instance:Lcom/kugoo/kugookirin/utils/CrashHandlers;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 2

    const-string v0, "handleException"

    const-string v1, "bugcode\u6536\u96c6"

    .line 103
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "handleException02"

    .line 107
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/kugoo/kugookirin/utils/CrashHandlers;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p2}, Lcom/kugoo/kugookirin/utils/CrashHandlers;->subMitThreadAndDeviceInfo(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1

    .line 62
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/utils/CrashHandlers;->preferences:Landroid/content/SharedPreferences;

    .line 63
    iput-object p1, p0, Lcom/kugoo/kugookirin/utils/CrashHandlers;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/utils/CrashHandlers;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 67
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 68
    new-instance v0, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;

    invoke-direct {v0, p1}, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/utils/CrashHandlers;->phone:Lcom/kugoo/kugookirin/utils/GetPhoneInfo;

    const-string p1, "bugcode\u6536\u96c6"

    const-string v0, "init\u5f00\u542f"

    .line 69
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public subMitThreadAndDeviceInfo(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7

    .line 135
    iget-object v0, p0, Lcom/kugoo/kugookirin/utils/CrashHandlers;->phone:Lcom/kugoo/kugookirin/utils/GetPhoneInfo;

    iget-object v3, v0, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->PhoneModel:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/kugoo/kugookirin/utils/CrashHandlers;->phone:Lcom/kugoo/kugookirin/utils/GetPhoneInfo;

    iget-object v4, v0, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->PhoneVersion:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/kugoo/kugookirin/utils/CrashHandlers;->phone:Lcom/kugoo/kugookirin/utils/GetPhoneInfo;

    iget-object v0, v0, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->PhoneResolution:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/kugoo/kugookirin/utils/CrashHandlers;->phone:Lcom/kugoo/kugookirin/utils/GetPhoneInfo;

    iget-object v5, v0, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->ZcmVersion:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/kugoo/kugookirin/utils/CrashHandlers;->phone:Lcom/kugoo/kugookirin/utils/GetPhoneInfo;

    iget-object v0, v0, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->AvailableRom:Ljava/lang/String;

    const-string v0, "activity"

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 143
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 147
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "content=content"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "content"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "bugcode\u6536\u96c6"

    const-string p3, "subMitThreadAndDeviceInfo"

    .line 150
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object p1, p0, Lcom/kugoo/kugookirin/utils/CrashHandlers;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    iget-object p1, p0, Lcom/kugoo/kugookirin/utils/CrashHandlers;->preferences:Landroid/content/SharedPreferences;

    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    const-string p3, ""

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    .line 155
    invoke-direct/range {v1 .. v6}, Lcom/kugoo/kugookirin/utils/CrashHandlers;->appCollapse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/utils/CrashHandlers;->handleException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kugoo/kugookirin/utils/CrashHandlers;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    :try_start_0
    const-string p1, "shahoutai"

    const-string p2, "error  shahoutai"

    .line 82
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, 0x7d0

    .line 86
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "CrashHandlers"

    .line 88
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/4 p1, 0x1

    .line 92
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :goto_1
    return-void
.end method
