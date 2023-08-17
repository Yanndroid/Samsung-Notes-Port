.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager$BeautifierLanguageListener;
    }
.end annotation


# static fields
.field public static final ACTION_CHANGESTYLE:I = 0xd

.field public static final ACTION_GESTURE:I = 0x1

.field public static final ACTION_HIGHLIGHTER:I = 0x3

.field public static final ACTION_MATH:I = 0xf

.field public static final ACTION_NONE:I = 0x0

.field public static final ACTION_RECOGNITION:I = 0xc

.field public static final ACTION_SELECTION:I = 0xa

.field public static final ACTION_SPEN_TO_TEXT:I = 0x10

.field public static final ACTION_STRAIGHT_HIGHLIGHTER:I = 0x4

.field public static final ACTION_STROKE:I = 0x2

.field public static final ACTION_STROKE_REMOVER:I = 0x8

.field public static final ACTION_TYPE_COLOR_PICKER:I = 0x9

.field private static final TAG:Ljava/lang/String;

.field public static final TOOL_ERASER:I = 0x4

.field public static final TOOL_FINGER:I = 0x1

.field public static final TOOL_MOUSE:I = 0x3

.field public static final TOOL_PEN_BUTTTON:I = 0x6

.field public static final TOOL_SPEN:I = 0x2

.field public static final TOOL_UNKNOWN:I


# instance fields
.field private mBeautifierLanguageListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager$BeautifierLanguageListener;

.field private mInit:Z

.field private mIsNotDexModeOrStandAloneMode:Z

.field private mIsSupportedSpenDisplay:Z

.field private mSPenHwrBeautifierManager:Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;

.field private mSPenMathManager:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

.field private mSpenAlignmentManager:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;

.field private mSpenConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

.field private mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

.field private mSpenSTTManager:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;

.field private mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WritingToolManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mIsSupportedSpenDisplay:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mIsNotDexModeOrStandAloneMode:Z

    return-void
.end method


# virtual methods
.method public applySpenAlignmentLanguage()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/FeatureInfo;->isBeautifierFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->getBeautifierLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->TAG:Ljava/lang/String;

    const-string v2, "applySpenAlignmentLanguage use Beautifier language"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "settings_handwriting_recognition_language"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->TAG:Ljava/lang/String;

    const-string v1, "applySpenAlignmentLanguage# currentLanguage is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applySpenAlignmentLanguage# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenAlignmentManager:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->updateLanguage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public cancelAlignment()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->TAG:Ljava/lang/String;

    const-string v1, "cancelAlignment"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenAlignmentManager:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->cancelAlignment()Z

    move-result v0

    return v0
.end method

.method public cancelConvertToText()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->cancelConvertToText()Z

    move-result v0

    return v0
.end method

.method public cancelMath()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSPenMathManager:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->cancelMath()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearControl()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->cancelConvertToText()Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->cancelAlignment()Z

    return-void
.end method

.method public clearSelection()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_0
    return-void
.end method

.method public commitHistory()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->commitHistory(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;)V

    :cond_0
    return-void
.end method

.method public executeAlignment()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->applySpenAlignmentLanguage()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->TAG:Ljava/lang/String;

    const-string v1, "executeAlignment"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenAlignmentManager:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->executeAlignment()Z

    move-result v0

    return v0
.end method

.method public executeConvertToText(Landroid/graphics/PointF;Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->updateLanguage(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->executeConvertToTextFromPoint(Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method public executeConvertToText(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->updateLanguage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->executeConvertToText()Z

    move-result p1

    return p1
.end method

.method public executeExtractText(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->updateLanguage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->executeExtractText()Z

    move-result p1

    return p1
.end method

.method public executeMath(Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSPenMathManager:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->executeMath(Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public executeSelectionAlignment()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->applySpenAlignmentLanguage()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenAlignmentManager:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->executeSelectionAlignment()Z

    move-result v0

    return v0
.end method

.method public extractMath()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSPenMathManager:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->extractMath()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBeautifierLanguage()Ljava/lang/String;
    .locals 5

    const-string v0, "Composer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "hw_beautifier_language"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;->initTextRecognitionLanguage(Z)V

    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;->getFirstLanguageForTextRecognition()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage$SupportedLanguageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLanguage# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getSelectedStrokeList()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getSelectedObject()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getToolTypeAction(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->getToolTypeAction(I)I

    move-result p1

    return p1
.end method

.method public getWNoteHeight()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWNoteWidth()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initDone()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    return-void
.end method

.method public isAlignmentRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenAlignmentManager:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isEditing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->isEditing()Z

    move-result v0

    return v0
.end method

.method public isFloatingViewShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->isFloatingViewShown()Z

    move-result v0

    return v0
.end method

.method public isSinglePageMode()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpenOnlyMode()Z
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mIsSupportedSpenDisplay:Z

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mIsNotDexModeOrStandAloneMode:Z

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerSpenUtils;->canUseSpen(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "settings_spen_only_mode"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSpenOnlyMode# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isSupportedSpenDisplay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mIsSupportedSpenDisplay:Z

    return v0
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->TAG:Ljava/lang/String;

    const-string v2, "set Listener null"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setColorPickerListener(Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setRecentColorListener(Lcom/samsung/android/sdk/pen/engine/SpenRecentColorListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setRemoverListener(Lcom/samsung/android/sdk/pen/engine/SpenRemoverListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenAlignmentManager:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenSTTManager:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->setListener(Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenSTTManager:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;

    return-void
.end method

.method public requestSPenToTextAction(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestDirectWritingAction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenSTTManager:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->requestSPenToTextAction(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public setAlignmentOptions(ZZZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/FeatureInfo;->isBeautifierFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenAlignmentManager:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->setBeautificationOptions(ZZZ)V

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAlignmentOptions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->applySpenAlignmentLanguage()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenAlignmentManager:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->setBeautificationOptions(ZZZ)V

    return-void
.end method

.method public setAutoCleanUpEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->getBeautifierLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->setBeautifierLanguage(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSPenHwrBeautifierManager:Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;->setAutoCleanUpEnabled(Z)V

    return-void
.end method

.method public setBeautifierLanguage(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Composer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "hw_beautifier_language"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBeautifierLanguage# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSPenHwrBeautifierManager:Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;->updateLanguage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mBeautifierLanguageListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager$BeautifierLanguageListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager$BeautifierLanguageListener;->onLanguageChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setBeautifierLanguageListener(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager$BeautifierLanguageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mBeautifierLanguageListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager$BeautifierLanguageListener;

    return-void
.end method

.method public setChangeStyleSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setChangeStyleSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;)V

    :cond_0
    return-void
.end method

.method public setColorPickerListener(Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->TAG:Ljava/lang/String;

    const-string v1, "setColorPickerListener"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setColorPickerListener(Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;)V

    :cond_0
    return-void
.end method

.method public setDoc(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-void
.end method

.method public setLastPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setLastPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    :cond_0
    return-void
.end method

.method public setManager(Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    return-object p0
.end method

.method public setManager(Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenAlignmentManager:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;

    return-object p0
.end method

.method public setManager(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    return-object p0
.end method

.method public setManager(Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSPenHwrBeautifierManager:Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;

    return-object p0
.end method

.method public setManager(Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSPenMathManager:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    return-object p0
.end method

.method public setManager(Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenSTTManager:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;

    return-object p0
.end method

.method public setNotDexModeOrStandAloneMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mIsNotDexModeOrStandAloneMode:Z

    return-void
.end method

.method public setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    :cond_0
    return-void
.end method

.method public setRecentColorListener(Lcom/samsung/android/sdk/pen/engine/SpenRecentColorListener;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecentColorListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setRecentColorListener(Lcom/samsung/android/sdk/pen/engine/SpenRecentColorListener;)V

    :cond_0
    return-void
.end method

.method public setRemoverListener(Lcom/samsung/android/sdk/pen/engine/SpenRemoverListener;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->TAG:Ljava/lang/String;

    const-string v1, "setRemoverListener"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setRemoverListener(Lcom/samsung/android/sdk/pen/engine/SpenRemoverListener;)V

    :cond_0
    return-void
.end method

.method public setRemoverSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setRemoverSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    :cond_0
    return-void
.end method

.method public setSPenToTextEnable(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenSTTManager:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->setEnabled(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public setSPenToTextTargetMode(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenSTTManager:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->setTargetMode(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public setSPenToTextTextColor(II)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenSTTManager:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->setTextColor(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public setSelectionSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setSelectionType(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    iget-boolean p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->includePartiallySelected:Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setIntersectSelection(Z)V

    :cond_0
    return-void
.end method

.method public setSpenOnlyMode(Landroid/content/Context;Z)V
    .locals 2

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpenOnlyMode# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mIsSupportedSpenDisplay:Z

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mIsNotDexModeOrStandAloneMode:Z

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerSpenUtils;->canUseSpen(ZZ)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "Settings"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "settings_spen_only_mode"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->getToolTypeAction(I)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->getToolTypeAction(I)I

    move-result p1

    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->setToolTypeAction(II)V

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->setToolTypeAction(II)V

    return-void
.end method

.method public setSupportedSpenDisplay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mIsSupportedSpenDisplay:Z

    return-void
.end method

.method public setToolTypeAction(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setToolTypeAction# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setToolTypeAction(II)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setToolTypeAction(II)V

    const/16 p1, 0x10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mIsSupportedSpenDisplay:Z

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mIsNotDexModeOrStandAloneMode:Z

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerSpenUtils;->canUseSpen(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->isSpenOnlyMode()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {p1, v1, p2}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setToolTypeAction(II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {p1, v1, v1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setToolTypeAction(II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setToolTypeAction(II)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenNoteWritingViewManager:Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setToolTypeAction(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public showFloatingButtons(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSPenMathManager:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSPenMathManager:Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->showFloatingButtons(ZLandroid/graphics/RectF;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateLanguage(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenConvertToTextManager:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->updateLanguage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateSTTRecognitionLanguage(Ljava/lang/CharSequence;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mInit:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->mSpenSTTManager:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->updateRecognitionLanguage(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
