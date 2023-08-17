.class public final Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnSuggestionClickListener;,
        Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnExpiredListener;,
        Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnMotionEventListener;,
        Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnDismissedListener;,
        Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u001a\u0008\u0007\u0018\u0000 M2\u00020\u0001:\u0005MNOPQB/\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u0010\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u0011H\u0002J\u0010\u0010)\u001a\u00020%2\u0006\u0010(\u001a\u00020\u0011H\u0002J\u0010\u0010*\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\u0011H\u0002J\u0008\u0010+\u001a\u00020\u001fH\u0014J\u0008\u0010,\u001a\u00020\u001fH\u0014J0\u0010-\u001a\u00020\u001f2\u0006\u0010.\u001a\u00020\'2\u0006\u0010/\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u00072\u0006\u00101\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u0007H\u0014J\u0018\u00103\u001a\u00020\u001f2\u0006\u00104\u001a\u00020\u00072\u0006\u00105\u001a\u00020\u0007H\u0014J\u0018\u00106\u001a\u00020\u001f2\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u0007H\u0014J \u0010:\u001a\u00020\u001f2\u0006\u0010;\u001a\u00020$2\u0006\u0010<\u001a\u00020%2\u0006\u0010=\u001a\u00020\u0016H\u0002J\u0008\u0010>\u001a\u00020\u001fH\u0002J\u0008\u0010?\u001a\u00020\u001fH\u0007J\u0018\u0010@\u001a\u00020\u001f2\u0006\u0010;\u001a\u00020$2\u0006\u0010<\u001a\u00020%H\u0002J\u0018\u0010A\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0006\u0010C\u001a\u00020\u0007H\u0002J\u0010\u0010D\u001a\u00020\u001f2\u0008\u0010E\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010F\u001a\u00020\u001f2\u0006\u0010E\u001a\u00020\rJ\u0010\u0010G\u001a\u00020\u001f2\u0008\u0010E\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010H\u001a\u00020\u001f2\u0006\u0010;\u001a\u00020$H\u0002J\u000e\u0010I\u001a\u00020\u001f2\u0006\u0010E\u001a\u00020\u0018J\u001f\u0010J\u001a\u00020\u001f2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001e\u001a\u00020\u0007H\u0002\u00a2\u0006\u0002\u0010KJ\u0010\u0010L\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\u0011H\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0013R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0013R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R@\u0010\u0019\u001a4\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001e\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%0#X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006R"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "clickConsumer",
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnSuggestionClickListener;",
        "dismissedConsumer",
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnDismissedListener;",
        "expiredConsumer",
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnExpiredListener;",
        "latestConfig",
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;",
        "latestLayoutHeight",
        "Ljava/lang/Integer;",
        "latestMeasuredHeight",
        "latestSurfacePkg",
        "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
        "motionEventConsumer",
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnMotionEventListener;",
        "onLayoutConsumer",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "width",
        "height",
        "",
        "surfaceView",
        "Landroid/view/SurfaceView;",
        "updaterHash",
        "",
        "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;",
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;",
        "containsConfig",
        "",
        "config",
        "createSurfacePackageUpdater",
        "measureHeight",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "onLayout",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onVisibilityChanged",
        "changedView",
        "Landroid/view/View;",
        "visibility",
        "putUpdater",
        "info",
        "updater",
        "surfacePkg",
        "releaseUpdaters",
        "releaseViewConfig",
        "requestSurfacePackage",
        "resolveDrawingHeight",
        "measuredHeight",
        "minHeight",
        "setOnClickListener",
        "listener",
        "setOnDismissedListener",
        "setOnExpiredListener",
        "setOnLayoutConsumer",
        "setOnMotionEventListener",
        "setSurfaceViewLayoutParam",
        "(Ljava/lang/Integer;I)V",
        "setViewConfig",
        "Companion",
        "OnDismissedListener",
        "OnExpiredListener",
        "OnMotionEventListener",
        "OnSuggestionClickListener",
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
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SSS:SuggestionView"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private clickConsumer:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnSuggestionClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dismissedConsumer:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnDismissedListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private expiredConsumer:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnExpiredListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private latestConfig:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private latestLayoutHeight:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private latestMeasuredHeight:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private latestSurfacePkg:Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private motionEventConsumer:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnMotionEventListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onLayoutConsumer:Lkotlin/jvm/functions/Function2;
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

.field private final surfaceView:Landroid/view/SurfaceView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final updaterHash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;",
            "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->Companion:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->surfaceView:Landroid/view/SurfaceView;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->updaterHash:Ljava/util/Map;

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 p2, -0x2

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->setViewConfig$lambda-1(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;)V

    return-void
.end method

.method public static final synthetic access$getClickConsumer$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnSuggestionClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->clickConsumer:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnSuggestionClickListener;

    return-object p0
.end method

.method public static final synthetic access$getDismissedConsumer$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnDismissedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->dismissedConsumer:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnDismissedListener;

    return-object p0
.end method

.method public static final synthetic access$getExpiredConsumer$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnExpiredListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->expiredConsumer:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnExpiredListener;

    return-object p0
.end method

.method public static final synthetic access$getLatestLayoutHeight$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->latestLayoutHeight:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$getMotionEventConsumer$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnMotionEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->motionEventConsumer:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnMotionEventListener;

    return-object p0
.end method

.method public static final synthetic access$getSurfaceView$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->surfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public static final synthetic access$getUpdaterHash$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->updaterHash:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$putUpdater(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->putUpdater(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    return-void
.end method

.method public static final synthetic access$releaseUpdaters(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->releaseUpdaters()V

    return-void
.end method

.method public static final synthetic access$resolveDrawingHeight(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->resolveDrawingHeight(II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$setLatestConfig$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->latestConfig:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;

    return-void
.end method

.method public static final synthetic access$setOnLayoutConsumer(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->setOnLayoutConsumer(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;)V

    return-void
.end method

.method public static final synthetic access$setSurfaceViewLayoutParam(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;Ljava/lang/Integer;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->setSurfaceViewLayoutParam(Ljava/lang/Integer;I)V

    return-void
.end method

.method private final containsConfig(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->updaterHash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;->isAlreadyConnected(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "SSS:SuggestionView"

    const-string v0, "containsConfig, already connected."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private final createSurfacePackageUpdater(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;
    .locals 3

    invoke-interface {p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;->getEnableLocalOnly()Z

    move-result v0

    const-string v1, "context"

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;)V

    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;->getItem()Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "suggestion_view_service_version_v3"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterRemoteImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;)V

    :goto_1
    return-object v0
.end method

.method private final measureHeight(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;)I
    .locals 2

    invoke-interface {p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;->getListMinHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "measureHeight, minHeight: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSS:SuggestionView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;->getListMinHeight()I

    move-result p1

    return p1
.end method

.method private final putUpdater(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "putUpdater, "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSS:SuggestionView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->updaterHash:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->latestSurfacePkg:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-void
.end method

.method private final releaseUpdaters()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->updaterHash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;

    invoke-virtual {v2}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "releaseUpdaters, "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SSS:SuggestionView"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;->onSurfacePackageReleased(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->updaterHash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->latestSurfacePkg:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    :goto_1
    return-void
.end method

.method private final requestSurfacePackage(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "requestSurfacePackage, info: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSS:SuggestionView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;-><init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;)V

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;->getSurfacePackage(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;Lkotlin/jvm/functions/Function3;)V

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$2;-><init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)V

    invoke-interface {p2, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;->setOnClickListener(Lkotlin/jvm/functions/Function2;)V

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$3;-><init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)V

    invoke-interface {p2, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;->setOnMotionEventListener(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$4;-><init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)V

    invoke-interface {p2, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;->setOnDisconnectedListener(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$5;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$5;-><init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)V

    invoke-interface {p2, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;->setOnDismissedListener(Lkotlin/jvm/functions/Function0;)V

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$6;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$6;-><init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)V

    invoke-interface {p2, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;->setOnLayoutChangedListener(Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "requestSurfacePackage, "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->surfaceView:Landroid/view/SurfaceView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->latestConfig:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;

    :cond_0
    return-void
.end method

.method private final resolveDrawingHeight(II)I
    .locals 0

    if-nez p1, :cond_0

    return p2

    :cond_0
    if-ge p1, p2, :cond_1

    return p2

    :cond_1
    return p1
.end method

.method private final setOnLayoutConsumer(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$setOnLayoutConsumer$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$setOnLayoutConsumer$1;-><init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;)V

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->onLayoutConsumer:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method private final setSurfaceViewLayoutParam(Ljava/lang/Integer;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSurfaceViewLayoutParam, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSS:SuggestionView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->surfaceView:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-direct {v1, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static final setViewConfig$lambda-1(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "this$0"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$config"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$surfacePackageUpdater"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;->getListMinHeight()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->resolveDrawingHeight(II)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setViewConfig "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SSS:SuggestionView"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHostToken()Landroid/os/IBinder;

    move-result-object v9

    if-nez v9, :cond_0

    const-string/jumbo v0, "setViewConfig, hostToken is null."

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v4, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    iget-object v5, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getWidth()I

    move-result v5

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;->getListMinHeight()I

    move-result v6

    iget-object v7, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v15, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;

    const/4 v7, 0x0

    const-string/jumbo v10, "toHexString(surfaceView.hashCode())"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v3, 0x81

    const/16 v16, 0x0

    move-object v6, v15

    move-object v4, v15

    move v15, v3

    invoke-direct/range {v6 .. v16}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;-><init>(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v4, v2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->requestSurfacePackage(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;)V

    iput-object v1, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->latestConfig:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->latestConfig:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "SSS:SuggestionView"

    const-string v2, "onAttachedToWindow, setViewConfig"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->setViewConfig(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;)V

    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-string v0, "SSS:SuggestionView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->releaseUpdaters()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sub-int/2addr p5, p3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLayout, changed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", height: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SSS:SuggestionView"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->latestLayoutHeight:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->onLayoutConsumer:Lkotlin/jvm/functions/Function2;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMeasure, width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SSS:SuggestionView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->latestMeasuredHeight:Ljava/lang/Integer;

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->latestConfig:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;->getListMinHeight()I

    move-result p2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_3

    goto :goto_1

    :cond_3
    move v1, p2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMeasure, measuredHeight: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", retHeight: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVisibilityChanged, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SSS:SuggestionView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->surfaceView:Landroid/view/SurfaceView;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    :cond_1
    return-void
.end method

.method public final releaseViewConfig()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->releaseUpdaters()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->latestConfig:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->latestMeasuredHeight:Ljava/lang/Integer;

    return-void
.end method

.method public final setOnClickListener(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnSuggestionClickListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnSuggestionClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->clickConsumer:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnSuggestionClickListener;

    return-void
.end method

.method public final setOnDismissedListener(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnDismissedListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnDismissedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->dismissedConsumer:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnDismissedListener;

    return-void
.end method

.method public final setOnExpiredListener(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnExpiredListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnExpiredListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->expiredConsumer:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnExpiredListener;

    return-void
.end method

.method public final setOnMotionEventListener(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnMotionEventListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnMotionEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->motionEventConsumer:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnMotionEventListener;

    return-void
.end method

.method public final setViewConfig(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;->getItem()Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setViewConfig, itemId: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSS:SuggestionView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->containsConfig(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->surfaceView:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->measureHeight(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->latestMeasuredHeight:Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->createSurfacePackageUpdater(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/a;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/a;-><init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
