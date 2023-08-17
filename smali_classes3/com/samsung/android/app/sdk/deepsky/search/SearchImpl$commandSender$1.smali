.class public final Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl$commandSender$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u001a\u0010\u000c\u001a\u0004\u0018\u00010\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/samsung/android/app/sdk/deepsky/search/SearchImpl$commandSender$1",
        "Lcom/samsung/android/app/sdk/deepsky/search/CommandSender;",
        "getMainThreadDispatcher",
        "Ljava/util/concurrent/Executor;",
        "newBundle",
        "Landroid/os/Bundle;",
        "registerContentObserver",
        "",
        "uri",
        "Landroid/net/Uri;",
        "observer",
        "Landroid/database/ContentObserver;",
        "sendCommand",
        "method",
        "",
        "bundle",
        "unregisterContentObserver",
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
.field public final synthetic this$0:Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl$commandSender$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMainThreadDispatcher()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl$commandSender$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;->access$getSystemDatasource$p(Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;)Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;->getMainThreadDispatcher()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public newBundle()Landroid/os/Bundle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl$commandSender$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;->access$getSystemDatasource$p(Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;)Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;->newBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/database/ContentObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl$commandSender$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;->access$getSystemDatasource$p(Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;)Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl$commandSender$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;->access$getContentProviderCaller$p(Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;)Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1    # Landroid/database/ContentObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl$commandSender$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;->access$getSystemDatasource$p(Lcom/samsung/android/app/sdk/deepsky/search/SearchImpl;)Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
