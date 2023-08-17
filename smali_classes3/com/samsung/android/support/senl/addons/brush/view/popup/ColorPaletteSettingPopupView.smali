.class public final Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPaletteSettingPopupView;
.super Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u0007H\u0016J\u0008\u0010\u000f\u001a\u00020\u0007H\u0016J\u0012\u0010\u0010\u001a\u00020\r2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0012\u0010\u0015\u001a\u00020\r2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\rH\u0016J\u0008\u0010\u001c\u001a\u00020\rH\u0016J\u001a\u0010\u001c\u001a\u00020\r2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020\u0007H\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPaletteSettingPopupView;",
        "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;",
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;",
        "context",
        "Landroid/content/Context;",
        "swatchList",
        "",
        "",
        "maxSelectCount",
        "(Landroid/content/Context;Ljava/util/List;I)V",
        "mDelegate",
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;",
        "close",
        "",
        "getHorizontalMargin",
        "getVerticalMargin",
        "hide",
        "result",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopupView$IPopupResult;",
        "isVisible",
        "",
        "rotate",
        "event",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;",
        "setRotationDelegate",
        "delegate",
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;",
        "show",
        "updatePosition",
        "info",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;",
        "subAlign",
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


# instance fields
.field private final mDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "swatchList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    new-instance p2, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;

    invoke-direct {p2, p1, p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPaletteSettingPopupView;->mDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPaletteSettingPopupView;->mDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->close()V

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->close()V

    return-void
.end method

.method public getHorizontalMargin()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPaletteSettingPopupView;->mDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->getHorizontalMargin()I

    move-result v0

    return v0
.end method

.method public getVerticalMargin()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPaletteSettingPopupView;->mDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->getVerticalMargin()I

    move-result v0

    return v0
.end method

.method public hide(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopupView$IPopupResult;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopupView$IPopupResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public rotate(Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPaletteSettingPopupView;->mDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->rotate(Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;)V

    return-void
.end method

.method public setRotationDelegate(Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPaletteSettingPopupView;->mDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->setRotationDelegate(Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPaletteSettingPopupView;->mDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->show()V

    return-void
.end method

.method public updatePosition()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPaletteSettingPopupView;->mDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->updatePosition()V

    return-void
.end method

.method public updatePosition(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;I)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPaletteSettingPopupView;->mDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->updatePosition(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)V

    return-void
.end method
