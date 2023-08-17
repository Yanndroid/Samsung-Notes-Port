.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;
.super Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mDragAndDropController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;

.field public mDragAndDropInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;

.field public mExecuteOtherActivityController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController;

.field public mIsReleased:Z

.field public mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field public mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

.field public mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

.field public mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ControlObjectListenerImpl"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mIsReleased:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getExecuteOtherActivityController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mExecuteOtherActivityController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mDragAndDropController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    return-void
.end method

.method private canSelectItemByFinger(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->isOnFingerDrawing()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canSelectItemByTool(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->getMode()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Text:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private createLinkIntent(Lcom/samsung/android/sdk/pen/document/SpenObjectLink;)Landroid/content/Intent;
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->getAction()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "key_action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "key_mimeType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "key_uri"

    if-eqz v3, :cond_0

    const/high16 p1, 0x10000000

    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/UriFileUtils;->isContentSecMedia(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->getOption()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/UriFileUtils;->getUriFromExtFilePath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :cond_1
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper;-><init>()V

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper;->setExtraToIntent(Landroid/content/Intent;Lorg/json/JSONObject;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createLinkIntent# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private deselect(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->clearSelectObject()V

    return v3

    :cond_0
    return v1
.end method

.method private isOnFingerDrawing()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->getMode()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Writing:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->isSpenOnlyMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private selectTextBox(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->setFocusedTextBox(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->setFocus(Z)V

    return v0
.end method


# virtual methods
.method public canDeselectObject(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->View:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public executeBrush(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isEditable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "executeBrush# not editable"

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isAllContentFileAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "executeBrush# file not available"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->View:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Writing:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v0, v1, p2, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->setMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;Ljava/lang/String;Z)V

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditMode()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->setClickedObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->requestReadyForSave()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mExecuteOtherActivityController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;->getAttachedFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;->getThumbnailPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController;->executeBrush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "401"

    const-string p2, "3536"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onClickedLinkCard(Lcom/samsung/android/sdk/pen/document/SpenObjectLink;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickedLinkCard# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->createLinkIntent(Lcom/samsung/android/sdk/pen/document/SpenObjectLink;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/IntentUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onClickedWebCard(Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;)V
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard;-><init>()V

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)Z

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->getAttachedHTMLFile()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "401"

    const-string v1, "301"

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string p1, "3301"

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    const-string p1, "3010"

    :goto_2
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onItemButtonClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemButtonClicked# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mIsReleased:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/16 v2, 0xe

    if-ne v0, v2, :cond_1

    const-string v0, "onItemButtonClicked"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->executeBrush(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/16 v2, 0xd

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->onClickedWebCard(Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;)V

    return v3

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/16 v2, 0x11

    if-ne v0, v2, :cond_3

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->onClickedLinkCard(Lcom/samsung/android/sdk/pen/document/SpenObjectLink;)Z

    return v3

    :cond_3
    return v1
.end method

.method public onItemClicked(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 4

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->getTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClicked# toolType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / objectType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mIsReleased:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->canSelectItemByFinger(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->canSelectItemByTool(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->selectTextBox(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    const/4 p1, 0x3

    const-string p2, "4022"

    const-string v2, "401"

    if-ne v0, p1, :cond_4

    const-string p1, "1"

    :goto_1
    invoke-static {v2, p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/16 p1, 0xe

    if-ne v0, p1, :cond_5

    const-string p1, "3"

    goto :goto_1

    :cond_5
    :goto_2
    return v1
.end method

.method public onItemLongClicked(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 4

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->getTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemLongClicked# tooltype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / objectType = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedItemClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mIsReleased:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->ComposerActivity:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->getTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSelectedItemClicked# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    if-ne v0, v2, :cond_3

    const-string v0, "onSelectedItemClicked"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->executeBrush(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->canDeselectObject(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->deselect(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    return p1

    :cond_4
    return v1
.end method

.method public onSelectedItemLongClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectedItemLongClicked# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mIsReleased:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTypeUtil;->isTextType(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isFocusedTextBox()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v0

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)[I

    move-result-object p1

    aget v0, p1, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    if-ne v0, p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSelectedItemLongClicked# The text is not selected."

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mDragAndDropController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mDragAndDropInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->executeDragAndDrop(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;)Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSelectedItemLongClicked# SelectedObjectList is empty"

    goto :goto_0
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mExecuteOtherActivityController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ExecuteOtherActivityController;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mDragAndDropController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->release()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mDragAndDropController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mIsReleased:Z

    return-void
.end method

.method public setDragAndDropInfo(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ControlObjectListenerImpl;->mDragAndDropInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;

    return-void
.end method
