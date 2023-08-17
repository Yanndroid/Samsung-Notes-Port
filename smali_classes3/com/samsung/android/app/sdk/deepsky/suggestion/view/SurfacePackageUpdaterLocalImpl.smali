.class public final Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$HostContainer;,
        Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$PackageAppName;,
        Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0008\u0007\u0018\u0000 D2\u00020\u0001:\u0003DEFB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J \u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020$2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010 \u001a\u00020!H\u0002JD\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020!2\u0006\u0010)\u001a\u00020\r2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00172\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0017H\u0002JN\u0010,\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020.2<\u0010/\u001a8\u0012\u0004\u0012\u000201\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(2\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(3\u0012\u0004\u0012\u00020\u000f00H\u0016J\u0010\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u0005H\u0016JW\u00107\u001a\u00020\u000f2\u0006\u00108\u001a\u00020&2\u0008\u00109\u001a\u0004\u0018\u00010\r26\u0010/\u001a2\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(2\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(3\u0012\u0004\u0012\u00020\u000f0\u0008H\u0002\u00a2\u0006\u0002\u0010:J\u0010\u0010;\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020.H\u0016J\u0010\u0010<\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020.H\u0016JB\u0010=\u001a\u00020\u000f28\u0010/\u001a4\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0008H\u0016J-\u0010>\u001a\u00020\u000f2#\u0010/\u001a\u001f\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0011H\u0016J\u0018\u0010?\u001a\u00020\u000f2\u000e\u0010/\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0015H\u0016JB\u0010@\u001a\u00020\u000f28\u0010/\u001a4\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(2\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(3\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0008H\u0016J-\u0010A\u001a\u00020\u000f2#\u0010/\u001a\u001f\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u001f\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0011H\u0016J\u001d\u0010B\u001a\u00020\u000f*\u00020$2\u000e\u0008\u0004\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0015H\u0082\u0008R@\u0010\u0007\u001a4\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\u0010\u001a\u001f\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\u001e\u001a\u001f\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u001f\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006G"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;",
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;",
        "context",
        "Landroid/content/Context;",
        "viewConfig",
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;",
        "(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;)V",
        "clickConsumer",
        "Lkotlin/Function2;",
        "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;",
        "Lkotlin/ParameterName;",
        "name",
        "data",
        "",
        "viewId",
        "",
        "disconnectedConsumer",
        "Lkotlin/Function1;",
        "",
        "cause",
        "dismissedConsumer",
        "Lkotlin/Function0;",
        "excludedIdList",
        "",
        "hostContainer",
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$HostContainer;",
        "includedIdList",
        "item",
        "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;",
        "maxSuggestionCount",
        "motionEventConsumer",
        "actionId",
        "viewSpec",
        "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;",
        "assignText",
        "view",
        "Landroid/view/View;",
        "createView",
        "Landroid/widget/ListView;",
        "rootView",
        "Landroid/view/ViewGroup;",
        "suggestionCount",
        "includedIds",
        "excludedIds",
        "getSurfacePackage",
        "info",
        "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;",
        "consumer",
        "Lkotlin/Function3;",
        "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
        "width",
        "height",
        "isAlreadyConnected",
        "",
        "config",
        "measureView",
        "listView",
        "maxListItemVisibleCount",
        "(Landroid/widget/ListView;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V",
        "onSurfacePackageReleased",
        "relayout",
        "setOnClickListener",
        "setOnDisconnectedListener",
        "setOnDismissedListener",
        "setOnLayoutChangedListener",
        "setOnMotionEventListener",
        "waitForLayout",
        "runnable",
        "Companion",
        "HostContainer",
        "PackageAppName",
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
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SSS:SurfacePackageUpdaterLocalImpl"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private clickConsumer:Lkotlin/jvm/functions/Function2;
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

.field private hostContainer:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$HostContainer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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

.field private final item:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->Companion:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$Companion;

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

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->viewConfig:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;

    invoke-interface {p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;->getItem()Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->item:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    invoke-interface {p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;->getViewSpec()Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->viewSpec:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;

    invoke-interface {p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;->getMaxSuggestionCount()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->maxSuggestionCount:I

    invoke-interface {p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;->getIncludedDataId()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->includedIdList:Ljava/util/List;

    invoke-interface {p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;->getExcludedDataId()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->excludedIdList:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->assignText$lambda-18$lambda-17$lambda-16(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$assignText(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;Landroid/view/View;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->assignText(Landroid/view/View;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getDismissedConsumer$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->dismissedConsumer:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getMotionEventConsumer$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->motionEventConsumer:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method private final assignText(Landroid/view/View;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;)V
    .locals 8

    invoke-virtual {p3}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;->getTitleId()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p3}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;->getDescriptionId()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p3}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;->getIconId()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    goto :goto_7

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;->getIcon()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_6

    :cond_5
    :goto_2
    move v5, v3

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_8

    move v5, v2

    goto :goto_3

    :cond_8
    move v5, v3

    :goto_3
    if-ne v5, v2, :cond_5

    move v5, v2

    :goto_4
    if-eqz v5, :cond_a

    :try_start_0
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_9

    move-object v0, v1

    goto :goto_5

    :cond_9
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_5
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    goto :goto_7

    :cond_a
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_b

    goto :goto_7

    :cond_b
    sget v4, Lcom/samsung/android/app/sdk/deepsky/R$drawable;->sss_ic_suggestion:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_7
    invoke-virtual {p3}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;->getSuggestionFromId()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_c

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;->getSuggestionFrom()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_d

    move v4, v2

    goto :goto_8

    :cond_d
    move v4, v3

    :goto_8
    if-eqz v4, :cond_e

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;->getSuggestionFrom()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_e
    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, ""

    if-nez v4, :cond_f

    :goto_9
    move-object v1, v5

    goto :goto_b

    :cond_f
    const-string/jumbo v6, "source"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    goto :goto_9

    :cond_10
    new-instance v6, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$PackageAppName;

    iget-object v7, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$PackageAppName;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$PackageAppName;->getAppNameOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    goto :goto_a

    :cond_11
    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->context:Landroid/content/Context;

    sget v6, Lcom/samsung/android/app/sdk/deepsky/R$string;->sss_suggestion_from:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_a
    if-nez v1, :cond_12

    goto :goto_9

    :cond_12
    :goto_b
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_13

    goto :goto_c

    :cond_13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c
    invoke-virtual {p3}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;->getClickableIdList()Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_14

    goto :goto_e

    :cond_14
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_d

    :cond_15
    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/b;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/b;-><init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_d

    :cond_16
    :goto_e
    return-void
.end method

.method private static final assignText$lambda-18$lambda-17$lambda-16(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->clickConsumer:Lkotlin/jvm/functions/Function2;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final createView(Landroid/view/ViewGroup;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;ILjava/util/List;Ljava/util/List;)Landroid/widget/ListView;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;",
            "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/widget/ListView;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createView, item: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSS:SurfacePackageUpdaterLocalImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;->getListView()Landroid/widget/RemoteViews;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/ListView;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/widget/ListView;

    move-object v1, v0

    :cond_1
    if-eqz v1, :cond_a

    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Landroid/widget/ListView;

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/samsung/android/app/sdk/deepsky/R$color;->transparent:I

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(I)V

    :cond_2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;->getItems()Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;

    invoke-virtual {v3}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_3

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    move-object v0, p6

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    move v0, v2

    :goto_4
    if-eqz v0, :cond_5

    invoke-interface {p1, p6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;->getListItemView()Landroid/widget/RemoteViews;

    move-result-object v6

    if-eqz v6, :cond_9

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$createView$1;

    move-object v3, p1

    move v5, p4

    move-object v7, p0

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$createView$1;-><init>(Ljava/util/List;ILandroid/widget/RemoteViews;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;)V

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value was null."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "viewSpec.listView is not ListView"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final measureView(Landroid/widget/ListView;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$measureView$$inlined$waitForLayout$1;

    invoke-direct {v1, p1, p1, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$measureView$$inlined$waitForLayout$1;-><init>(Landroid/view/View;Landroid/widget/ListView;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private final waitForLayout(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$waitForLayout$1$1;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$waitForLayout$1$1;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public getSurfacePackage(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;Lkotlin/jvm/functions/Function3;)V
    .locals 21
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

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    const-string v1, "info"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "consumer"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSurfacePackage, info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->item:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    invoke-virtual {v2}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SSS:SurfacePackageUpdaterLocalImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v7, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->item:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;->getValid()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;->getHostToken()Landroid/os/IBinder;

    move-result-object v9

    const-string v10, "Required value was null."

    if-eqz v9, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;->getDisplayId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;->getWidth()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v12

    iget-object v0, v7, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->context:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v13

    iget-object v0, v7, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->item:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, v7, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->maxSuggestionCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-instance v6, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/widget/SwipeDismissFrameLayout;

    iget-object v15, v7, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->context:Landroid/content/Context;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xe

    const/16 v20, 0x0

    move-object v14, v6

    invoke-direct/range {v14 .. v20}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/widget/SwipeDismissFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, v7, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->viewSpec:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;->getEnableSwipeDismiss()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-virtual {v6, v0}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/widget/SwipeDismissLayout;->setSwipeable(Z)V

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$getSurfacePackage$2;

    invoke-direct {v0, v6, v7}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$getSurfacePackage$2;-><init>(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/widget/SwipeDismissFrameLayout;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/widget/SwipeDismissFrameLayout;->addCallback(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/widget/SwipeDismissFrameLayout$Callback;)V

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$getSurfacePackage$3;

    invoke-direct {v0, v7}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$getSurfacePackage$3;-><init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/widget/SwipeDismissFrameLayout;->setDispatchTouchEventListener(Lkotlin/jvm/functions/Function1;)V

    iget-object v2, v7, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->item:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    iget-object v3, v7, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->viewSpec:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;

    iget-object v5, v7, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->includedIdList:Ljava/util/List;

    iget-object v14, v7, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->excludedIdList:Ljava/util/List;

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v15, v6

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->createView(Landroid/view/ViewGroup;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;ILjava/util/List;Ljava/util/List;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/view/SurfaceControlViewHost;

    iget-object v2, v7, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v13, v9}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V

    invoke-virtual {v1, v15, v11, v12}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;II)V

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$HostContainer;

    invoke-direct {v3, v1, v2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$HostContainer;-><init>(Landroid/view/SurfaceControlViewHost;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    iput-object v3, v7, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->hostContainer:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$HostContainer;

    iget-object v1, v7, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->viewSpec:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;->getMaxListItemVisibleCount()Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$getSurfacePackage$4;

    invoke-direct {v3, v8, v2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$getSurfacePackage$4;-><init>(Lkotlin/jvm/functions/Function3;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    invoke-direct {v7, v0, v1, v3}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->measureView(Landroid/widget/ListView;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSurfacePackage, item is not valid"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAlreadyConnected(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;)Z
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->viewConfig:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onSurfacePackageReleased(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSurfacePackageReleased, info: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SSS:SurfacePackageUpdaterLocalImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->hostContainer:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$HostContainer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$HostContainer;->getHost()Landroid/view/SurfaceControlViewHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$HostContainer;->getPkg()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->clickConsumer:Lkotlin/jvm/functions/Function2;

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

    const-string v1, "SSS:SurfacePackageUpdaterLocalImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Required value was null."

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;->getHeight()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->hostContainer:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$HostContainer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$HostContainer;->getHost()Landroid/view/SurfaceControlViewHost;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/view/SurfaceControlViewHost;->relayout(II)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->clickConsumer:Lkotlin/jvm/functions/Function2;

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

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->disconnectedConsumer:Lkotlin/jvm/functions/Function1;

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

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->dismissedConsumer:Lkotlin/jvm/functions/Function0;

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

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->motionEventConsumer:Lkotlin/jvm/functions/Function1;

    return-void
.end method
