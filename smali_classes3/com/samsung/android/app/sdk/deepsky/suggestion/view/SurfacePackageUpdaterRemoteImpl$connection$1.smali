.class public final Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$connection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u001c\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$connection$1",
        "Landroid/content/ServiceConnection;",
        "executePendingRequest",
        "",
        "server",
        "Landroid/os/Messenger;",
        "onServiceConnected",
        "name",
        "Landroid/content/ComponentName;",
        "service",
        "Landroid/os/IBinder;",
        "onServiceDisconnected",
        "deepsky-sdk-2.2.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$connection$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final executePendingRequest(Landroid/os/Messenger;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$connection$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->access$getRequestQueue$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "executePendingRequest, size: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSS:SurfacePackageUpdaterRemoteImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$connection$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->access$getRequestQueue$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$connection$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->access$getRequestQueue$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p1, "SSS:SurfacePackageUpdaterRemoteImpl"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$connection$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->access$setServerMessenger$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;Landroid/os/Messenger;)V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$connection$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;

    invoke-static {p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->access$getServerMessenger$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)Landroid/os/Messenger;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$connection$1;->executePendingRequest(Landroid/os/Messenger;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p1, "SSS:SurfacePackageUpdaterRemoteImpl"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$connection$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->access$setServerMessenger$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;Landroid/os/Messenger;)V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$connection$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;

    invoke-static {p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->access$getRequestQueue$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$connection$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;

    invoke-static {p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->access$getDisconnectedConsumer$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$connection$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;

    invoke-static {p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->access$getContext$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->access$doUnbindService(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;Landroid/content/Context;)V

    return-void
.end method
