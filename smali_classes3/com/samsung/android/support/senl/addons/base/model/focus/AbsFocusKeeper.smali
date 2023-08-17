.class public abstract Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008&\u0018\u0000 .2\u00020\u0001:\u0001.B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0014H\u0016J\u0008\u0010\u0016\u001a\u00020\u0014H\u0016J\u0008\u0010\u0017\u001a\u00020\nH\u0016J\"\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u000e2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J \u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010\u001f\u001a\u00020\u00142\u0006\u0010 \u001a\u00020\u000eH\u0016J\"\u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u000e2\u0008\u0010$\u001a\u0004\u0018\u00010\u001cH&J\u0008\u0010%\u001a\u00020\u0014H\u0016J \u0010&\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0010\u0010\'\u001a\u00020\u00142\u0006\u0010(\u001a\u00020\u0008H\u0016J\u0010\u0010)\u001a\u00020\u00142\u0006\u0010*\u001a\u00020\nH\u0016J\u0010\u0010+\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\u0012H\u0016J\u0018\u0010-\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u000eH\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;",
        "Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper;",
        "pan",
        "Landroid/graphics/PointF;",
        "updater",
        "Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper$IFocusInfoUpdater;",
        "(Landroid/graphics/PointF;Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper$IFocusInfoUpdater;)V",
        "mContentScale",
        "",
        "mIsLocked",
        "",
        "mOldCenterPos",
        "mOldContentScale",
        "mOrientation",
        "",
        "mPan",
        "mUpdater",
        "mView",
        "Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;",
        "close",
        "",
        "fitToBottom",
        "fitToCenter",
        "isLocked",
        "keepFocus",
        "w",
        "h",
        "selectedArea",
        "Landroid/graphics/RectF;",
        "moveToNearestInsidePos",
        "canvasRect",
        "onOrientationChanged",
        "orientation",
        "onSizeChanged",
        "width",
        "height",
        "focusArea",
        "onZoom",
        "scrollToSelectedObject",
        "setContentScale",
        "contentScale",
        "setLocked",
        "locked",
        "setView",
        "view",
        "updateOldCenterPosition",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mContentScale:F

.field private mIsLocked:Z

.field private final mOldCenterPos:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mOldContentScale:F

.field private mOrientation:I

.field private mPan:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mUpdater:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper$IFocusInfoUpdater;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mView:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->Companion:Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper$Companion;

    const-string v0, "FocusKeeper"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper$IFocusInfoUpdater;)V
    .locals 1
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper$IFocusInfoUpdater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pan"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "updater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->getScreenOrientation()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mOrientation:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mOldContentScale:F

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mContentScale:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mOldCenterPos:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mPan:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mUpdater:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper$IFocusInfoUpdater;

    return-void
.end method

.method private final moveToNearestInsidePos(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 5

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iget p3, p2, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p3, v1

    iget v1, p2, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gez v2, :cond_0

    move v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget v3, p2, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gez p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->offset(FF)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveToNearestInsidePos, diff = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", L/R/T/B= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " / "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mView:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;->setPan(Landroid/graphics/PointF;)V

    return-void
.end method

.method private final scrollToSelectedObject(IILandroid/graphics/RectF;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mView:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;->getZoomScale()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mContentScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    const/4 v2, 0x0

    sub-float v3, p1, v2

    mul-float/2addr v3, v1

    int-to-float p2, p2

    sub-float v4, p2, v2

    mul-float/2addr v4, v1

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change canvas size - selected Rect : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mView:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;->getPan()Landroid/graphics/PointF;

    move-result-object v2

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePanByObjectSelection, pan =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, v2}, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->moveToNearestInsidePos(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    invoke-virtual {p3, v0}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->fitToCenter()V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mPan:Landroid/graphics/PointF;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mView:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;->getPan()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mOldCenterPos:Landroid/graphics/PointF;

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    div-float/2addr p2, v0

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mUpdater:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper$IFocusInfoUpdater;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mView:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;

    return-void
.end method

.method public fitToBottom()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mView:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mView:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fitToBottom, oldPanY= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mPan:Landroid/graphics/PointF;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->getScreenOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mPan:Landroid/graphics/PointF;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mPan:Landroid/graphics/PointF;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mView:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5}, Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mView:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5}, Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;->getWidth()I

    move-result v5

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mPan:Landroid/graphics/PointF;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mPan:Landroid/graphics/PointF;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mView:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5}, Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mView:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5}, Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;->getHeight()I

    move-result v5

    :goto_0
    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mContentScale:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->y:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fitToBottom, newPanY= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mPan:Landroid/graphics/PointF;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mUpdater:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper$IFocusInfoUpdater;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper$IFocusInfoUpdater;->onUpdated()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mOldCenterPos:Landroid/graphics/PointF;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public fitToCenter()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mView:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mView:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fitToCenter, oldPanY= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mPan:Landroid/graphics/PointF;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", oldCenterY/newCenterY= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mOldCenterPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->getScreenOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mPan:Landroid/graphics/PointF;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mOldCenterPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mOldContentScale:F

    div-float/2addr v5, v6

    sub-float/2addr v5, v0

    iget-object v6, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mView:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;->getZoomScale()F

    move-result v6

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mPan:Landroid/graphics/PointF;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v3, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mOldCenterPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mOldContentScale:F

    div-float/2addr v5, v6

    sub-float/2addr v5, v2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mPan:Landroid/graphics/PointF;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mOldCenterPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mContentScale:F

    div-float v6, v0, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mView:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;->getZoomScale()F

    move-result v6

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mPan:Landroid/graphics/PointF;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v3, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mOldCenterPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mContentScale:F

    div-float v6, v2, v6

    sub-float/2addr v5, v6

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mView:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;->getZoomScale()F

    move-result v6

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mPan:Landroid/graphics/PointF;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mPan:Landroid/graphics/PointF;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fitToCenter, newPanY= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mPan:Landroid/graphics/PointF;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mUpdater:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper$IFocusInfoUpdater;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeeper$IFocusInfoUpdater;->onUpdated()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mOldCenterPos:Landroid/graphics/PointF;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public isLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mIsLocked:Z

    return v0
.end method

.method public keepFocus(IILandroid/graphics/RectF;)V
    .locals 4
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mView:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->TAG:Ljava/lang/String;

    const-string p2, "keepFocus, mView is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->TAG:Ljava/lang/String;

    const-string p2, "keepFocus, object selection is disabled or unsupported"

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->fitToCenter()V

    goto :goto_4

    :cond_1
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->scrollToSelectedObject(IILandroid/graphics/RectF;)V

    goto :goto_4

    :cond_5
    :goto_3
    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->TAG:Ljava/lang/String;

    const-string p2, "keepFocus, there is no selected object"

    goto :goto_0

    :goto_4
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mOrientation:I

    return-void
.end method

.method public abstract onSizeChanged(IILandroid/graphics/RectF;)V
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public onZoom()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mIsLocked:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mOrientation:I

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->getScreenOrientation()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mPan:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mView:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;->getPan()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method public setContentScale(F)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setContentScale"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mContentScale:F

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mOldContentScale:F

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mContentScale:F

    return-void
.end method

.method public setLocked(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mIsLocked:Z

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLocked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setView(Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mView:Lcom/samsung/android/support/senl/addons/base/model/focus/IFocusKeepingView;

    return-void
.end method

.method public updateOldCenterPosition(II)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOldCenterPosition, w/h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mOldCenterPos:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mIsLocked:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mOrientation:I

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->getScreenOrientation()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/focus/AbsFocusKeeper;->mOldCenterPos:Landroid/graphics/PointF;

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    int-to-float p2, p2

    div-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    :cond_1
    return-void
.end method
