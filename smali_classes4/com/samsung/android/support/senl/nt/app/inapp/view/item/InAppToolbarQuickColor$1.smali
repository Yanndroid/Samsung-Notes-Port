.class Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I[F)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->getViewId()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarConstants$QUICK_COLOR;->getOrdinal(I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onColorChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InAppToolbarQuickColor"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->e(Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->setQuickColorInfo(I[F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->e(Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->applyQuickColor([F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->d(Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;)Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;->updateToolbarSelectionState()V

    return-void
.end method

.method public onViewModeChanged(I)V
    .locals 0

    return-void
.end method
