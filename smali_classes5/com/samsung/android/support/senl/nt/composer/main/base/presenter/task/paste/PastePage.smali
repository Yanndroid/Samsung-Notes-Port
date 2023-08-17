.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddedPageCount:I

.field private mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private mCopiedNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private mLastPage:Z

.field private mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

.field private mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

.field private final mRestoreFilePath:Ljava/lang/String;

.field private mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private mTargetPageIndex:I

.field private mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskPaste#PastePage"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;Landroid/content/Context;Landroid/os/Handler;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mLastPage:Z

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    iput-object p7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    iput-object p8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    iput-object p9, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mRestoreFilePath:Ljava/lang/String;

    iput p10, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mTargetPageIndex:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mAddedPageCount:I

    return-void
.end method

.method private checkBodyTextLimit(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getTextLengthByEmptyBodyTextPage(ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;)I

    move-result p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkBodyTextLimit# TextLengthByEmptyBodyTextPage:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->isAvailableBodyTextLimit(I)Z

    move-result p1

    return p1
.end method

.method private closeCopiedNote()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mCopiedNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const-string v1, "closeCopiedNote# "

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mCopiedNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mCopiedNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private completePaste()V
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completePaste# mAddedPageCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mAddedPageCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mAddedPageCount:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->updateDummyPage()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->setBlockNotiToInsert(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mTargetPageIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageCount()I

    move-result v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->notifyDataSetChanged(III)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mTargetPageIndex:I

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mAddedPageCount:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->setCurrentPageIndex(IZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->commitHistory()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->closeCopiedNote()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;->release()V

    return-void
.end method

.method private handlePastePage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePastePage# start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne v1, v2, :cond_0

    const-string p1, "handlePastePage# user try to paste pages on single mode"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->setErrorCode(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->closeCopiedNote()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;->release()V

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->pastePage(I)V

    return-void
.end method

.method private isAvailableBodyTextLimit(I)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextLimit()I

    move-result v2

    if-ge v2, p1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "availableBodyTextLimit# Text limit error. bodyTextLength:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", totalTextLength:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private pastePage(I)V
    .locals 13

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pastePage# start loadPageIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mCopiedNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v1

    if-ge p1, v1, :cond_6

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mTargetPageIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mAddedPageCount:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mCopiedNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v3, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v8

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mCopiedNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pastePage# getPage insetIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectCount(Z)I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v3, v12}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;

    const-string v5, "page_copy_bookmark_key"

    invoke-virtual {v3, v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v12

    :goto_0
    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->getObjectList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v12}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->getObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-object v9, v3

    goto :goto_1

    :cond_1
    move-object v9, v4

    :goto_1
    move v3, v5

    goto :goto_2

    :cond_2
    move-object v9, v4

    move v3, v12

    :goto_2
    invoke-direct {p0, v9, v1, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->checkBodyTextLimit(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->setErrorCode(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->completePaste()V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v6

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v7

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mCopiedNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyTextFontSizeDelta()I

    move-result v10

    const/4 v11, 0x0

    move v5, v1

    invoke-virtual/range {v4 .. v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->insertPage(IIILcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;IZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNotePdfData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;->setHavingPdf(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V

    iget-boolean v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mUpdateInvertBG:Z

    if-nez v5, :cond_4

    sget-object v5, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;->None:Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/a;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getInvertBackgroundColorType(Ljava/util/List;)Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;

    move-result-object v6

    if-eq v5, v6, :cond_4

    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mUpdateInvertBG:Z

    :cond_4
    iget v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mAddedPageCount:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mAddedPageCount:I

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getBookmarkModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move v6, v1

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->update(Ljava/lang/String;IZZZ)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v1, v2, p1, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->completePaste()V

    :goto_3
    const-string p1, "pastePage# done"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private readyPastePage(Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getMdeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->setErrorCode(I)V

    return v0

    :cond_0
    new-instance v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultWidth()I

    move-result v4

    const/16 v5, 0x3e8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;IIZZZ)V

    iput-object v9, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mCopiedNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->TAG:Ljava/lang/String;

    const-string v1, "readyPastePage# new SpenWNote"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mTargetPageIndex:I

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->isDummyPage(II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mTargetPageIndex:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mTargetPageIndex:I

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mLastPage:Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mTargetPageIndex:I

    invoke-virtual {v1, v3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->isLastPage(II)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    :goto_2
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->setErrorCode(I)V

    return v0
.end method

.method private updateDummyPage()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mLastPage:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->updateDummyPage()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->handlePastePage(Landroid/os/Message;)V

    return-void
.end method

.method public readyContents()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mRestoreFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->readyPastePage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->TAG:Ljava/lang/String;

    const-string v1, "pastePage"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->addFileLog(Ljava/lang/String;Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mIsReleased:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->setBlockNotiToInsert(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->setBlockNotiToInsert(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mContext:Landroid/content/Context;

    return-void
.end method
