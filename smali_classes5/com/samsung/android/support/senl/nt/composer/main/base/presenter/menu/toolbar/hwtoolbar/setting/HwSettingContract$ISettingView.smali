.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingContract$ISettingView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISettingView"
.end annotation


# virtual methods
.method public abstract closeSelectionChangeStyle()V
.end method

.method public abstract hide()Z
.end method

.method public abstract hideColorSpoid()Z
.end method

.method public abstract isOpenSelectionChangeStyle()Z
.end method

.method public abstract notifyChangedRecentColor(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyPaletteSetChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onTouchOutside()Z
.end method

.method public abstract onUpdateEyedropperColor()V
.end method

.method public abstract onUpdateFavoriteButton()V
.end method

.method public abstract setAlignmentOptions(ZZZ)V
.end method

.method public abstract setAssistanceOptions(ZZ)V
.end method

.method public abstract setColorTheme(I)V
.end method

.method public abstract setItemChangeStyleInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V
.end method

.method public abstract setItemHighlighterSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
.end method

.method public abstract setItemPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
.end method

.method public abstract setQuickColorSettingInfo([F)V
.end method

.method public abstract setQuickSizeInfo(I)V
.end method

.method public abstract setRemoverSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
.end method

.method public abstract setSelectedToolbarItem(I)V
.end method

.method public abstract setSelectionSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;)V
.end method

.method public abstract show(II)V
.end method

.method public abstract show(IILandroid/view/View;)V
.end method

.method public abstract showColorPicker(ILandroid/view/View;[F)V
.end method

.method public abstract showEyedropper(ILandroid/view/View;[FLcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$PickerColorChangedListener;)V
.end method

.method public abstract showSelectionChangeStyle(ILcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;ZLandroid/view/View;Landroid/graphics/Rect;)V
.end method

.method public abstract updateBeautifierLanguage(Ljava/lang/String;Z)V
.end method
