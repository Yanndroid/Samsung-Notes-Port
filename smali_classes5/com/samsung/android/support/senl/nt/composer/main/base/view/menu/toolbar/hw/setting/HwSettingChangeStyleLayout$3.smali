.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$SpenPaletteChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->setInfoChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaletteChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->onPaletteChanged(Ljava/util/List;)V

    return-void
.end method
