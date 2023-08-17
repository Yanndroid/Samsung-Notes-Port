.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$ChangeStyleInfoChangedListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeStyleInfoChanged(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;)Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onChangeStyleInfoChanged# mChangeStyleInfo is null "

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;)Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->copy(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getChangeStyleData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingChangeStyleData;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;)Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->isBlankShape:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingChangeStyleData;->setSelectionBlankShape(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getChangeStyleData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingChangeStyleData;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;)Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingChangeStyleData;->setSelectionType(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->setStyleSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V

    :goto_0
    return-void
.end method
