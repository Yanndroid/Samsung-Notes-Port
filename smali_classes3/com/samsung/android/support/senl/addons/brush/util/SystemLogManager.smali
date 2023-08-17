.class public final Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/util/SystemLogConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008!\u0018\u0000 -2\u00020\u0001:\u0001-B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0006\u0010\u000e\u001a\u00020\u0006J\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0008J\u0006\u0010\u0011\u001a\u00020\u0006J\u000e\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0008J\u0006\u0010\u0014\u001a\u00020\u0006J\u0006\u0010\u0015\u001a\u00020\u0006J\u000e\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\nJ\u0006\u0010\u0018\u001a\u00020\u0006J\u0006\u0010\u0019\u001a\u00020\u0006J\u0006\u0010\u001a\u001a\u00020\u0006J\u0010\u0010\u001b\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0006\u0010\u001c\u001a\u00020\u0006J\u0006\u0010\u001d\u001a\u00020\u0006J\u0006\u0010\u001e\u001a\u00020\u0006J\u0006\u0010\u001f\u001a\u00020\u0006J\u0006\u0010 \u001a\u00020\u0006J\u0006\u0010!\u001a\u00020\u0006J\u0006\u0010\"\u001a\u00020\u0006J \u0010#\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0001\u0010$\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u0010%\u001a\u00020\u0006J\u000e\u0010&\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020\nJ\u0006\u0010(\u001a\u00020\u0006J\u0006\u0010)\u001a\u00020\u0006J\u0006\u0010*\u001a\u00020\u0006J\u0006\u0010+\u001a\u00020\u0006J\u0006\u0010,\u001a\u00020\u0006R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;",
        "Lcom/samsung/android/support/senl/addons/brush/util/SystemLogConstants;",
        "()V",
        "mLogManager",
        "Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;",
        "onBrushEraserSettingPopupClose",
        "",
        "type",
        "",
        "visible",
        "",
        "onBrushSettingOpen",
        "penName",
        "",
        "onColorGradationClose",
        "onColorGradationViewModeChange",
        "viewMode",
        "onColorPickerSelected",
        "onColorSelected",
        "color",
        "onDoneClicked",
        "onEraseAllClicked",
        "onEraserClicked",
        "isEraserSelected",
        "onEyeDropperClosed",
        "onEyeDropperHandlerTapped",
        "onEyeDropperOpened",
        "onObjectAdded",
        "onPaletteSwipeNext",
        "onPaletteSwipePrev",
        "onPenClicked",
        "onPenUpPostingDone",
        "onPenUpPostingFail",
        "onPenUpStart",
        "onRedoClicked",
        "onSeekBarChanged",
        "value",
        "onSelectColorSetsOpened",
        "onShowHideBrushesClicked",
        "isOpen",
        "onTouchByEyedropper",
        "onUndoClicked",
        "onZoomIn",
        "onZoomOut",
        "updateLogManager",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->Companion:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager$Companion;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->updateLogManager()V

    return-void
.end method


# virtual methods
.method public final onBrushEraserSettingPopupClose(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onBrushEraserSettingPopupClose(IZ)V

    return-void
.end method

.method public final onBrushSettingOpen(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onBrushSettingOpen(Ljava/lang/String;)V

    return-void
.end method

.method public final onColorGradationClose()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onColorGradationClose()V

    return-void
.end method

.method public final onColorGradationViewModeChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onColorGradationViewModeChange(I)V

    return-void
.end method

.method public final onColorPickerSelected()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onColorPickerSelected()V

    return-void
.end method

.method public final onColorSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onColorSelected(I)V

    return-void
.end method

.method public final onDoneClicked()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onDoneClicked()V

    return-void
.end method

.method public final onEraseAllClicked()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onEraseAllClicked()V

    return-void
.end method

.method public final onEraserClicked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onEraserClicked(Z)V

    return-void
.end method

.method public final onEyeDropperClosed()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onEyeDropperClosed()V

    return-void
.end method

.method public final onEyeDropperHandlerTapped()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onEyeDropperHandlerTapped()V

    return-void
.end method

.method public final onEyeDropperOpened()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onEyeDropperOpened()V

    return-void
.end method

.method public final onObjectAdded(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onObjectAdded(Ljava/lang/String;)V

    return-void
.end method

.method public final onPaletteSwipeNext()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onPaletteSwipeNext()V

    return-void
.end method

.method public final onPaletteSwipePrev()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onPaletteSwipePrev()V

    return-void
.end method

.method public final onPenClicked()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onPenClicked()V

    return-void
.end method

.method public final onPenUpPostingDone()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onPenUpPostingDone()V

    return-void
.end method

.method public final onPenUpPostingFail()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onPenUpPostingFail()V

    return-void
.end method

.method public final onPenUpStart()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onPenUpStart()V

    return-void
.end method

.method public final onRedoClicked()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onRedoClicked()V

    return-void
.end method

.method public final onSeekBarChanged(IILjava/lang/String;)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x64L
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "penName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onSeekBarChanged(IILjava/lang/String;)V

    return-void
.end method

.method public final onSelectColorSetsOpened()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onSelectColorSetsOpened()V

    return-void
.end method

.method public final onShowHideBrushesClicked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onShowHideBrushesClicked(Z)V

    return-void
.end method

.method public final onTouchByEyedropper()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onTouchByEyedropper()V

    return-void
.end method

.method public final onUndoClicked()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onUndoClicked()V

    return-void
.end method

.method public final onZoomIn()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onZoomIn()V

    return-void
.end method

.method public final onZoomOut()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;->onZoomOut()V

    return-void
.end method

.method public final updateLogManager()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->isTabletMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/util/SystemTabLogManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/brush/util/SystemTabLogManager;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/util/SystemPhoneLogManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/brush/util/SystemPhoneLogManager;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->mLogManager:Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;

    return-void
.end method
