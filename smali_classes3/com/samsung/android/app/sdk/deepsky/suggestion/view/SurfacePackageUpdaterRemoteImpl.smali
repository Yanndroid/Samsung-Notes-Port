.class public final Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$ClientIncomingHandler;,
        Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u0000 C2\u00020\u0001:\u0002BCB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0002J\u0010\u00104\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u00105\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002JN\u00106\u001a\u00020\u000f2\u0006\u00102\u001a\u0002032<\u00107\u001a8\u0012\u0004\u0012\u00020-\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\"\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(#\u0012\u0004\u0012\u00020\u000f0,H\u0016J\u0010\u00108\u001a\u00020\u001e2\u0006\u00109\u001a\u00020\u0005H\u0016J\u0010\u0010:\u001a\u00020\u000f2\u0006\u00102\u001a\u000203H\u0016J\u0010\u0010;\u001a\u00020\u000f2\u0006\u00102\u001a\u000203H\u0016J+\u0010<\u001a\u00020\u000f2!\u00107\u001a\u001d\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008()\u0012\u0004\u0012\u00020\u000f0\u0015H\u0002JB\u0010=\u001a\u00020\u000f28\u00107\u001a4\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0008H\u0016J-\u0010>\u001a\u00020\u000f2#\u00107\u001a\u001f\u0012\u0013\u0012\u00110\u0016\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0015H\u0016J\u0018\u0010?\u001a\u00020\u000f2\u000e\u00107\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0019H\u0016JB\u0010@\u001a\u00020\u000f28\u00107\u001a4\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\"\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(#\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0008H\u0016J-\u0010A\u001a\u00020\u000f2#\u00107\u001a\u001f\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(&\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0015H\u0016R@\u0010\u0007\u001a4\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\u0014\u001a\u001f\u0012\u0013\u0012\u00110\u0016\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\r0\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R@\u0010!\u001a4\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\"\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(#\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010%\u001a\u001f\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(&\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R/\u0010\'\u001a#\u0012\u001f\u0012\u001d\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008()\u0012\u0004\u0012\u00020\u000f0\u00150(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000RF\u0010+\u001a:\u0012\u0004\u0012\u00020-\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\"\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(#\u0012\u0004\u0012\u00020\u000f\u0018\u00010,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020/X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006D"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;",
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;",
        "context",
        "Landroid/content/Context;",
        "viewConfig",
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;",
        "(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;)V",
        "clickedConsumer",
        "Lkotlin/Function2;",
        "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;",
        "Lkotlin/ParameterName;",
        "name",
        "data",
        "",
        "viewId",
        "",
        "clientMessenger",
        "Landroid/os/Messenger;",
        "connection",
        "Landroid/content/ServiceConnection;",
        "disconnectedConsumer",
        "Lkotlin/Function1;",
        "",
        "cause",
        "dismissedConsumer",
        "Lkotlin/Function0;",
        "excludedIdList",
        "",
        "includedIdList",
        "isBound",
        "",
        "item",
        "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;",
        "layoutChangedConsumer",
        "width",
        "height",
        "maxSuggestionCount",
        "motionEventConsumer",
        "actionId",
        "requestQueue",
        "Ljava/util/concurrent/ArrayBlockingQueue;",
        "server",
        "serverMessenger",
        "surfacePackageConsumer",
        "Lkotlin/Function3;",
        "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
        "viewSpec",
        "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;",
        "createRequest",
        "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewRequest;",
        "info",
        "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;",
        "doBindService",
        "doUnbindService",
        "getSurfacePackage",
        "consumer",
        "isAlreadyConnected",
        "config",
        "onSurfacePackageReleased",
        "relayout",
        "requestToServer",
        "setOnClickListener",
        "setOnDisconnectedListener",
        "setOnDismissedListener",
        "setOnLayoutChangedListener",
        "setOnMotionEventListener",
        "ClientIncomingHandler",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SERVICE_NAME:Ljava/lang/String; = "com.samsung.android.app.deepsky.service.suggestion.view.SuggestionViewService"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SERVICE_PKG:Ljava/lang/String; = "com.samsung.android.smartsuggestions"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SSS:SurfacePackageUpdaterRemoteImpl"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private clickedConsumer:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final clientMessenger:Landroid/os/Messenger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final connection:Landroid/content/ServiceConnection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private disconnectedConsumer:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dismissedConsumer:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final excludedIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final includedIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isBound:Z

.field private final item:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private layoutChangedConsumer:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final maxSuggestionCount:I

.field private motionEventConsumer:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final requestQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/os/Messenger;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private serverMessenger:Landroid/os/Messenger;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private surfacePackageConsumer:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final viewConfig:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewSpec:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->Companion:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->viewConfig:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;

    invoke-interface {p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;->getItem()Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->item:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    invoke-interface {p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;->getViewSpec()Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->viewSpec:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;

    invoke-interface {p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;->getMaxSuggestionCount()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->maxSuggestionCount:I

    invoke-interface {p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;->getIncludedDataId()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->includedIdList:Ljava/util/List;

    invoke-interface {p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;->getExcludedDataId()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->excludedIdList:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->requestQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance p1, Landroid/os/Messenger;

    new-instance p2, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$ClientIncomingHandler;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$clientMessenger$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$clientMessenger$1;-><init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)V

    invoke-direct {p2, v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$ClientIncomingHandler;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->clientMessenger:Landroid/os/Messenger;

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$connection$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$connection$1;-><init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->connection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static final synthetic access$doUnbindService(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->doUnbindService(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getClickedConsumer$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->clickedConsumer:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getClientMessenger$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->clientMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getDisconnectedConsumer$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->disconnectedConsumer:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getDismissedConsumer$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->dismissedConsumer:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getItem$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->item:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    return-object p0
.end method

.method public static final synthetic access$getLayoutChangedConsumer$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->layoutChangedConsumer:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getMotionEventConsumer$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->motionEventConsumer:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getRequestQueue$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->requestQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method public static final synthetic access$getServerMessenger$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->serverMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method public static final synthetic access$getSurfacePackageConsumer$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;)Lkotlin/jvm/functions/Function3;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->surfacePackageConsumer:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method

.method public static final synthetic access$setServerMessenger$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->serverMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public static final synthetic access$setSurfacePackageConsumer$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->surfacePackageConsumer:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method private final createRequest(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;)Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewRequest;
    .locals 13

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;->getSurfaceHash()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->item:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->viewSpec:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->maxSuggestionCount:I

    iget-object v8, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->includedIdList:Ljava/util/List;

    iget-object v9, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->excludedIdList:Ljava/util/List;

    new-instance v12, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewRequest;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x41

    const/4 v11, 0x0

    move-object v0, v12

    move-object v4, p1

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;Ljava/lang/Integer;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method

.method private final doBindService(Landroid/content/Context;)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->isBound:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "doBindService, isBound: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSS:SurfacePackageUpdaterRemoteImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->isBound:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.smartsuggestions"

    const-string v3, "com.samsung.android.app.deepsky.service.suggestion.view.SuggestionViewService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->isBound:Z

    return-void
.end method

.method private final doUnbindService(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->isBound:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "doUnbindService, isBound: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSS:SurfacePackageUpdaterRemoteImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->isBound:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "doUnbindService"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->isBound:Z

    return-void
.end method

.method private final requestToServer(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/os/Messenger;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->serverMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->requestQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getSurfacePackage(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;Lkotlin/jvm/functions/Function3;)V
    .locals 2
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getSurfacePackage, info: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSS:SurfacePackageUpdaterRemoteImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->item:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;->getValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->doBindService(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->createRequest(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;)Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewRequest;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$getSurfacePackage$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$getSurfacePackage$2;-><init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;Lkotlin/jvm/functions/Function3;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewRequest;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->requestToServer(Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "getSurfacePackage, item is not valid"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAlreadyConnected(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;)Z
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->viewConfig:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onSurfacePackageReleased(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;)V
    .locals 2
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSurfacePackageReleased, info: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSS:SurfacePackageUpdaterRemoteImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->createRequest(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;)Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewRequest;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$onSurfacePackageReleased$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$onSurfacePackageReleased$1;-><init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewRequest;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->requestToServer(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public relayout(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;)V
    .locals 2
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "relayout, info: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSS:SurfacePackageUpdaterRemoteImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->createRequest(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;)Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewRequest;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$relayout$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl$relayout$1;-><init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewRequest;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->requestToServer(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public setOnClickListener(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->clickedConsumer:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public setOnDisconnectedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->disconnectedConsumer:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setOnDismissedListener(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->dismissedConsumer:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public setOnLayoutChangedListener(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->layoutChangedConsumer:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public setOnMotionEventListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;->motionEventConsumer:Lkotlin/jvm/functions/Function1;

    return-void
.end method
