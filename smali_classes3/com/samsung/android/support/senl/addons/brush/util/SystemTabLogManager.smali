.class public final Lcom/samsung/android/support/senl/addons/brush/util/SystemTabLogManager;
.super Lcom/samsung/android/support/senl/addons/brush/util/SystemPhoneLogManager;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0006H\u0016J\u0008\u0010\u000b\u001a\u00020\u0008H\u0016J\u0010\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0008H\u0016J\u0008\u0010\u0010\u001a\u00020\u0008H\u0016J\u0008\u0010\u0011\u001a\u00020\u0008H\u0016J\u0008\u0010\u0012\u001a\u00020\u0008H\u0016J\u0008\u0010\u0013\u001a\u00020\u0008H\u0016J\u0008\u0010\u0014\u001a\u00020\u0008H\u0016J\u0010\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u000eH\u0016J\u0008\u0010\u0017\u001a\u00020\u0008H\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/util/SystemTabLogManager;",
        "Lcom/samsung/android/support/senl/addons/brush/util/SystemPhoneLogManager;",
        "()V",
        "getSeekBarChangeIdForPen",
        "",
        "type",
        "",
        "onColorPickerSelected",
        "",
        "onColorSelected",
        "color",
        "onDoneClicked",
        "onEraserClicked",
        "isEraserSelected",
        "",
        "onPaletteSwipeNext",
        "onPaletteSwipePrev",
        "onPenClicked",
        "onPenUpStart",
        "onRedoClicked",
        "onSelectColorSetsOpened",
        "onShowHideBrushesClicked",
        "isOpen",
        "onUndoClicked",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/util/SystemPhoneLogManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getSeekBarChangeIdForPen(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "8034"

    goto :goto_0

    :cond_0
    const-string p1, "8035"

    :goto_0
    return-object p1
.end method

.method public onColorPickerSelected()V
    .locals 2

    const-string v0, "421"

    const-string v1, "8032"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onColorSelected(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "421"

    const-string v1, "8029"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDoneClicked()V
    .locals 2

    const-string v0, "421"

    const-string v1, "8040"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEraserClicked(Z)V
    .locals 2

    const-string v0, "8037"

    const-string v1, "421"

    if-nez p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "2"

    :goto_0
    invoke-static {v1, v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPaletteSwipeNext()V
    .locals 2

    const-string v0, "421"

    const-string v1, "8030"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPaletteSwipePrev()V
    .locals 2

    const-string v0, "421"

    const-string v1, "8031"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPenClicked()V
    .locals 2

    const-string v0, "421"

    const-string v1, "8028"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPenUpStart()V
    .locals 2

    const-string v0, "421"

    const-string v1, "8036"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRedoClicked()V
    .locals 2

    const-string v0, "421"

    const-string v1, "8039"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSelectColorSetsOpened()V
    .locals 2

    const-string v0, "421"

    const-string v1, "8033"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShowHideBrushesClicked(Z)V
    .locals 0

    return-void
.end method

.method public onUndoClicked()V
    .locals 2

    const-string v0, "421"

    const-string v1, "8038"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
