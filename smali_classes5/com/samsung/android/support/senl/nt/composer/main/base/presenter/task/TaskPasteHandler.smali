.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field public static final MESSAGE_GET_CONTENTS:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCachePath:Ljava/lang/String;

.field private mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;",
            ">;"
        }
    .end annotation
.end field

.field private mClipData:Landroid/content/ClipData;

.field private mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private mContext:Landroid/content/Context;

.field private mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;

.field private mEnableWebCard:Z

.field private mErrorCode:I

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mIsReleased:Z

.field private final mIsTakingMsg:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

.field private mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

.field private mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field private mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

.field private mPasteLogic:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;

.field private mPastePosition:Landroid/graphics/PointF;

.field private mPdfManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

.field private mPlainTextFlags:Z

.field private mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

.field private mTargetPageIndex:I

.field private mTaskAddPdf:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

.field private mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

.field private mUpdateInvertBG:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskPasteHandler"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ClipData;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ClipData;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;",
            "I)V"
        }
    .end annotation

    move-object/from16 v15, p0

    invoke-direct/range {p0 .. p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput v0, v15, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mErrorCode:I

    iput-boolean v0, v15, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mUpdateInvertBG:Z

    iput-boolean v0, v15, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mIsReleased:Z

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;-><init>(Z)V

    iput-object v1, v15, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mIsTakingMsg:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v14}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->init(Landroid/content/Context;Landroid/content/ClipData;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;ILandroid/graphics/PointF;ZLcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ClipData;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;ILandroid/graphics/PointF;ZLcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ClipData;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;",
            "I",
            "Landroid/graphics/PointF;",
            "Z",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mErrorCode:I

    iput-boolean v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mUpdateInvertBG:Z

    iput-boolean v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mIsReleased:Z

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    invoke-direct {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;-><init>(Z)V

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mIsTakingMsg:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    invoke-direct/range {p0 .. p14}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->init(Landroid/content/Context;Landroid/content/ClipData;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;ILandroid/graphics/PointF;ZLcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;Z)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mCachePath:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Landroid/content/ClipData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mClipData:Landroid/content/ClipData;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;

    return-object p0
.end method

.method private executeTaskAddPdf(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result v10

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mPdfManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;->getPdfUris()Ljava/util/List;

    move-result-object v7

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getCurrentPageIndex()I

    move-result v9

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Ljava/util/List;Ljava/util/List;IZ)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mTaskAddPdf:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setStorageChecker(Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mTaskAddPdf:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setTaskCallback(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mTaskAddPdf:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setInputValue(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mTaskAddPdf:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mEnableWebCard:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    return-object p0
.end method

.method private handleGetContents()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/content/ClipData;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;ILandroid/graphics/PointF;ZLcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ClipData;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;",
            "I",
            "Landroid/graphics/PointF;",
            "Z",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;",
            "Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getCachePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mCachePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mClipData:Landroid/content/ClipData;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    iput-object p7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    iput-object p8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    iput-object p9, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mPdfManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    new-instance p2, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->TAG:Ljava/lang/String;

    invoke-direct {p2, p3}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iput p10, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mTargetPageIndex:I

    iput-object p11, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mPastePosition:Landroid/graphics/PointF;

    iput-boolean p12, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mEnableWebCard:Z

    iput-object p13, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;

    iput-boolean p14, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mPlainTextFlags:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mUpdateInvertBG:Z

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mPasteLogic:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mPastePosition:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mPlainTextFlags:Z

    return p0
.end method

.method public static bridge synthetic n(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mTargetPageIndex:I

    return p0
.end method

.method public static bridge synthetic q(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mPasteLogic:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;

    return-void
.end method

.method public static bridge synthetic s(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->executeTaskAddPdf(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;)V

    return-void
.end method

.method private setErrorCode(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mErrorCode:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mErrorCode:I

    return-void
.end method

.method private setTakingMsg(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mIsTakingMsg:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mIsTakingMsg:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->setValue(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static bridge synthetic t(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->setErrorCode(I)V

    return-void
.end method


# virtual methods
.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskPasteHandler#handleMessage, what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->messageToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mIsReleased:Z

    if-eqz v1, :cond_0

    const-string p1, "TaskPasteHandler#handleMessage# released"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->setTakingMsg(Z)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->release()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mPasteLogic:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->handleGetContents()V

    :goto_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->setTakingMsg(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isReleased()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mIsReleased:Z

    return v0
.end method

.method public isTakingMsg()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mIsTakingMsg:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mIsTakingMsg:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 6

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->TAG:Ljava/lang/String;

    const-string v1, "release#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->setReleased(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mPasteLogic:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->isUpdateInvertBG()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mUpdateInvertBG:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mPasteLogic:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->getErrorCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->setErrorCode(I)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mErrorCode:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mUpdateInvertBG:Z

    if-eqz v0, :cond_2

    invoke-direct {v3, v4, v0, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;-><init>(Landroid/content/Context;IZ)V

    invoke-interface {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {v3, v4, v0, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;-><init>(Landroid/content/Context;IZ)V

    invoke-interface {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mTaskAddPdf:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mTaskAddPdf:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    :cond_3
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mPasteLogic:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->release()V

    :cond_4
    return-void
.end method

.method public setReleased(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mIsReleased:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mPasteLogic:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->setReleased(Z)V

    :cond_0
    return-void
.end method

.method public setStorageChecker(Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    return-void
.end method
