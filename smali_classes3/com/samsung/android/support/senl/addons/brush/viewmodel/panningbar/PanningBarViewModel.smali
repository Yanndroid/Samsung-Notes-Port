.class public Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$Companion;,
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$IPanningBarTouchListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u0007\n\u0002\u0008\n\u0008\u0016\u0018\u0000 02\u00020\u0001:\u000201B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J\u0008\u0010\u0012\u001a\u00020\u0010H\u0014J\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0008H\u0002J\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000cJ\u0008\u0010\u0019\u001a\u00020\u001aH\u0002J\u0008\u0010\u001b\u001a\u00020\u001aH\u0002J\u0008\u0010\u001c\u001a\u00020\u001aH\u0002J\u0008\u0010\u001d\u001a\u00020\u001aH\u0002J\u0008\u0010\u001e\u001a\u00020\u001aH\u0002J\u0008\u0010\u001f\u001a\u00020\u001aH\u0002J\u0008\u0010 \u001a\u00020\u001aH\u0002J\u0008\u0010!\u001a\u00020\u0008H\u0002J\u0006\u0010\"\u001a\u00020\u0008J\u0017\u0010#\u001a\u00020\u00102\u0008\u0010$\u001a\u0004\u0018\u00010\u001aH\u0014\u00a2\u0006\u0002\u0010%J\u0018\u0010&\u001a\u00020\u00102\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020(H\u0002J\u0010\u0010*\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0008H\u0002J\u000e\u0010,\u001a\u00020\u00102\u0006\u0010-\u001a\u00020\nJ\u0010\u0010.\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0008H\u0002J\u0008\u0010/\u001a\u00020\u0010H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;",
        "facade",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;",
        "listener",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$IPanningBarTouchListener;",
        "(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$IPanningBarTouchListener;)V",
        "mHorizontalVisibility",
        "",
        "mPanningBarLayout",
        "Lcom/samsung/android/support/senl/addons/base/model/panningbar/IPanningBarLayoutInjector;",
        "mPanningBarListener",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;",
        "mTouchListener",
        "mVerticalVisibility",
        "clearModels",
        "",
        "closeCallbacks",
        "closeSubViewModels",
        "getData",
        "",
        "id",
        "",
        "getHorizontalVisibility",
        "getListener",
        "getPanningBarHeightPx",
        "",
        "getPanningBarHorizontalMarginBottomPx",
        "getPanningBarHorizontalMarginEndPx",
        "getPanningBarVerticalMarginBottomPx",
        "getPanningBarVerticalMarginEndPx",
        "getPanningBarVerticalPaddingEndPx",
        "getPanningBarWidthPx",
        "getVerticalVisibility",
        "isShown",
        "onPropertyChanged",
        "propertyId",
        "(Ljava/lang/Integer;)V",
        "onRequestScroll",
        "dx",
        "",
        "dy",
        "setHorizontalVisibility",
        "visibility",
        "setPanningBarLayout",
        "injector",
        "setVerticalVisibility",
        "updatePanningBar",
        "Companion",
        "IPanningBarTouchListener",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BINDING_ID_HEIGHT_PX:Ljava/lang/String; = "panningBarHeightPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_HORIZONTAL_MARGIN_BOTTOM_PX:Ljava/lang/String; = "panningBarHorizontalMarginBottomPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_HORIZONTAL_MARGIN_END_PX:Ljava/lang/String; = "panningBarHorizontalMarginEndPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_HORIZONTAL_VISIBILITY:Ljava/lang/String; = "horizontalVisibility"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_PANNINGBAR_LISTENER:Ljava/lang/String; = "panningbarListener"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_VERTICAL_MARGIN_BOTTOM_PX:Ljava/lang/String; = "panningBarVerticalMarginBottomPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_VERTICAL_MARGIN_END_PX:Ljava/lang/String; = "panningBarVerticalMarginEndPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_VERTICAL_PADDING_END_PX:Ljava/lang/String; = "panningBarVerticalPaddingEndPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_VERTICAL_VISIBILITY:Ljava/lang/String; = "verticalVisibility"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_WIDTH_PX:Ljava/lang/String; = "panningBarWidthPx"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mHorizontalVisibility:Z

.field private mPanningBarLayout:Lcom/samsung/android/support/senl/addons/base/model/panningbar/IPanningBarLayoutInjector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPanningBarListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mTouchListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$IPanningBarTouchListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mVerticalVisibility:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$Companion;

    const-string v0, "PanningBarViewModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$IPanningBarTouchListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$IPanningBarTouchListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mTouchListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$IPanningBarTouchListener;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$mPanningBarListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$mPanningBarListener$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mPanningBarListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;

    return-void
.end method

.method public static final synthetic access$getMTouchListener$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$IPanningBarTouchListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mTouchListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$IPanningBarTouchListener;

    return-object p0
.end method

.method public static final synthetic access$onRequestScroll(Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->onRequestScroll(FF)V

    return-void
.end method

.method private final getHorizontalVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mHorizontalVisibility:Z

    return v0
.end method

.method private final getPanningBarHeightPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mPanningBarLayout:Lcom/samsung/android/support/senl/addons/base/model/panningbar/IPanningBarLayoutInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/panningbar/IPanningBarLayoutInjector;->getPanningBarHeightPx()I

    move-result v0

    return v0
.end method

.method private final getPanningBarHorizontalMarginBottomPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mPanningBarLayout:Lcom/samsung/android/support/senl/addons/base/model/panningbar/IPanningBarLayoutInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/panningbar/IPanningBarLayoutInjector;->getPanningBarHorizontalMarginBottomPx()I

    move-result v0

    return v0
.end method

.method private final getPanningBarHorizontalMarginEndPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mPanningBarLayout:Lcom/samsung/android/support/senl/addons/base/model/panningbar/IPanningBarLayoutInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/panningbar/IPanningBarLayoutInjector;->getPanningBarHorizontalMarginEndPx()I

    move-result v0

    return v0
.end method

.method private final getPanningBarVerticalMarginBottomPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mPanningBarLayout:Lcom/samsung/android/support/senl/addons/base/model/panningbar/IPanningBarLayoutInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/panningbar/IPanningBarLayoutInjector;->getPanningBarVerticalMarginBottomPx()I

    move-result v0

    return v0
.end method

.method private final getPanningBarVerticalMarginEndPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mPanningBarLayout:Lcom/samsung/android/support/senl/addons/base/model/panningbar/IPanningBarLayoutInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/panningbar/IPanningBarLayoutInjector;->getPanningBarVerticalMarginEndPx()I

    move-result v0

    return v0
.end method

.method private final getPanningBarVerticalPaddingEndPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mPanningBarLayout:Lcom/samsung/android/support/senl/addons/base/model/panningbar/IPanningBarLayoutInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/panningbar/IPanningBarLayoutInjector;->getPanningBarVerticalPaddingEndPx()I

    move-result v0

    return v0
.end method

.method private final getPanningBarWidthPx()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mPanningBarLayout:Lcom/samsung/android/support/senl/addons/base/model/panningbar/IPanningBarLayoutInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/panningbar/IPanningBarLayoutInjector;->getPanningBarWidthPx()I

    move-result v0

    return v0
.end method

.method private final getVerticalVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mVerticalVisibility:Z

    return v0
.end method

.method private final onRequestScroll(FF)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->getView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->getPan()Landroid/graphics/PointF;

    move-result-object v1

    iget v2, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, p2

    iput v2, v1, Landroid/graphics/PointF;->y:F

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setPan(Landroid/graphics/PointF;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Panning scroll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final setHorizontalVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mHorizontalVisibility:Z

    const-string p1, "horizontalVisibility"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method private final setVerticalVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mVerticalVisibility:Z

    const-string/jumbo p1, "verticalVisibility"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method private final updatePanningBar()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->getView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->isHScrollable()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mHorizontalVisibility:Z

    if-nez v4, :cond_1

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->setHorizontalVisibility(Z)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mHorizontalVisibility:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->setHorizontalVisibility(Z)V

    :cond_2
    :goto_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->isVScrollable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mVerticalVisibility:Z

    if-nez v1, :cond_3

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->setVerticalVisibility(Z)V

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mVerticalVisibility:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->setVerticalVisibility(Z)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public clearModels()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mHorizontalVisibility:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mVerticalVisibility:Z

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->clearModels()V

    return-void
.end method

.method public closeCallbacks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mPanningBarListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mTouchListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$IPanningBarTouchListener;

    return-void
.end method

.method public closeSubViewModels()V
    .locals 0

    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "panningBarVerticalPaddingEndPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->getPanningBarVerticalPaddingEndPx()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :sswitch_1
    const-string v0, "panningBarHorizontalMarginBottomPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->getPanningBarHorizontalMarginBottomPx()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :sswitch_2
    const-string v0, "panningbarListener"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->getListener()Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;

    move-result-object p1

    return-object p1

    :sswitch_3
    const-string v0, "horizontalVisibility"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->getHorizontalVisibility()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :sswitch_4
    const-string/jumbo v0, "verticalVisibility"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->getVerticalVisibility()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :sswitch_5
    const-string v0, "panningBarHeightPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->getPanningBarHeightPx()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :sswitch_6
    const-string v0, "panningBarVerticalMarginBottomPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->getPanningBarVerticalMarginBottomPx()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :sswitch_7
    const-string v0, "panningBarVerticalMarginEndPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->getPanningBarVerticalMarginEndPx()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :sswitch_8
    const-string v0, "panningBarHorizontalMarginEndPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->getPanningBarHorizontalMarginEndPx()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :sswitch_9
    const-string v0, "panningBarWidthPx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->getPanningBarWidthPx()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_a
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b793374 -> :sswitch_9
        -0x457b91f1 -> :sswitch_8
        -0x16fa8503 -> :sswitch_7
        0xf4c6099 -> :sswitch_6
        0x1a59c331 -> :sswitch_5
        0x1e9a4b28 -> :sswitch_4
        0x20e7ee56 -> :sswitch_3
        0x3bd3f276 -> :sswitch_2
        0x538cbc47 -> :sswitch_1
        0x6db52bea -> :sswitch_0
    .end sparse-switch
.end method

.method public final getListener()Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mPanningBarListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;

    return-object v0
.end method

.method public final isShown()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->getVerticalVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->getHorizontalVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onPropertyChanged(Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x2b5c

    if-eq v0, v1, :cond_3

    :goto_0
    const/16 v0, 0x2b5d

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_3

    :goto_1
    const/16 v0, 0x2bc2

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->updatePanningBar()V

    :cond_4
    :goto_2
    return-void
.end method

.method public final setPanningBarLayout(Lcom/samsung/android/support/senl/addons/base/model/panningbar/IPanningBarLayoutInjector;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/panningbar/IPanningBarLayoutInjector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "injector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->mPanningBarLayout:Lcom/samsung/android/support/senl/addons/base/model/panningbar/IPanningBarLayoutInjector;

    return-void
.end method
