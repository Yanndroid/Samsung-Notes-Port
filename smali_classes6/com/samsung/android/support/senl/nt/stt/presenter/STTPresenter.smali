.class public abstract Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/stt/base/listener/EditDialogResultListener;
.implements Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;


# static fields
.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisplayString:Landroid/text/SpannableStringBuilder;

.field private mEditVoiceItemIndex:I

.field private mEditWord:Ljava/lang/String;

.field private mEditWordIndex:I

.field private mIsExpanded:Z

.field private mPaintHelper:Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;

.field private final mSTTFloatingController:Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;

.field private mSTTMode:Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;

.field private final mSTTRecognitionData:Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;

.field private mSTTReplayData:Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;

.field private final mSTTVoiceItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "STTPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTRecognitionData:Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mDisplayString:Landroid/text/SpannableStringBuilder;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTFloatingController:Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;

    new-instance v0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mPaintHelper:Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->setSTTRecognizeListener(Lcom/samsung/android/support/senl/nt/stt/base/listener/STTRecognizeListener;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->initSTTVoiceList(Ljava/util/List;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;->REPLAY:Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->setMode(Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mIsExpanded:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->toggleExpandedLayout()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;)Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTRecognitionData:Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->updateLastVoiceItem()V

    return-void
.end method

.method private getVoiceText(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)[Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method

.method private getVoiceTime(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)[I
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [I

    return-object p1
.end method

.method private paintRecordingData()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mDisplayString:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mDisplayString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mDisplayString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v3, 0x0

    if-gez v1, :cond_1

    move v1, v3

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mDisplayString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mDisplayString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mPaintHelper:Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mDisplayString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->setRecordPaintedString(Landroid/text/SpannableStringBuilder;I)V

    return-void
.end method

.method private showEditSTTDialog()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mEditWord:Ljava/lang/String;

    const-string v2, "word"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "request_code"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;

    invoke-direct {v1, v0, p0}, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;-><init>(Landroid/os/Bundle;Lcom/samsung/android/support/senl/nt/stt/base/listener/EditDialogResultListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mContext:Landroid/content/Context;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "EditSTTDialog"

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private updateLastVoiceItem()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mVoiceDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->getVoiceText(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->getVoiceTime(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)[I

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getPlayTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->setText([Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTDataHelper;->getProcessingString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->setRecognizeResult(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->setTimeStamp([I)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->setPlayTime(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mPaintHelper:Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->getRecognizeResult()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->updateSearchHighLight(Landroid/text/SpannableStringBuilder;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTFloatingController:Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->onItemChanged(I)V

    return-void
.end method

.method private updateReplayData([Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTReplayData:Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTReplayData:Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTReplayData:Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->updateReplayData([Ljava/lang/String;[I)V

    return-void
.end method

.method private updateTouchedWord(II)V
    .locals 4

    iput p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mEditVoiceItemIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mEditWordIndex:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mEditWord:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->getText()[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, p2, :cond_0

    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mEditWord:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mEditWordIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public add(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getPlayTime()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTFloatingController:Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->onItemInserted(I)V

    return-void
.end method

.method public getSTTFloatingContainer()Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTFloatingController:Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->getSTTFloatingContainer()Lcom/samsung/android/support/senl/nt/stt/view/layout/STTFloatingContainer;

    move-result-object v0

    return-object v0
.end method

.method public initSTTVoiceList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mVoiceDataList:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getPlayTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->getVoiceText(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->getVoiceTime(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)[I

    move-result-object v0

    sget-object v4, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initSTTVoiceList item="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;

    invoke-direct {v4, v1, v2}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTDataHelper;->getProcessingString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, ""

    :goto_1
    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->setText([Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mPaintHelper:Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->getNormalPaintedString(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->setRecognizeResult(Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->setTimeStamp([I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTFloatingController:Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->onVoiceItemInit(Ljava/util/List;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSTTVoiceList. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isSTTEditMode()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTMode:Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;

    sget-object v1, Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;->EDIT:Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSTTRecordMode()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTMode:Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;

    sget-object v1, Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;->RECORD:Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSTTReplayMode()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTMode:Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;

    sget-object v1, Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;->REPLAY:Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onDialogResult(Landroidx/fragment/app/DialogFragment;Landroid/os/Bundle;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "request_code"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "result_code"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->TAG:Ljava/lang/String;

    const-string v0, "onDialogResult() : EditSTTResult.EDITED"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "word"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mEditVoiceItemIndex:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->getText()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mEditWordIndex:I

    aput-object p1, v0, v1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->getTimeStamp()[I

    move-result-object p1

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->setText([Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTDataHelper;->getProcessingString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->setRecognizeResult(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mPaintHelper:Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->getRecognizeResult()Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->updateSearchHighLight(Landroid/text/SpannableStringBuilder;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTFloatingController:Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mEditVoiceItemIndex:I

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->onItemChanged(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mEditVoiceItemIndex:I

    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->onEditSTT(I[Ljava/lang/String;[I)V

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    sget-object p1, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->TAG:Ljava/lang/String;

    const-string p2, "onDialogResult() : EditSttResult.DISMISS"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public abstract onEditSTT(I[Ljava/lang/String;[I)V
.end method

.method public onSTTCloseBtnClick()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->isSTTEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->toggleSTTEditMode()V

    :cond_0
    return-void
.end method

.method public onSTTEditBtnClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->toggleSTTEditMode()V

    return-void
.end method

.method public abstract onSTTError(ILjava/lang/String;)V
.end method

.method public onSTTExpandBtnClick()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mIsExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mIsExpanded:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->toggleExpandedLayout()V

    return-void
.end method

.method public onSTTPartialResults(Ljava/lang/String;[I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSTTPartialResults# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTRecognitionData:Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->updateRecognitionData(Ljava/lang/String;[IZ)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTRecognitionData:Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTRecognitionData;->getDisplayText()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mDisplayString:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->paintRecordingData()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTFloatingController:Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mDisplayString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->onUpdatedRecognizeText(Landroid/text/SpannableStringBuilder;)V

    return-void
.end method

.method public abstract onSTTResult([Ljava/lang/String;[I)V
.end method

.method public onSearchDone(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mPaintHelper:Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->setSearchKeyWord(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mPaintHelper:Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->getRecognizeResult()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->updateSearchHighLight(Landroid/text/SpannableStringBuilder;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTFloatingController:Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->onDataSetChanged()V

    return-void
.end method

.method public abstract onSeekToSTTTouchedWord(IJ)V
.end method

.method public onWordEdit(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->isSTTEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->toggleSTTEditMode()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->updateTouchedWord(II)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mEditWordIndex:I

    const/4 p2, -0x1

    if-le p1, p2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->showEditSTTDialog()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mEditWordIndex = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mEditWordIndex:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onWordTouch(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->isSTTReplayMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->getText()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->getTimeStamp()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->updateReplayData([Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTReplayData:Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->updateTouchedWordIndex(I)Z

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTReplayData:Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->getTouchedWordCharStart()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->updateRecognizeReplay(II)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTReplayData:Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->getTouchWordTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->onSeekToSTTTouchedWord(IJ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->isSTTEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->updateTouchedWord(II)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mEditWordIndex:I

    const/4 p2, -0x1

    if-le p1, p2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->showEditSTTDialog()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mEditWordIndex = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mEditWordIndex:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->release()V

    return-void
.end method

.method public remove(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTFloatingController:Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->onItemRemoved(I)V

    return-void
.end method

.method public setMode(Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTMode:Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTMode:Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTFloatingController:Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->onModeChanged(Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;)V

    :cond_0
    return-void
.end method

.method public startRecognize()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->startVoiceRecognition()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;->RECORD:Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->setMode(Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;)V

    return-void
.end method

.method public stopRecognize()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/stt/base/record/RecordRecognizer;->stopVoiceRecognition()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;->REPLAY:Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->setMode(Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;)V

    return-void
.end method

.method public toggleExpandedLayout()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTFloatingController:Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mIsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->onToggleExpandedLayout(Z)V

    return-void
.end method

.method public toggleSTTEditMode()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->isSTTRecordMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mContext:Landroid/content/Context;

    const-string v2, "Can\'t Changed STT Mode While RECORDING"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->isSTTReplayMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mContext:Landroid/content/Context;

    const-string v2, "Changed To STT EDIT Mode"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;->EDIT:Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->setMode(Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->isSTTEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mContext:Landroid/content/Context;

    const-string v2, "Close STT EDIT Mode"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;->REPLAY:Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public toggleShowSTTContainer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTFloatingController:Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->onToggleShowContainer()V

    return-void
.end method

.method public updateRecognizeReplay(II)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->getRecognizeResult()Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mPaintHelper:Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;

    if-ge v1, p1, :cond_0

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->setPlayPaintedString(Landroid/text/SpannableStringBuilder;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->setNormalPaintedString(Landroid/text/SpannableStringBuilder;)V

    :goto_1
    if-ne v1, p1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-gt p2, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mPaintHelper:Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;

    invoke-virtual {v3, v2, p2}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->setPlayPaintedString(Landroid/text/SpannableStringBuilder;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTFloatingController:Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->onDataSetChanged()V

    return-void
.end method

.method public updateRecognizeReplay(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTReplayData:Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->getVoiceText(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->getVoiceTime(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)[I

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->updateReplayData([Ljava/lang/String;[I)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTReplayData:Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->isUpdateReplayResult(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mPaintHelper:Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTReplayData:Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->getReplayResult()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTReplayData:Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->getReplayStartCharIndex()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->getPlayPaintedString(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->setRecognizeResult(Landroid/text/SpannableStringBuilder;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTFloatingController:Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->onItemChanged(I)V

    :cond_2
    return-void
.end method

.method public updateRecognizeReplayComplete(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->setPlaying(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mPaintHelper:Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->getRecognizeResult()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->setPlayPaintedString(Landroid/text/SpannableStringBuilder;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTFloatingController:Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->onItemChanged(I)V

    :cond_1
    return-void
.end method

.method public updateRecognizeReplayStart(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->getVoiceText(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->getVoiceTime(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)[I

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->updateReplayData([Ljava/lang/String;[I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mPaintHelper:Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->getRecognizeResult()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->setNormalPaintedString(Landroid/text/SpannableStringBuilder;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->setPlaying(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mPaintHelper:Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->getRecognizeResult()Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->setPlayPaintedString(Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->setPlaying(Z)V

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    :goto_2
    if-ge v1, v0, :cond_4

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mPaintHelper:Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->getRecognizeResult()Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->setNormalPaintedString(Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->setPlaying(Z)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTFloatingController:Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->onPlayingItemUpdated(I)V

    return-void
.end method

.method public updateRecognizeReplayStop(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTReplayData:Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/stt/base/model/STTReplayData;->release(Z)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mSTTVoiceItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->setPlaying(Z)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenter;->mPaintHelper:Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->getRecognizeResult()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->setPlayPaintedString(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    :cond_2
    return-void
.end method
