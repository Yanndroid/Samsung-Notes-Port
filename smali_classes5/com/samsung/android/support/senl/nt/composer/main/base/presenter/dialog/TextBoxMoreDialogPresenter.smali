.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IPresenter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

.field private mIsLastTextCursorBlinking:Z

.field private mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

.field private mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

.field private mTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

.field private mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TextBoxMoreDialogPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    return-object p0
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getObjectEventListener()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    return-object v0
.end method

.method private isAvailableToShow(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->TAG:Ljava/lang/String;

    const-string v1, "isAvailableToShow# dialog is showing"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableToShow# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDetachView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TextBoxMoreDialogPresenter"

    const-string v1, "onDetachView# dialog is attached"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Text:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mIsLastTextCursorBlinking:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->setCursorBlink(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->removeSpenObjectEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    return-void
.end method

.method public show(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Landroid/app/Activity;Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->isAvailableToShow(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Text:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->isSelected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->isCursorBlinking()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mIsLastTextCursorBlinking:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->setCursorBlink(Z)V

    :cond_3
    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0, p4, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;->createTextBoxMoreDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;->show()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getMdeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result p1

    if-eqz p1, :cond_4

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mTextBox:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->getObjectEventListener()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->addSpenObjectEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)V

    :cond_4
    return-void
.end method
