.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager$IView;


# virtual methods
.method public abstract alignmentContent(I)V
.end method

.method public abstract cancelSearch()V
.end method

.method public abstract clearSearch()V
.end method

.method public abstract getDelta()Landroid/graphics/PointF;
.end method

.method public abstract getPan()Landroid/graphics/PointF;
.end method

.method public abstract getScale()F
.end method

.method public abstract getScrollingDirection()I
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract goToPage(I)V
.end method

.method public abstract isEnableTextOnlyMode()Z
.end method

.method public abstract moveScroll(ZZ)V
.end method

.method public abstract onTextScaleChanged(F)V
.end method

.method public abstract pageScroll(Z)V
.end method

.method public abstract pageZoom(Z)V
.end method

.method public abstract search(Ljava/lang/String;Z)I
.end method

.method public abstract searchBackward()I
.end method

.method public abstract searchForward()I
.end method

.method public abstract setContentPan(FFFI)V
.end method

.method public abstract setEditMode()V
.end method

.method public abstract setEditModeType(I)V
.end method

.method public abstract setEnableTextOnlyMode(ZFLcom/samsung/android/sdk/pen/text/SpenTextScaleListener;)V
.end method

.method public abstract setModeOfSpenComposerView(ZI)V
.end method

.method public abstract setPageLayoutAll(IIZZ)V
.end method

.method public abstract setPan(Landroid/graphics/PointF;)V
.end method

.method public abstract setSearchFocus(I)Z
.end method

.method public abstract setVoiceSyncPlayAutoScroll(Z)V
.end method

.method public abstract setVoiceSyncPlayEnabled(Z)V
.end method

.method public abstract smoothScrollToFitPage()V
.end method

.method public abstract stopGestureAnimation()V
.end method

.method public abstract updateDisallowTouchDownArea(ZI)V
.end method
