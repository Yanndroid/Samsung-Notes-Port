.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCompSearchController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;

.field private final mCompSipController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;

.field private final mCompVoiceController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerVoiceController;

.field private final mComposerModeController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;

.field private final mComposerSelectionController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSelectionController;

.field private final mCvPageSettingController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;

.field private final mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

.field private final mTextOnlyModeController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->createComposerModeController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mComposerModeController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->createComposerSelectionController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSelectionController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mComposerSelectionController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSelectionController;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mCompSipController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mCompSearchController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerVoiceController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerVoiceController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mCompVoiceController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerVoiceController;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mCvPageSettingController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mTextOnlyModeController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;

    return-void
.end method


# virtual methods
.method public createComposerModeController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;-><init>()V

    return-object v0
.end method

.method public createComposerSelectionController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSelectionController;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSelectionController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSelectionController;-><init>()V

    return-object v0
.end method

.method public getCompSearchController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mCompSearchController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;

    return-object v0
.end method

.method public getCompSipController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mCompSipController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;

    return-object v0
.end method

.method public getCompVoiceController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerVoiceController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mCompVoiceController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerVoiceController;

    return-object v0
.end method

.method public getComposerModeController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mComposerModeController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;

    return-object v0
.end method

.method public getComposerSelectionController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSelectionController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mComposerSelectionController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSelectionController;

    return-object v0
.end method

.method public getCvPageSettingController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mCvPageSettingController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;

    return-object v0
.end method

.method public getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    return-object v0
.end method

.method public getTextOnlyModeController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mTextOnlyModeController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;

    return-object v0
.end method

.method public init(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mComposerSelectionController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSelectionController;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSelectionController;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mCompSipController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;

    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mCompVoiceController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerVoiceController;

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerVoiceController;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mComposerModeController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mCompSearchController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;->init(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mCvPageSettingController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object p3

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mTextOnlyModeController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    return-void
.end method

.method public onAttachView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mCompSipController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;->setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mCompSearchController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;->setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mCompVoiceController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerVoiceController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerVoiceController;->setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mComposerModeController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;->setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;->setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mCvPageSettingController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mTextOnlyModeController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;)V

    return-void
.end method

.method public onDetachView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mCompSipController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;->setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mCompSearchController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;->setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mCompVoiceController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerVoiceController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerVoiceController;->setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mComposerModeController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;->setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;->setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mCvPageSettingController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->mTextOnlyModeController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;)V

    return-void
.end method
