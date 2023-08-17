.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;->createPageSettingViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView$Presenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageRatio()Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPageSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPageSettingPresenter;->getPageRatio()Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    move-result-object v0

    return-object v0
.end method

.method public isCoeditNote()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPageSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPageSettingPresenter;->isCoeditNote()Z

    move-result v0

    return v0
.end method

.method public isPageRatioAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPageSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPageSettingPresenter;->isPageRatioAvailable()Z

    move-result v0

    return v0
.end method

.method public isScrollVertical()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPageSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPageSettingPresenter;->isScrollVertical()Z

    move-result v0

    return v0
.end method

.method public isTwoPage()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPageSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPageSettingPresenter;->isTwoPage()Z

    move-result v0

    return v0
.end method

.method public isTwoPageEnabled(Landroid/app/Activity;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPageSettingPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPageSettingPresenter;->isTwoPageEnabled(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public setPageRatio(Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPageSettingPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPageSettingPresenter;->setPageRatio(Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;)V

    return-void
.end method

.method public setTwoPage()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPageSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPageSettingPresenter;->setTwoPage()V

    return-void
.end method

.method public setVerticalOnePage(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPageSettingPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPageSettingPresenter;->setVerticalOnePage(Z)V

    return-void
.end method
