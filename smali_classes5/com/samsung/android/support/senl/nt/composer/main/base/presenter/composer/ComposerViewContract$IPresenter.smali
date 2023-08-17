.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPresenter"
.end annotation


# virtual methods
.method public abstract clearWritingToolControl()V
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;
.end method

.method public abstract getCurrentPageIndex()I
.end method

.method public abstract getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;
.end method

.method public abstract getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;
.end method

.method public abstract getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;
.end method

.method public abstract getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;
.end method

.method public abstract hasBackgroundImage()Z
.end method

.method public abstract insertPage(I)V
.end method

.method public abstract isActionLinkEnabled()Z
.end method

.method public abstract isCtrlPressedLast()Z
.end method

.method public abstract isHyperTextEnabled()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;Z)V
.end method

.method public abstract onInAppCollaborationCloseButtonClicked()V
.end method

.method public abstract onScroll(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;FI)V
.end method

.method public abstract setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;)V
.end method

.method public abstract setWritingGuideLineEnabled(Z)V
.end method
