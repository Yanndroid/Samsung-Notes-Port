.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarContract$IView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IView"
.end annotation


# virtual methods
.method public abstract changeToggleBtnImg(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)V
.end method

.method public abstract executePenSetting()V
.end method

.method public abstract executeRemoteEraser()V
.end method

.method public abstract hide()V
.end method

.method public abstract hidePopupsWithSpoid()V
.end method

.method public abstract hideSettingPenMini()V
.end method

.method public abstract isShowing()Z
.end method

.method public abstract offEasyWritingPad()V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onTouchOutside()Z
.end method

.method public abstract reboundSettingPenMiniVI()V
.end method

.method public abstract restore(Landroid/os/Bundle;)V
.end method

.method public abstract setColorTheme(I)V
.end method

.method public abstract show()V
.end method

.method public abstract showSettingPenMini()V
.end method

.method public abstract toggleZoomLock()V
.end method

.method public abstract updateDeleteOnlyState(Z)V
.end method

.method public abstract updateRemoteFavoritePen(ZI)V
.end method
