.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;
.super Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBridgeListenerList:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList<",
            "Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;",
            ">;"
        }
    .end annotation
.end field

.field public mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

.field public mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

.field private final mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

.field private final mTextStateHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SpenObjectSelectListenerImpl"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mTextStateHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mBridgeListenerList:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;

    return-void
.end method

.method private checkMaxCountSelectedObject(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/CoeditRestriction;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/CoeditRestriction;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/CoeditRestriction;->isCoeditMaxCountLimit(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getComposerSelectionController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSelectionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSelectionController;->clearSelection()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$plurals;->plurals_restriction_selected_number:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v4}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->TAG:Ljava/lang/String;

    const-string v0, "checkMaxCountSelectedObject # coedit note & object selected more than max count"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/sa/ComposerSAConstants;->SCREEN_NONE:Ljava/lang/String;

    const-string v0, "7651"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addBridgeListener(Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mBridgeListenerList:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;->addBridgeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public onObjectSelected(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onObjectSelected# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " page : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "bodytext "

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " obj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isSelectedTextBox()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mTextStateHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;->consumeAllMessages()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    if-eqz p3, :cond_4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object p1, v1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Text:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isSelectedTextBox(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->hide(Landroid/view/View;)V

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->updateSelectedObject(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->checkMaxCountSelectedObject(Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v2, v1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->updateSelectedObject(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_3
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mTextStateHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;->consumeAllMessages()V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mBridgeListenerList:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;->onObjectSelected(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public removeBridgeListener(Lcom/samsung/android/sdk/composer/listener/SpenObjectSelectListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mBridgeListenerList:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/BridgeListenerList;->removeBridgeListener(Ljava/lang/Object;)V

    return-void
.end method
