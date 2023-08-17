.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingContract$IItemView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IItemView"
.end annotation


# virtual methods
.method public abstract checkValidQuickColorItem(I)V
.end method

.method public abstract checkValidQuickSizeItem(I)V
.end method

.method public abstract clearQuickTypeItem()V
.end method

.method public abstract correctSelectionMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;)Z
.end method

.method public abstract getHwToolbarState()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;
.end method

.method public abstract hideDirectWrite()V
.end method

.method public abstract isDirectWriteUsing()Z
.end method

.method public abstract onObjectChanged()V
.end method

.method public abstract onUpdateToolbarItem()V
.end method

.method public abstract onUpdateToolbarQuickItem()V
.end method

.method public abstract onUpdateToolbarSelectionState(I)V
.end method

.method public abstract onUpdatedHighlighter(Ljava/lang/String;I)V
.end method

.method public abstract onUpdatedPen(Ljava/lang/String;I)V
.end method

.method public abstract onUpdatedQuickColor(II)V
.end method

.method public abstract onUpdatedQuickSize(II)V
.end method

.method public abstract onUpdatedSelection(I)V
.end method

.method public abstract onUpdatedStyle(I)V
.end method

.method public abstract restoreHwToolbarState(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;)V
.end method

.method public abstract setDirectWrite(Z)V
.end method

.method public abstract setSelectMenu(IZ)V
.end method

.method public abstract showDirectWrite()V
.end method

.method public abstract showToolTypeActionPen()V
.end method

.method public abstract updateAlignment(Z)V
.end method

.method public abstract updateAssistance(Z)V
.end method

.method public abstract updateEasyWritingPad(Z)V
.end method

.method public abstract updateLastPenTypeSelectionState()V
.end method

.method public abstract updateRedoMenu(Z)V
.end method

.method public abstract updateStateSelected(IZ)V
.end method

.method public abstract updateTextMode(Z)V
.end method

.method public abstract updateUndoMenu(Z)V
.end method

.method public abstract updateVisible(ZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
