.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApplyToAll:Z

.field private final mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

.field private final mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private mCurrentPageIndex:I

.field private final mEnabledPopupDialog:Z

.field private mIsPickerMode:Z

.field private mIsTwoPage:Z

.field private final mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

.field private final mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field private final mOptionMenuAddPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

.field private final mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

.field private mPageToChange:I

.field private final mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

.field private mTemplateIndex:I

.field private mTemplatePath:Ljava/lang/String;

.field private mTemplateType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OptionMenuChangeTemplate"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mOptionMenuAddPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mEnabledPopupDialog:Z

    return-void
.end method

.method private loadTemplateResult(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "template_type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplateType:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const-string v0, "template_essential_result"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplateIndex:I

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplatePath:Ljava/lang/String;

    goto :goto_2

    :cond_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    const/16 v0, 0xc

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplateIndex:I

    const-string v0, "template_image_result"

    goto :goto_1

    :cond_1
    const/16 v0, 0x10

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplateIndex:I

    const-string v0, "template_pdf_result"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_2
    const-string v0, "template_apply_to_all"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mApplyToAll:Z

    const-string v0, "template_page_to_change"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mPageToChange:I

    const-string v0, "template_picker_mode"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mIsPickerMode:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getCurrentPageIndex()I

    move-result v0

    const-string v1, "template_page_index"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCurrentPageIndex:I

    if-gez p1, :cond_2

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCurrentPageIndex:I

    :cond_2
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadTemplateResult# templateType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplateType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", templateIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplateIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", templatePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplatePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", applyToAll:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mApplyToAll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pageToChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mPageToChange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPickerMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mIsPickerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "template:T-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplateType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/I-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplateIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/A-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mApplyToAll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/P-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mPageToChange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/PI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mIsPickerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->addFileLog(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private setCustomTemplateAll(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplatePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->registerFile(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplatePath:Ljava/lang/String;

    invoke-virtual {v4, v3, v0, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->setCustomTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getThumbnailUpdateHandler()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->updateThumbnail(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->TAG:Ljava/lang/String;

    const-string v0, "setCustomTemplateAll# done"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private setDefaultTemplateAll(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->setTemplatePageIndex(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->TAG:Ljava/lang/String;

    const-string v0, "setDefaultTemplateAll# done"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setTemplatePageIndex(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->setTemplatePageIndex(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;IZ)V

    return-void
.end method

.method private setTemplatePageIndex(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;IZ)V
    .locals 2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mIsPickerMode:Z

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->updateDummyPage()V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplateIndex:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplatePath:Ljava/lang/String;

    invoke-virtual {p3, p1, v0, v1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->setTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getThumbnailUpdateHandler()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->updateThumbnail(I)V

    :goto_0
    return-void
.end method

.method private setupIntentTemplateInfo()Landroid/content/Intent;
    .locals 15

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isSingleMode()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSpenDocModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCurrentPageIndex:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->hasPdf(I)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSpenDocModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCurrentPageIndex:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->getPageWidth(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSpenDocModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCurrentPageIndex:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->getPageHeight(I)I

    move-result v3

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mIsTwoPage:Z

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->PAGE_RATIO:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getHeight(I)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->isTwoPage()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->getTwoPageRightIndex()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageCount()I

    move-result v7

    sub-int/2addr v7, v5

    if-ge v6, v7, :cond_1

    iput-boolean v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mIsTwoPage:Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSpenDocModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->getTwoPageLeftIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->hasPdf(I)Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->getTwoPageRightIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->hasPdf(I)Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->getTwoPageLeftIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->getPageWidth(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->getTwoPageLeftIndex()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->getPageHeight(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->getTwoPageRightIndex()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->getPageWidth(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->getTwoPageRightIndex()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->getPageHeight(I)I

    move-result v1

    move v14, v6

    move v6, v1

    move v1, v2

    move v2, v3

    move v3, v14

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v4

    move v7, v6

    :goto_1
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v9, "template_single_mode"

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v9, "template_has_pdf_page"

    invoke-virtual {v8, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v9, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mIsTwoPage:Z

    const-string v10, "template_is_two_page"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v9, "template_has_pdf_page_next"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v9, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCurrentPageIndex:I

    const-string v10, "template_page_index"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "template_page_width"

    invoke-virtual {v8, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "template_page_height"

    invoke-virtual {v8, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "template_next_page_width"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "template_next_page_height"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v9

    iget v10, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCurrentPageIndex:I

    invoke-virtual {v9, v10}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCurrentPageIndex:I

    invoke-virtual {v10, v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateURI()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xc

    const-string v12, "template_name"

    const-string v13, "template_type"

    if-ne v9, v11, :cond_2

    const/4 v5, 0x3

    :goto_2
    invoke-virtual {v8, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v8, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_2
    const/16 v11, 0x10

    if-ne v9, v11, :cond_3

    const/4 v5, 0x5

    goto :goto_2

    :cond_3
    invoke-virtual {v8, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    sget-object v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setupIntentTemplateInfo#  singleMode:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasPDFPage:"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isTwoPage:"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mIsTwoPage:Z

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasPDFPageNext:"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", page = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", templateType:"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", templateName:"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method private updateTemplateResultApplyToAll(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplateIndex:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->setCustomTemplateAll(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->setDefaultTemplateAll(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->updateInvertBackgroundColor()Z

    return-void
.end method

.method private updateTemplateResultOnePage(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCurrentPageIndex:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCurrentPageIndex:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->updateTemplateResultOnePageHasPdf(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCurrentPageIndex:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->updateTemplateResultOnePageNormal(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)V

    :goto_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTemplateResultOnePage# mCurrentPageIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCurrentPageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->updateInvertBackgroundColor()Z

    return-void
.end method

.method private updateTemplateResultOnePageHasPdf(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isGroupingHistory()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->beginHistoryGroup()Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->getPageRatioTypeFromSettings()Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mIsPickerMode:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getHeight(I)I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getPageRatio()F

    move-result v1

    invoke-static {v3, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->getPageRatio(IIF)F

    move-result v1

    int-to-float v2, v3

    mul-float/2addr v2, v1

    float-to-int v1, v2

    move v2, v3

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {v3, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->isDummyPage(II)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    add-int/lit8 v5, p2, 0x1

    iget v8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplateIndex:I

    iget-object v10, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplatePath:Ljava/lang/String;

    move v6, v2

    move v7, v1

    move-object v9, v10

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->insertDefaultPage(IIIILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {v3, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->isDummyPage(II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    iget v8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplateIndex:I

    iget-object v10, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplatePath:Ljava/lang/String;

    move v5, p2

    move v6, v2

    move v7, v1

    move-object v9, v10

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->replacePage(IIIILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move p1, p2

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {v3, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->isLastPage(II)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    add-int/lit8 v5, p2, 0x2

    iget v8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplateIndex:I

    iget-object v10, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplatePath:Ljava/lang/String;

    move v6, v2

    move v7, v1

    move-object v9, v10

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->replacePage(IIIILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    :cond_4
    add-int/lit8 p1, p2, 0x1

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isSingleMode()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;->goToPage(I)V

    :cond_5
    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->endHistoryGroup()Z

    :cond_6
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTemplateResultOnePageHasPdf# pageIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateTemplateResultOnePageNormal(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->setTemplatePageIndex(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isSingleMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;->goToPage(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {v1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->isLastPage(II)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->setTemplatePageIndex(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;IZ)V

    :cond_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTemplateResultOnePageNormal# pageIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateTemplateResultPageToChange(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->getTwoPageLeftIndex()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mPageToChange:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->setTemplatePageIndex(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)V

    :cond_1
    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mPageToChange:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->getTwoPageRightIndex()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->setTemplatePageIndex(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {v4, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->isLastPage(II)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/2addr v1, v3

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->setTemplatePageIndex(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)V

    :cond_3
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTemplateResultPageToChange# PageToChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mPageToChange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pageIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->updateInvertBackgroundColor()Z

    return-void
.end method

.method private updateTemplateResultTwoPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->getTwoPageLeftIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->updateTemplateResultOnePageNormal(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->getTwoPageRightIndex()I

    move-result v3

    sub-int/2addr v1, v2

    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->updateTemplateResultOnePageHasPdf(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->updateTemplateResultOnePageNormal(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)V

    :cond_2
    :goto_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->TAG:Ljava/lang/String;

    const-string v0, "updateTemplateResultTwoPage# done"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->updateInvertBackgroundColor()Z

    return-void
.end method


# virtual methods
.method public getTwoPageLeftIndex()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCurrentPageIndex:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getTwoPageLeftIndex(I)I

    move-result v0

    return v0
.end method

.method public getTwoPageRightIndex()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCurrentPageIndex:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getTwoPageRightIndex(I)I

    move-result v0

    return v0
.end method

.method public isTwoPage()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getCvPageSettingController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->getPageLayoutState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->isTwoPage()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "template_result"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->updateTemplateResult(Landroid/content/Intent;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->commitHistory()V

    return-void
.end method

.method public startChangeTemplateActivity(Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getCurrentPageIndex()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCurrentPageIndex:I

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isSingleMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSpenDocModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCurrentPageIndex:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->hasPdf(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->change_template_unable_to_apply_to_pages_imported_from_pdfs:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->clearSelection()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverUtils;->isAbleToSetAnchor(Landroid/content/Context;)Z

    move-result v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startChangeTemplateActivity# mCurrentPageIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCurrentPageIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isTabletModel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->setupIntentTemplateInfo()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplatesActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mEnabledPopupDialog:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->ChangeTemplate:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->getId()I

    move-result v0

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverActivityWrapper;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;II)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->ChangeTemplate:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->getId()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setLastRequestCode(I)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startChangeTemplateActivity# error mCurrentPageIndex ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mCurrentPageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", page count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateTemplateResult(Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->loadTemplateResult(Landroid/content/Intent;)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplateIndex:I

    const/16 v1, 0x10

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplatePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->ReadOnly:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->getPrevMode()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->setMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;Ljava/lang/String;Z)V

    :cond_1
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$ParamFactory;

    const/4 v1, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mTemplatePath:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$ParamFactory;-><init>(Ljava/util/List;Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mIsPickerMode:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$ParamFactory;->setByTemplate(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$ParamFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$ParamFactory;->create()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mOptionMenuAddPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;->getOptionMenuPdfPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter;->handlePdfUri(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;)V

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mIsPickerMode:Z

    if-eqz p1, :cond_3

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->updateTemplateResultOnePage(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void

    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mApplyToAll:Z

    if-eqz p1, :cond_4

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->updateTemplateResultApplyToAll(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void

    :cond_4
    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mPageToChange:I

    if-eqz p1, :cond_5

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->updateTemplateResultPageToChange(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void

    :cond_5
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->mIsTwoPage:Z

    if-eqz p1, :cond_6

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->updateTemplateResultTwoPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void

    :cond_6
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuChangeTemplate;->updateTemplateResultOnePage(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void
.end method
