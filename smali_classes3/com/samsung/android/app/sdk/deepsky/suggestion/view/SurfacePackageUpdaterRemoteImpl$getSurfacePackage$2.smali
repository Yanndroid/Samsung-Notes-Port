.class final Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$getSurfacePackage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->getSurfacePackage(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;Lkotlin/jvm/functions/Function3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/os/Messenger;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n"
    }
    d2 = {
        "Landroid/os/Messenger;",
        "server",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic $consumer:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $request:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewRequest;

.field public final synthetic this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;Lkotlin/jvm/functions/Function3;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewRequest;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$getSurfacePackage$2;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$getSurfacePackage$2;->$consumer:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$getSurfacePackage$2;->$request:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewRequest;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$getSurfacePackage$2;->invoke(Landroid/os/Messenger;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/os/Messenger;)V
    .locals 4
    .param p1    # Landroid/os/Messenger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "server"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$getSurfacePackage$2;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$getSurfacePackage$2;->$consumer:Lkotlin/jvm/functions/Function3;

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$getSurfacePackage$2;->$request:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewRequest;

    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->access$setSurfacePackageConsumer$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;Lkotlin/jvm/functions/Function3;)V

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewContracts;->Companion:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewContracts$Companion;

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewContracts$Companion;->createMessage(ILcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewRequest;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->access$getClientMessenger$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$getSurfacePackage$2;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of p1, p1, Landroid/os/RemoteException;

    if-eqz p1, :cond_0

    const-string p1, "SSS:SurfacePackageUpdaterRemoteImpl"

    const-string v1, "getSurfacePackage, RemoteException"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->access$setSurfacePackageConsumer$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;Lkotlin/jvm/functions/Function3;)V

    :cond_1
    return-void
.end method
