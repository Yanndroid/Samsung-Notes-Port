.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$ObserverInvertBackgroundColor;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$ObserverBackgroundColor;
    }
.end annotation


# static fields
.field private static final INITIAL_PAGE_COUNT_BASE:I = 0x2

.field private static final STATE_COPYING:I = 0x1

.field private static final STATE_NONE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundColor:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

.field private mBgObserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$ObserverBackgroundColor;",
            ">;"
        }
    .end annotation
.end field

.field private mCancel:Z

.field private mCurrentWorkingState:I

.field private mDefTemplatePath:Ljava/lang/String;

.field private mDefTemplateType:I

.field private mDocRatio:F

.field private mInvertBgObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$ObserverInvertBackgroundColor;

.field private mIsChangedInvertBGAndNotify:Z

.field private mIsSingleMode:Z

.field private mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private final mNotePdfData:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;

.field private mSpenNotePageLayouter:Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

.field private mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

.field private mTextOnlyModeState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NoteManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mBackgroundColor:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mCurrentWorkingState:I

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNotePdfData:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private changePage(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isGroupingHistory()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->beginHistoryGroup()Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v3, p2, -0x2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->insertPage(IIIILcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;IZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->removePage(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNotePageLayouter:Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;->requestPageLayout()V

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->endHistoryGroup()Z

    :cond_1
    return-void
.end method

.method private getImageMode()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mIsSingleMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method private stopVoicePlaying(I)Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->getObjectVoice()Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "stopVoice# stopped. hashCode : "

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    const/16 v4, 0x200

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectList(I)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->hashCode()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopPlaying()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getVoiceDataList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v3, p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopPlaying()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private stopVoiceRecording(I)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecordingActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getVoiceDataList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopRecording()V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->TAG:Ljava/lang/String;

    const-string v0, "stopVoiceRecording#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private updateTextOnlyMode(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mTextOnlyModeState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;->canUseTextOnlyMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mTextOnlyModeState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;->setCanUseTextOnlyMode(ZI)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addBackgroundColorObserver(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$ObserverBackgroundColor;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mBgObserverList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mBgObserverList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mBgObserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPages(IIIZZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZZ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;"
        }
    .end annotation

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addPages# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array p2, p1, [I

    invoke-static {p2, p3}, Ljava/util/Arrays;->fill([II)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p3, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->appendPageList([I)Ljava/util/ArrayList;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p3, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {p0, p3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->copyBackground(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNotePageLayouter:Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;->requestPageLayout()V

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->commitHistory()V

    if-eqz p5, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->combineLastUndo(I)Z

    :cond_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->TAG:Ljava/lang/String;

    const-string p3, "addPages# end"

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public changePageHeight(Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultWidth()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getHeight(I)I

    move-result v4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setPageDefaultHeight(I)V

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->addPages(IIIZZ)Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->deletePageList(Ljava/util/List;ZZ)Ljava/util/List;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->clearHistory()V

    return-void
.end method

.method public clearPage(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageIndexById(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_1
    const/4 p2, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isGroupingHistory()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->beginHistoryGroup()Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->lockBodyTextPage()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->removeAllObject()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->clearBodyTextIn(I)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->unlockBodyTextPage()V

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->endHistoryGroup()Z

    :cond_3
    return-void
.end method

.method public commitHistory()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->commitHistory(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;)V

    return-void
.end method

.method public copyBackground(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getBackgroundColor()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundColor(IZ)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getPDFData()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->setPdfTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mDefTemplateType:I

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mDefTemplatePath:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p2, p1, v0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->setTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundImageId()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->setTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;IILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public copyPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/List;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mCurrentWorkingState:I

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mCancel:Z

    if-eqz v3, :cond_0

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->TAG:Ljava/lang/String;

    const-string p3, "copyPage# cancel"

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mCancel:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mCurrentWorkingState:I

    return v1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v6

    invoke-virtual {p1, v3, v6}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->copyPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {p1, v4, v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->appendPage(II)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;

    invoke-direct {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;->getIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->copyBodyTextFrom(I)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v5

    const-string v6, "page_copy_bookmark_key"

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;->isBookmarked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {v4, v6, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setExtraDataInt(Ljava/lang/String;I)V

    if-eqz v5, :cond_2

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_2
    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->getTextSizeDelta()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setBodyTextFontSizeDelta(I)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->saveAsDirectory(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move p2, v0

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    :goto_2
    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyPage# e :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v1

    :goto_3
    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mCurrentWorkingState:I

    return p2
.end method

.method public deleteBackgroundColorInvertedAndNotify()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->isBackgroundColorInverted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->TAG:Ljava/lang/String;

    const-string v1, "deleteBackgroundColorInverted#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mIsChangedInvertBGAndNotify:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->invertBackgroundColor(Z)V

    return-void
.end method

.method public deletePage(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->deletePage(IZZ)V

    return-void
.end method

.method public deletePage(IZZ)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePage# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isGroupingHistory()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->beginHistoryGroup()Z

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->isLastPage(II)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {p3, p1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->removeBodyTextFrom(I)Z

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p3, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->removePage(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNotePageLayouter:Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;->requestPageLayout()V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->updateDummyPage()V

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->endHistoryGroup()Z

    :cond_3
    return-void
.end method

.method public deletePageList(Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->deletePageList(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public deletePageList(Ljava/util/List;ZZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePageList# start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isGroupingHistory()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->beginHistoryGroup()Z

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/CollectionHelper;->toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->removeBodyTextFrom(Ljava/util/ArrayList;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->isLastPage(II)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->removePageList(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNotePageLayouter:Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;->requestPageLayout()V

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->updateDummyPage()V

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->endHistoryGroup()Z

    :cond_4
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->TAG:Ljava/lang/String;

    const-string p2, "deletePageList# end"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public getBackgroundColor()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mBackgroundColor:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundColor()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mBackgroundColor:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBackgroundColor# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mBackgroundColor:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mBackgroundColor:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;->intValue()I

    move-result v0

    return v0
.end method

.method public getDefTemplatePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mDefTemplatePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDefTemplateType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mDefTemplateType:I

    return v0
.end method

.method public getNewPageSize(I)[I
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x10

    if-ne v1, v4, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v0

    move v1, v2

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->isDummyPage(II)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultWidth()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultHeight()I

    move-result v0

    :goto_0
    move v1, v3

    :goto_1
    sget-object v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNewPageSize# "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " pdf: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput p1, v1, v3

    aput v0, v1, v2

    return-object v1
.end method

.method public getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-object v0
.end method

.method public getNotePdfData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNotePdfData:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;

    return-object v0
.end method

.method public getPageThumbnail(Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setContents(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->capturePage(F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public init(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNotePdfData:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;->setNoteKey(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mDocRatio:F

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mIsSingleMode:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mCancel:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mBackgroundColor:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    return-void
.end method

.method public insertDefaultPage(IIIILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->lockBodyTextPage()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->insertPage(III)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundColor(I)V

    invoke-virtual {p0, p2, p4, p5, p6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->setTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNotePageLayouter:Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;->requestPageLayout()V

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    iget p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mDocRatio:F

    invoke-virtual {p4, p1, p3, p5}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->insertEmptyBodyTextTo(IIF)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->unlockBodyTextPage()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isGroupingHistory()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->commitHistory()V

    :cond_0
    return-object p2
.end method

.method public insertNewPageByCurrentPage(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->lockBodyTextPage()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 v2, 0x1

    add-int/2addr p1, v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v4

    invoke-virtual {v1, p1, v3, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->insertPage(III)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getBackgroundColor()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundColor(IZ)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getPDFData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->setPdfTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->setTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundImageId()I

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->setTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;IILjava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNotePageLayouter:Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;->requestPageLayout()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mDocRatio:F

    invoke-virtual {v1, p1, v0, v2}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->insertEmptyBodyTextTo(IIF)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->unlockBodyTextPage()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->commitHistory()V

    return-void
.end method

.method public insertPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 10

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNewPageSize(I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v4, v0, v1

    const/4 v1, 0x1

    aget v5, v0, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->insertPage(IIILcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;IZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1
.end method

.method public insertPage(II)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 11

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNewPageSize(I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v5, v0, v1

    const/4 v1, 0x1

    aget v6, v0, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->insertPage(IIIILcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;IZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1
.end method

.method public insertPage(IIIILcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;IZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertPage# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " w/h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / src index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    invoke-direct {p0, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->updateTextOnlyMode(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->lockBodyTextPage()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p2, p5, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->copyPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getBackgroundColor()I

    move-result p3

    const/4 p5, 0x1

    invoke-virtual {p2, p3, p5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundColor(IZ)V

    goto :goto_0

    :cond_1
    iget-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p5, p1, p3, p4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->insertPage(III)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->copyBackground(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V

    move-object p2, p3

    :goto_0
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNotePageLayouter:Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;->requestPageLayout()V

    if-eqz p6, :cond_3

    invoke-virtual {p6}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mDocRatio:F

    move v2, p1

    move v3, p4

    move-object v5, p6

    move v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->insertBodyTextTo(IIFLcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)Z

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    iget p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mDocRatio:F

    invoke-virtual {p3, p1, p4, p5}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->insertEmptyBodyTextTo(IIF)Z

    :goto_2
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->unlockBodyTextPage()V

    if-eqz p8, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->commitHistory()V

    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "insertPage# finish "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public insertPage(IIILcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;IZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->insertPage(IIIILcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;IZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v0

    return-object v0
.end method

.method public invertBackgroundColor(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invertBackgroundColor# color : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", invert : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasBackgroundImage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->hasBackgroundImage(Ljava/util/List;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->invertBackgroundColor(Z)V

    return-void
.end method

.method public isBackgroundColorInverted()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isBackgroundColorInverted()Z

    move-result v0

    return v0
.end method

.method public isDummyPage(II)Z
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInitialPageCount()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLastPage(II)Z
    .locals 0

    add-int/lit8 p2, p2, -0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isObjectEmpty(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectCount(Z)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public movePage(II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isGroupingHistory()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->beginHistoryGroup()Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->lockBodyTextPage()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->movePageIndex(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNotePageLayouter:Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;->requestPageLayout()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mDocRatio:F

    invoke-virtual {v1, p1, p2, v2}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->moveBodyTextTo(IIF)Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->unlockBodyTextPage()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->isLastPage(II)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->isLastPage(II)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->updateDummyPage()V

    :cond_2
    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->endHistoryGroup()Z

    :cond_3
    return-void
.end method

.method public notifyBackgroundColorChange()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mBgObserverList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mBgObserverList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$ObserverBackgroundColor;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getBackgroundColor()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->isBackgroundColorInverted()Z

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->hasBackgroundImage(Ljava/util/List;)Z

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$ObserverBackgroundColor;->onChangedBackgroundColor(IZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyInvertBackgroundColor(Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mInvertBgObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$ObserverInvertBackgroundColor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$ObserverInvertBackgroundColor;->onUpdateInvertBackgroundColor(Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;)V

    return-void
.end method

.method public replacePage(IIIILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->insertDefaultPage(IIIILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p3, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->removePage(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNotePageLayouter:Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;->requestPageLayout()V

    return-object p2
.end method

.method public setBackgroundColor(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackgroundColor# color : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", invert : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->isBackgroundColorInverted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasBackgroundImage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->hasBackgroundImage(Ljava/util/List;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setBackgroundColor(IZ)V

    return-void
.end method

.method public setCancelState()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mCurrentWorkingState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mCancel:Z

    :cond_0
    return-void
.end method

.method public setCursorOnScreen(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->setCursorOnScreen(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)V

    return-void
.end method

.method public setCustomTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setTemplateType(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getImageMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundImageMode(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundImage(IZ)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setTemplateURI(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->updateTextOnlyMode(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V

    return-void
.end method

.method public setDefaultTemplate(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mDefTemplateType:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mDefTemplatePath:Ljava/lang/String;

    return-void
.end method

.method public setInvertBackgroundColorObserver(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$ObserverInvertBackgroundColor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mInvertBgObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$ObserverInvertBackgroundColor;

    return-void
.end method

.method public setPdfTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setTemplateType(I)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setPDFData(Ljava/util/ArrayList;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->updateTextOnlyMode(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V

    return-void
.end method

.method public setSpenNotePageLayouter(Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNotePageLayouter:Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

    return-void
.end method

.method public setSpenNoteTextManager(Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    return-void
.end method

.method public setSpenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-void
.end method

.method public setTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;IILjava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getImageMode()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->setTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;IILjava/lang/String;I)V

    return-void
.end method

.method public setTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;IILjava/lang/String;I)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setTemplateType(I)V

    invoke-virtual {p1, p5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundImageMode(I)V

    const/4 p2, -0x1

    if-eq p3, p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundImage(IZ)V

    :cond_0
    invoke-virtual {p1, p4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setTemplateURI(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->updateTextOnlyMode(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V

    return-void
.end method

.method public setTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getImageMode()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->setTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setTemplateType(I)V

    invoke-virtual {p1, p5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundImageMode(I)V

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundImage(Ljava/lang/String;Z)V

    invoke-virtual {p1, p4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setTemplateURI(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->updateTextOnlyMode(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V

    return-void
.end method

.method public setTextInputBlock(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setTextInputBlock(Z)V

    :cond_0
    return-void
.end method

.method public setTextOnlyModeState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mTextOnlyModeState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    return-void
.end method

.method public stopVoice(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->stopVoiceRecording(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->stopVoicePlaying(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public stopVoicePlayingOnly(II)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->getObjectVoice()Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectList(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->hashCode()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopPlaying()V

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopVoice# stopped. page : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public updateBackgroundColor(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mBackgroundColor:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->TAG:Ljava/lang/String;

    const-string v0, "updateBackgroundColor# mBackgroundColor is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mBackgroundColor:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;->setValue(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->notifyBackgroundColorChange()V

    const/4 p1, 0x1

    return p1
.end method

.method public updateBodyTextPage()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->updateBodyTextPage()V

    :cond_0
    return-void
.end method

.method public updateDummyPage()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundImagePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->changePage(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result v3

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getPDFData()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getPDFData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;->getBoundFileId()I

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;->getBoundFileId()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget v3, v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;->index:I

    iget v2, v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;->index:I

    if-eq v3, v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public updateInvertBackgroundColor()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->isBackgroundColorInverted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mIsChangedInvertBGAndNotify:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getInvertBackgroundColorType(Ljava/util/List;)Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;->None:Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->invertBackgroundColor(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->notifyBackgroundColorChange()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->notifyInvertBackgroundColor(Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;)V

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->mIsChangedInvertBGAndNotify:Z

    const/4 v0, 0x1

    return v0
.end method
