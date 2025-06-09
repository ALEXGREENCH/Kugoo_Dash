.class public final Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;
.super Ljava/lang/Object;
.source "AndroidRootResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$ListenableArrayList;,
        Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Listener;,
        Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Root;
    }
.end annotation


# static fields
.field private static final GET_DEFAULT_IMPL:Ljava/lang/String; = "getDefault"

.field private static final GET_GLOBAL_INSTANCE:Ljava/lang/String; = "getInstance"

.field private static final TAG:Ljava/lang/String; = "AndroidRootResolver"

.field private static final VIEWS_FIELD:Ljava/lang/String; = "mViews"

.field private static final WINDOW_MANAGER_GLOBAL_CLAZZ:Ljava/lang/String; = "android.view.WindowManagerGlobal"

.field private static final WINDOW_MANAGER_IMPL_CLAZZ:Ljava/lang/String; = "android.view.WindowManagerImpl"

.field private static final WINDOW_PARAMS_FIELD:Ljava/lang/String; = "mParams"


# instance fields
.field private initialized:Z

.field private paramsField:Ljava/lang/reflect/Field;

.field private viewsField:Ljava/lang/reflect/Field;

.field private windowManagerObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initialize()V
    .locals 13

    const-string/jumbo v0, "reflective setup failed using obj: %s method: %s field: %s"

    const-string v1, "mParams"

    const-string v2, "mViews"

    const/4 v3, 0x1

    .line 190
    iput-boolean v3, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->initialized:Z

    const-string v4, "android.view.WindowManagerGlobal"

    const-string v5, "getInstance"

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 196
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/Class;

    .line 197
    invoke-virtual {v9, v5, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 198
    invoke-virtual {v10, v12, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->windowManagerObj:Ljava/lang/Object;

    .line 199
    invoke-virtual {v9, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    iput-object v10, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->viewsField:Ljava/lang/reflect/Field;

    .line 200
    invoke-virtual {v10, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 201
    invoke-virtual {v9, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    iput-object v9, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->paramsField:Ljava/lang/reflect/Field;

    .line 202
    invoke-virtual {v9, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 228
    sget-object v9, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->TAG:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v8

    aput-object v5, v6, v3

    aput-object v2, v6, v7

    .line 230
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v9, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    .line 221
    sget-object v9, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->TAG:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v8

    aput-object v5, v6, v3

    aput-object v2, v6, v7

    .line 223
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v9, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    .line 218
    sget-object v1, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->TAG:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v5, v2, v8

    aput-object v4, v2, v3

    const-string v3, "could not find method: %s on %s"

    .line 219
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v0

    .line 211
    sget-object v5, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->TAG:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v8

    aput-object v2, v6, v3

    aput-object v4, v6, v7

    const-string v1, "could not find field: %s or %s on %s"

    .line 213
    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {v5, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_4
    move-exception v0

    .line 209
    sget-object v1, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->TAG:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v4, v2, v8

    const-string v3, "could not find class: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_5
    move-exception v0

    .line 204
    sget-object v1, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->TAG:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v5, v2, v8

    aput-object v4, v2, v3

    const-string v3, "could not invoke: %s on %s"

    .line 206
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 204
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public attachActiveRootListener(Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Listener;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 116
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->initialized:Z

    if-nez v0, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->initialize()V

    .line 121
    :cond_1
    :try_start_0
    const-class v0, Ljava/lang/reflect/Field;

    const-string v1, "accessFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 123
    iget-object v1, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->viewsField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, -0x11

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 124
    iget-object v0, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->viewsField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->windowManagerObj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 125
    new-instance v1, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$ListenableArrayList;

    invoke-direct {v1}, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$ListenableArrayList;-><init>()V

    .line 126
    invoke-virtual {v1, p1}, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$ListenableArrayList;->setListener(Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Listener;)V

    .line 127
    invoke-virtual {v1, v0}, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$ListenableArrayList;->addAll(Ljava/util/Collection;)Z

    .line 128
    iget-object p1, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->viewsField:Ljava/lang/reflect/Field;

    iget-object v0, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->windowManagerObj:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 130
    sget-object v0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->TAG:Ljava/lang/String;

    const-string v1, "Couldn\'t attach root listener."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public listActiveRoots()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Root;",
            ">;"
        }
    .end annotation

    const-string v0, "Reflective access to %s or %s on %s failed."

    .line 135
    iget-boolean v1, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->initialized:Z

    if-nez v1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->initialize()V

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->windowManagerObj:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 140
    sget-object v0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->TAG:Ljava/lang/String;

    const-string v1, "No reflective access to windowmanager object."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->viewsField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_2

    .line 145
    sget-object v0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->TAG:Ljava/lang/String;

    const-string v1, "No reflective access to mViews"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->paramsField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_3

    .line 149
    sget-object v0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->TAG:Ljava/lang/String;

    const-string v1, "No reflective access to mPArams"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    const/4 v1, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 161
    :try_start_0
    iget-object v6, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->viewsField:Ljava/lang/reflect/Field;

    iget-object v7, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->windowManagerObj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 162
    iget-object v7, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->paramsField:Ljava/lang/reflect/Field;

    iget-object v8, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->windowManagerObj:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v5, v1, :cond_4

    .line 184
    new-instance v3, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Root;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3, v4, v8, v2}, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$Root;-><init>(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver$1;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    :catch_0
    move-exception v6

    .line 173
    sget-object v7, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->viewsField:Ljava/lang/reflect/Field;

    aput-object v8, v3, v5

    iget-object v5, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->paramsField:Ljava/lang/reflect/Field;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->windowManagerObj:Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 175
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v7, v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_1
    move-exception v6

    .line 165
    sget-object v7, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->viewsField:Ljava/lang/reflect/Field;

    aput-object v8, v3, v5

    iget-object v5, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->paramsField:Ljava/lang/reflect/Field;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/facebook/core/internal/logging/dumpsys/AndroidRootResolver;->windowManagerObj:Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 167
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v7, v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method
