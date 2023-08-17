.class public Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 )2\u00020\u0001:\u0001)B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0014J\u0008\u0010\u0011\u001a\u00020\u000fH\u0014JP\u0010\u0012\u001a\u00020\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u000cJ\u0008\u0010\u001d\u001a\u00020\u000fH\u0016J\u0008\u0010\u001e\u001a\u00020\u000fH\u0016J\u0012\u0010\u001f\u001a\u00020\u000f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0010\u0010\"\u001a\u00020\u000f2\u0008\u0010#\u001a\u0004\u0018\u00010$J\u0008\u0010%\u001a\u00020\u000fH\u0002J\u0008\u0010&\u001a\u00020\u000fH\u0002J\u0018\u0010&\u001a\u00020\u000f2\u0006\u0010\'\u001a\u00020\u000c2\u0006\u0010(\u001a\u00020\u000cH\u0002R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;",
        "()V",
        "canvasSize",
        "Landroid/graphics/Rect;",
        "getCanvasSize",
        "()Landroid/graphics/Rect;",
        "mCallBack",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        "mFacade",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;",
        "mLayoutHeight",
        "",
        "mLayoutWidth",
        "clearModels",
        "",
        "closeCallbacks",
        "closeSubViewModels",
        "onLayoutChange",
        "v",
        "Landroid/view/View;",
        "left",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "onZoomInClicked",
        "onZoomOutClicked",
        "perform",
        "action",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;",
        "setFacade",
        "facade",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;",
        "updateZoomButton",
        "updateZoomRatios",
        "width",
        "height",
        "Companion",
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
.field private static final BINDING_ID_ON_LAYOUT_CHANGE:Ljava/lang/String; = "onLayoutChange"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mCallBack:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mLayoutHeight:I

.field private mLayoutWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$Companion;

    const-string v0, "BrushCanvasViewModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$mCallBack$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$mCallBack$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mCallBack:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    return-void
.end method

.method public static final synthetic access$getMCheckZoomInOut(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;)I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->getMCheckZoomInOut()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMFacade$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;)Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    return-object p0
.end method

.method public static final synthetic access$getMPrevZoomRatio(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;)F
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->getMPrevZoomRatio()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$setMCheckZoomInOut(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->setMCheckZoomInOut(I)V

    return-void
.end method

.method public static final synthetic access$updateZoomButton(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->updateZoomButton()V

    return-void
.end method

.method public static final synthetic access$updateZoomRatios(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->updateZoomRatios()V

    return-void
.end method

.method private final getCanvasSize()Landroid/graphics/Rect;
    .locals 4

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mLayoutWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mLayoutHeight:I

    if-lez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mLayoutWidth:I

    iget v2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mLayoutHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final updateZoomButton()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->getZoomScale()F

    move-result v1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->getMinZoomScale()F

    move-result v2

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->getMaxZoomScale()F

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->updateZoomInOutButton(FFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final updateZoomRatios()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mLayoutWidth:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mLayoutHeight:I

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->setZoomRatios(II)V

    :cond_0
    return-void
.end method

.method private final updateZoomRatios(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mLayoutWidth:I

    iput p2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mLayoutHeight:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->setZoomRatios(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearModels()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mCallBack:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->clearModels()V

    return-void
.end method

.method public closeCallbacks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mCallBack:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    return-void
.end method

.method public closeSubViewModels()V
    .locals 0

    return-void
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    if-ne p4, p8, :cond_0

    if-ne p5, p9, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    if-ge p4, p5, :cond_1

    move p3, p2

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    :goto_0
    instance-of p6, p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-eqz p6, :cond_5

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->isTabletUi()Z

    move-result p6

    const/4 p7, 0x0

    if-nez p6, :cond_4

    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p6

    int-to-float p6, p6

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p8

    const-string/jumbo p9, "v.resources"

    invoke-static {p8, p9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p9, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_menu_height_fraction:I

    invoke-static {p8, p9}, Lcom/samsung/android/support/senl/addons/brush/util/ResourceUtil;->getFloatRes(Landroid/content/res/Resources;I)F

    move-result p8

    mul-float/2addr p6, p8

    float-to-int p6, p6

    if-ne p3, p2, :cond_2

    check-cast p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    int-to-float p2, p6

    invoke-interface {p1, p7, p2, p7, p7}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;->setMargin(FFFF)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    check-cast p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    if-nez p2, :cond_3

    int-to-float p2, p6

    invoke-interface {p1, p2, p7, p7, p7}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;->setMargin(FFFF)V

    goto :goto_1

    :cond_3
    int-to-float p2, p6

    invoke-interface {p1, p7, p7, p2, p7}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;->setMargin(FFFF)V

    goto :goto_1

    :cond_4
    check-cast p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    invoke-interface {p1, p7, p7, p7, p7}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;->setMargin(FFFF)V

    :cond_5
    :goto_1
    invoke-direct {p0, p4, p5}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->updateZoomRatios(II)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLayoutChange. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " x "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomInClicked()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->getCanvasSize()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->getZoomScale()F

    move-result v3

    const v4, 0x3f666666    # 0.9f

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    move-result-object v2

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v1, v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setZoomScale(FFF)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onZoomOutClicked()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->getCanvasSize()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->getZoomScale()F

    move-result v3

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    move-result-object v2

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v1, v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setZoomScale(FFF)V

    :cond_4
    :goto_2
    return-void
.end method

.method public perform(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V
    .locals 11
    .param p1    # Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->getBindId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "onLayoutChange"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->getData()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.samsung.android.support.senl.addons.base.model.event.LayoutChangeEvent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;

    iget-object v2, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mView:Landroid/view/View;

    iget v3, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mLeft:I

    iget v4, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mTop:I

    iget v5, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mRight:I

    iget v6, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mBottom:I

    iget v7, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldLeft:I

    iget v8, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldTop:I

    iget v9, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldRight:I

    iget v10, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldBottom:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->perform(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V

    return-void
.end method

.method public final setFacade(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->setFacade(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V

    check-cast p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->mCallBack:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    :cond_0
    return-void
.end method
