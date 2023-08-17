.class public Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "STTManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;

.field private mSTTView:J

.field private mTextListener:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTTextListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mSTTView:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mListener:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mTextListener:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTTextListener;

    return-void
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_init(JLcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;)V
.end method

.method private static native Native_setEnabled(JZ)V
.end method

.method private static native Native_setTargetMode(JI)V
.end method

.method private static native Native_setTextColor(JII)V
.end method

.method private static native Native_updateRecognitionLanguage(JLjava/lang/String;)V
.end method

.method private onActionPerformed(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->performSPenToTextAction(I)V

    return-void
.end method

.method private onPenDrawingStarted(FFI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPenSTTManager::onPenDrawingStarted x : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string v1, "SPEN_TO_TEXT_TARGET_BODY_TEXT"

    goto :goto_0

    :cond_0
    const-string v1, "SPEN_TO_TEXT_TARGET_OBJECT_TEXT_BOX"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STTManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mListener:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;->onPenDrawingStarted(FFI)V

    :cond_1
    return-void
.end method

.method private onRecognitionFailed()V
    .locals 2

    const-string v0, "STTManager"

    const-string v1, "SPenSTTManager::onRecognitionFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mListener:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;->onRecognitionFailed()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mTextListener:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTTextListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTTextListener;->onSoftInputAffected(Z)V

    :cond_1
    return-void
.end method

.method private onRecognitionStarted()V
    .locals 2

    const-string v0, "STTManager"

    const-string v1, "SPenSTTManager::onRecognitionStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mListener:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;->onRecognitionStarted()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mTextListener:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTTextListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTTextListener;->onSoftInputAffected(Z)V

    :cond_1
    return-void
.end method

.method private onResultInserted()V
    .locals 2

    const-string v0, "STTManager"

    const-string v1, "SPenSTTManager::onResultInserted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mListener:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;->onResultInserted()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mTextListener:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTTextListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTTextListener;->onSoftInputAffected(Z)V

    :cond_1
    return-void
.end method

.method private performSPenToTextAction(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPenSTTManager::performSPenToTextAction - action :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STTManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/16 p1, 0x42

    goto :goto_0

    :cond_1
    const/16 p1, 0x43

    goto :goto_0

    :cond_2
    const/16 p1, 0x3e

    :goto_0
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mTextListener:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTTextListener;

    if-eqz v2, :cond_3

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTTextListener;->onKeyEvent(Landroid/view/KeyEvent;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mTextListener:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTTextListener;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v0, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTTextListener;->onKeyEvent(Landroid/view/KeyEvent;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mSTTView:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->Native_finalize(J)V

    :cond_0
    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mSTTView:J

    return-void
.end method

.method public requestSPenToTextAction(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->performSPenToTextAction(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mSTTView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->Native_setEnabled(JZ)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mTextListener:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTTextListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTTextListener;->onSoftInputAffected(Z)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mListener:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTListener;

    return-void
.end method

.method public setNativeHandle(Landroid/content/Context;J)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mSTTView:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SPenSTTManager::setNativeHandle mSTTView : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mSTTView:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "STTManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mSTTView:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    invoke-static {p1, p2, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->Native_init(JLcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;)V

    :cond_0
    return-void
.end method

.method public setTargetMode(I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mSTTView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->Native_setTargetMode(JI)V

    :cond_0
    return-void
.end method

.method public setTextColor(II)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mSTTView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->Native_setTextColor(JII)V

    :cond_0
    return-void
.end method

.method public setTextListener(Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTTextListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mTextListener:Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTTextListener;

    return-void
.end method

.method public updateRecognitionLanguage(Ljava/lang/CharSequence;)Z
    .locals 4

    const-string v0, "STTManager"

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPenSTTManager::updateRecognitionLanguage - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/SPenRecognitionWorker;->setLanguage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/SPenRecognitionWorker;->initializeSelf(Landroid/content/Context;)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->mSTTView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;->Native_updateRecognitionLanguage(JLjava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const-string p1, "SPenSTTManager::updateRecognitionLanguage text == null || text.length() <= 0"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method
