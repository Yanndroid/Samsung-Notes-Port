.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$SpenColorSettingViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->setVisibilityChangeListener()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getHWToolbarState()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->getViewId()I

    move-result v1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;->setColorSettingEnable(IZ)V

    return-void
.end method
