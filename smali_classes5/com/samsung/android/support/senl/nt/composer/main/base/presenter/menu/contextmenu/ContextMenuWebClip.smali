.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;
.source "SourceFile"


# static fields
.field private static final MAPS_URL_APP:Ljava/lang/String; = "https://maps.app.goo.gl"

.field private static final MAPS_URL_WEB:Ljava/lang/String; = "https://www.google.com/maps"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private final mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

.field private final mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

.field private final mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field private final mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

.field private final mPdfManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

.field private final mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

.field private final mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

.field private final mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ContextMenuWebClip"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPdfManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mPdfManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    return-object p0
.end method

.method private addWebClip(Ljava/lang/String;)V
    .locals 10

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->TAG:Ljava/lang/String;

    const-string v1, "addWebClip#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result v9

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$InputValues;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mPdfManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-object v1, v0

    move-object v8, p1

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$InputValues;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;-><init>()V

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)Z

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->showErrorToast(I)V

    return-void
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private isMapUri(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "https://maps.app.goo.gl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://www.google.com/maps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private showErrorToast(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showErrorToast#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->showErrorToast(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public addMenu(Landroid/view/Menu;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;->CONTEXT_MENU_ID_WEB_CLIP:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;->getId()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;->getId()I

    move-result v0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_ctx_menu_web_clip:I

    const/4 v3, 0x0

    invoke-interface {p1, v3, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->canShow()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public canShow()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isSingleMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v4, :cond_4

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->isMapUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v1, v3

    :cond_3
    return v1

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    const/16 v4, 0x11

    if-ne v2, v4, :cond_5

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->getOption()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->isMapUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v1, v3

    :cond_5
    :goto_0
    return v1
.end method

.method public executeMenu()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->TAG:Ljava/lang/String;

    const-string v1, "executeWebClipMenu#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    instance-of v2, v1, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->getUri()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->getOption()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "url is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->addWebClip(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuWebClip;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->clearSelectObject()V

    return-void
.end method
