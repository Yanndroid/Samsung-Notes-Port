.class Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->createViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearWritingToolControl()V
    .locals 0

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->a(Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPageIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;-><init>()V

    return-object v0
.end method

.method public hasBackgroundImage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public insertPage(I)V
    .locals 0

    return-void
.end method

.method public isActionLinkEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCtrlPressedLast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHyperTextEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Z)V
    .locals 0

    return-void
.end method

.method public onInAppCollaborationCloseButtonClicked()V
    .locals 0

    return-void
.end method

.method public onScroll(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;FI)V
    .locals 0

    return-void
.end method

.method public setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;)V
    .locals 0

    return-void
.end method

.method public setWritingGuideLineEnabled(Z)V
    .locals 0

    return-void
.end method
