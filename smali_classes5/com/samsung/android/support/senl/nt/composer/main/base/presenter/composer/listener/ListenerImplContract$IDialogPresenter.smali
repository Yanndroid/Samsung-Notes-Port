.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IDialogPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager$IDialogManager;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDialogPresenter"
.end annotation


# virtual methods
.method public abstract dismissConfirmVoiceDialog()V
.end method

.method public abstract dismissConvertSettingDialog()V
.end method

.method public abstract dismissDirectWriteSettingDialog()V
.end method

.method public abstract showConfirmCancelVoiceDialog()V
.end method

.method public abstract showConfirmRemoveItemDialog(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
.end method

.method public abstract showConfirmRemoveRecordingDialog()V
.end method

.method public abstract showConvertSettingDialog()V
.end method

.method public abstract showNotEnoughStorageDialog()V
.end method

.method public abstract showTextBoxMoreDialog(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V
.end method
