.class public Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BEAUTIFICATION_FLAG_LETTER_CORRECTION:I = 0x4

.field public static final BEAUTIFICATION_FLAG_LINE_SPACING:I = 0x8

.field public static final BEAUTIFICATION_FLAG_WORD_SPACING:I = 0x10

.field private static final TAG:Ljava/lang/String; = "AlignmentManager"


# instance fields
.field private mAlignmentView:J

.field private mBeautificationFlag:I

.field private mSPenAlignmentListener:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mAlignmentView:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mSPenAlignmentListener:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentListener;

    const/16 v0, 0x1c

    iput v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mBeautificationFlag:I

    return-void
.end method

.method private static native Native_cancelAlignment(J)Z
.end method

.method private static native Native_executeAlignment(J)Z
.end method

.method private static native Native_executeSelectionAlignment(J)Z
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_init(JLcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;)V
.end method

.method private static native Native_isBeautificationSupported(J)Z
.end method

.method private static native Native_isRunning(J)Z
.end method

.method private static native Native_setBeautificationFlag(JI)V
.end method

.method private static native Native_setEnabled(JZ)V
.end method

.method private static native Native_setLanguageName(JLjava/lang/String;)V
.end method

.method private onFailed()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mSPenAlignmentListener:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentListener;

    if-eqz v0, :cond_0

    const-string v0, "AlignmentManager"

    const-string v1, "SPenAlignmentManager::onFailed:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mSPenAlignmentListener:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentListener;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentListener;->onAlignmentFailed()V

    :cond_0
    return-void
.end method

.method private onProgressStartEnd(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPenAlignmentManager::onProgressStartEnd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlignmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mSPenAlignmentListener:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentListener;->onProgressStart()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentListener;->onProgressStop()V

    :goto_0
    return-void
.end method

.method private onRunning(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPenAlignmentManager::onRunning : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlignmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mSPenAlignmentListener:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentListener;->onAlignmentRunning(Z)V

    :cond_0
    return-void
.end method

.method private setFlag(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mBeautificationFlag:I

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mBeautificationFlag:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mBeautificationFlag:I

    return-void
.end method


# virtual methods
.method public cancelAlignment()Z
    .locals 4

    const-string v0, "AlignmentManager"

    const-string v1, "SPenAlignmentManager::cancelAlignment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mAlignmentView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->Native_cancelAlignment(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mAlignmentView:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->Native_finalize(J)V

    :cond_0
    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mAlignmentView:J

    return-void
.end method

.method public executeAlignment()Z
    .locals 4

    const-string v0, "AlignmentManager"

    const-string v1, "SPenAlignmentManager::executeAlignment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mAlignmentView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->Native_executeAlignment(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public executeSelectionAlignment()Z
    .locals 4

    const-string v0, "AlignmentManager"

    const-string v1, "SPenAlignmentManager::executeSelectionAlignment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mAlignmentView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->Native_executeSelectionAlignment(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLetterCorrectionEnabled()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mBeautificationFlag:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLineCorrectionEnabled()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mBeautificationFlag:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getWordSpacingEnabled()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mBeautificationFlag:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBeautificationSupported()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mAlignmentView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->Native_isBeautificationSupported(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRunning()Z
    .locals 4

    const-string v0, "AlignmentManager"

    const-string v1, "SPenAlignmentManager::hasResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mAlignmentView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->Native_isRunning(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBeautificationOptions(ZZZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLetterCorrectionEnabled letter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", word: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlignmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mAlignmentView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->setFlag(IZ)V

    const/16 p1, 0x8

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->setFlag(IZ)V

    const/16 p1, 0x10

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->setFlag(IZ)V

    iget-wide p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mAlignmentView:J

    iget p3, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mBeautificationFlag:I

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->Native_setBeautificationFlag(JI)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlignmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mAlignmentView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->Native_setEnabled(JZ)V

    return-void
.end method

.method public setLetterCorrectionEnabled(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLetterCorrectionEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlignmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mAlignmentView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->setFlag(IZ)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mAlignmentView:J

    iget p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mBeautificationFlag:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->Native_setBeautificationFlag(JI)V

    return-void
.end method

.method public setLineCorrectionEnabled(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLowSpacingEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlignmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mAlignmentView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->setFlag(IZ)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mAlignmentView:J

    iget p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mBeautificationFlag:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->Native_setBeautificationFlag(JI)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mSPenAlignmentListener:Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentListener;

    return-void
.end method

.method public setNativeHandle(J)V
    .locals 2

    iput-wide p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mAlignmentView:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->Native_init(JLcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;)V

    :cond_0
    return-void
.end method

.method public setWordSpacingEnabled(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWordSpacingEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlignmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mAlignmentView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->setFlag(IZ)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mAlignmentView:J

    iget p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mBeautificationFlag:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->Native_setBeautificationFlag(JI)V

    return-void
.end method

.method public updateLanguage(Ljava/lang/CharSequence;)V
    .locals 4

    const-string v0, "AlignmentManager"

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPenAlignmentManager::updateLanguage - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->mAlignmentView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;->Native_setLanguageName(JLjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "SPenAlignmentManager::text == null || text.length() <= 0"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
