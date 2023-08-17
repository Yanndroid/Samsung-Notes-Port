.class public Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguage;
.implements Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "HWRLanguagePack"


# instance fields
.field private mDeleteListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;

.field private mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

.field private mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

.field private mDownloadSizeListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadSizeListener;

.field private mIsPreload:Z

.field private mLanguage:Ljava/lang/String;

.field private mPrevState:I

.field private mProgress:I

.field private mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

.field private mState:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDeleteListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDeleteListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;

    iget-object p1, p2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    iget-object p1, p2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    iget-object p1, p2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadSizeListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadSizeListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadSizeListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadSizeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mIsPreload:Z

    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HWRLanguagePack: construct : language = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    iput-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mIsPreload:Z

    return-void
.end method

.method private deleteLanguage(Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDeleteListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;

    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->deleteLanguageInternal()V

    return-void
.end method

.method private deleteLanguageInternal()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->isPreloaded()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setPrevState(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->launchDeleteByIntent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private download()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setPrevState(I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->launchUpdateByIntent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", prevstate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mPrevState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->launchCancelByIntent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public delete(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDeleteListener;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", prevstate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mPrevState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack$1;-><init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDeleteListener;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->deleteLanguage(Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;)V

    return-void
.end method

.method public download(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", prevstate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mPrevState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->download()V

    return-void
.end method

.method public downloadLanguage(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download language: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", prevstate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mPrevState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->download()V

    return-void
.end method

.method public getCurrentMax()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getCurrentProgress()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mProgress:I

    return v0
.end method

.method public getCurrentState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    return v0
.end method

.method public getDownloadSize(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadSizeListener;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadSizeListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadSizeListener;

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->launchDownloadSizeByIntent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mPrevState:I

    return v0
.end method

.method public isDownloadInProgress()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDownloaded()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstallable()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPreloaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mIsPreload:Z

    return v0
.end method

.method public isUpdateAvailable()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyDeleteResult(Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDeleteResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mState before = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->getPrevState()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mState after = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDeleteListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;->onComplete(ZLjava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDeleteListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;

    :cond_1
    return-void
.end method

.method public notifyDownloadSizeResult(J)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDownloadSizeResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadSizeListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadSizeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadSizeListener;->onDownloadSize(J)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadSizeListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadSizeListener;

    :cond_0
    return-void
.end method

.method public notifyUpdateResult(I)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyUpdateResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mState before = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->getPrevState()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mState after = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;->onComplete(I)V

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;->onComplete(I)V

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    :cond_2
    return-void
.end method

.method public setDownloadLanguageListener(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    return-void
.end method

.method public setDownloadListener(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    return-void
.end method

.method public setDownloadSizeListener(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadSizeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadSizeListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadSizeListener;

    return-void
.end method

.method public setPreloaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mIsPreload:Z

    return-void
.end method

.method public setPrevState(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mPrevState:I

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mProgress:I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;->onProgress(II)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;->onProgress(II)V

    :cond_1
    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mProgress:I

    return-void
.end method
