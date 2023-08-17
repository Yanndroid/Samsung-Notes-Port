.class public Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;,
        Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadSizeListener;,
        Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDeleteListener;,
        Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;,
        Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadSizeListener;,
        Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDeleteListener;,
        Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HwrLanguagePack"


# instance fields
.field private mCancelInProgress:Z

.field private mCurrentDownloadProgress:I

.field private mDownloadInProgressDownloadQ:Z

.field private mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

.field private mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

.field private mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

.field private mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

.field private mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

.field private mServiceId:I

.field private mTriggerLocation:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;-><init>(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V

    if-eqz p1, :cond_0

    iget p2, p1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mTriggerLocation:I

    iput p2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mTriggerLocation:I

    iget-object p1, p1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCurrentDownloadProgress:I

    iput v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mServiceId:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mTriggerLocation:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgressDownloadQ:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCancelInProgress:Z

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    invoke-interface {p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mServiceId:I

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCurrentDownloadProgress:I

    return p0
.end method

.method public static synthetic access$002(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCurrentDownloadProgress:I

    return p1
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1002(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    return-object p1
.end method

.method public static synthetic access$1400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mServiceId:I

    return p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;IZZII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->createNotification(IZZII)V

    return-void
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgressDownloadQ:Z

    return p0
.end method

.method public static synthetic access$502(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgressDownloadQ:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;IZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->createNotificationForNegative(IZI)V

    return-void
.end method

.method public static synthetic access$702(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCancelInProgress:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    return-object p0
.end method

.method private createNotification(IZZII)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->access$1500(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;IZZII)V

    return-void
.end method

.method private createNotificationForNegative(IZI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->access$1600(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;IZI)V

    return-void
.end method

.method private returnLanguagePackDownloadListener(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;I)V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$2;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;ILcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->startRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private returnOnDownloadListener(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;I)V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$1;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;ILcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->startRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startRunnable(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method


# virtual methods
.method public add(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;

    const-string v0, "asis LanguagePack is not null!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->isDownloadInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;

    const-string v1, "[cancel] not download in progress! just return."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCancelInProgress:Z

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[cancel] mCancelInProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCancelInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[cancel] mDownloadInProgressDownloadQ: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgressDownloadQ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgressDownloadQ:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->returnLanguagePackDownloadListener(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    invoke-interface {v1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->getLanguage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[cancel] languageID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->cancelDownload(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    if-nez v1, :cond_2

    const-string v1, "mLanguagePack is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-interface {v1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->cancel()V

    return-void
.end method

.method public delete(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDeleteListener;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;

    const-string v1, "[delete] awake process to download"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->awake()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, "[delete] : cannot awake content provider!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDeleteListener;->onComplete(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    if-nez v1, :cond_1

    const-string v1, "mLanguagePack is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDeleteListener;->onComplete(I)V

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDeleteListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDeleteListener;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$1;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDeleteListener;->setListener(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDeleteListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->delete(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDeleteListener;)V

    return-void
.end method

.method public download()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgressDownloadQ:Z

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;

    const-string v1, "download() : awake process to download"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->awake()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->returnLanguagePackDownloadListener(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->download(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V

    return-void
.end method

.method public download(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;)V
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCancelInProgress:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;

    const-string v0, "[download] canceling is in progress!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mServiceId:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x64

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->createNotification(IZZII)V

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;

    const-string v1, "[download] awake process to download"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->awake()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "[download] : cannot awake content provider!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->returnOnDownloadListener(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    if-nez v1, :cond_2

    const-string v1, "Invalid language pack : mLanguagePack is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->returnOnDownloadListener(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;I)V

    return-void

    :cond_2
    invoke-interface {v1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->isContainedInDownloadQ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already downloading in DownloadQ, LanguageID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->setDownloadListener(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;)V

    return-void

    :cond_3
    new-instance v3, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$1;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    invoke-virtual {v3, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->setListener(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[download] Download is requested : languageID = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgressDownloadQ:Z

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->requestDownload(Ljava/lang/String;)V

    return-void
.end method

.method public downloadLanguage(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;)V
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCancelInProgress:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;

    const-string v0, "[downloadLanguage] canceling is in progress!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mServiceId:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x64

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->createNotification(IZZII)V

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;

    const-string v1, "[downloadLanguage] awake process to download"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->awake()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "[downloadLanguage] : cannot awake content provider!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->returnOnDownloadListener(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    if-nez v1, :cond_2

    const-string v1, "Invalid language pack: mLanguagePack is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->returnOnDownloadListener(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;I)V

    return-void

    :cond_2
    new-instance v1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$1;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->setListener(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    invoke-interface {p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->getLanguage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[downloadLanguage] languageID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->downloadLanguage(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V

    return-void
.end method

.method public getDownloadProgress()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCurrentDownloadProgress:I

    return v0
.end method

.method public getDownloadSize(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadSizeListener;)V
    .locals 10

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;

    const-string v1, "[getDownloadSize] awake process to download"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->awake()Z

    move-result v1

    const-wide/16 v2, -0x1

    if-nez v1, :cond_0

    const-string v1, "[getDownloadSize] : cannot awake content provider!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v2, v3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadSizeListener;->onDownloadSize(J)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    if-nez v1, :cond_1

    const-string v1, "mLanguagePack is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v2, v3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadSizeListener;->onDownloadSize(J)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->getApkVersion()[I

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v6, v1

    const/4 v7, 0x2

    if-le v6, v7, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APK version : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v1, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v1, v5

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v1, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget v6, v1, v4

    if-le v6, v7, :cond_2

    :goto_0
    move v4, v5

    goto :goto_1

    :cond_2
    aget v6, v1, v4

    if-ne v6, v7, :cond_4

    aget v6, v1, v5

    const/4 v8, 0x3

    if-le v6, v8, :cond_3

    goto :goto_0

    :cond_3
    aget v6, v1, v5

    if-ne v6, v8, :cond_4

    aget v1, v1, v7

    const/16 v6, 0xa

    if-le v1, v6, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadSizeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadSizeListener;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$1;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadSizeListener;->setListener(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadSizeListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->getDownloadSize(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadSizeListener;)V

    goto :goto_2

    :cond_5
    const-string v1, "Cannot support getDownloadSize in this APK!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v2, v3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadSizeListener;->onDownloadSize(J)V

    :goto_2
    return-void
.end method

.method public getDownloadTriggerLocationState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mTriggerLocation:I

    return v0
.end method

.method public isCancelInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCancelInProgress:Z

    return v0
.end method

.method public isDownloadInProgress()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgressDownloadQ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;

    const-string v1, "mLanguagePack is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->isDownloadInProgress()Z

    move-result v0

    return v0
.end method

.method public isDownloaded()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;

    const-string v1, "mLanguagePack is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->isDownloaded()Z

    move-result v0

    return v0
.end method

.method public isInstallable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;

    const-string v1, "mLanguagePack is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->isInstallable()Z

    move-result v0

    return v0
.end method

.method public isNotiBarShow()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->isNotiBarShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreloaded()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;

    const-string v1, "mLanguagePack is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->isPreloaded()Z

    move-result v0

    return v0
.end method

.method public isUpdateAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;

    const-string v1, "mLanguagePack is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->isUpdateAvailable()Z

    move-result v0

    return v0
.end method

.method public setDownloadLanguageListener(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->setListener(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->setDownloadLanguageListener(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V

    :cond_0
    return-void
.end method

.method public setDownloadListener(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->setListener(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->setDownloadListener(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V

    :cond_0
    return-void
.end method

.method public setDownloadTriggerLocationState(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mTriggerLocation:I

    return-void
.end method

.method public setLanguagePack(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePack:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    return-void
.end method

.method public setNotificationInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v8, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iput-object v8, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    return-void
.end method

.method public setNotificationInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v10, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    move-object v0, p0

    iput-object v10, v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    return-void
.end method

.method public setSpenLanguagePackManager(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    return-void
.end method

.method public showNotiBar(Z)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->showNotiBar(Z)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    iget v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mServiceId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x64

    iget v6, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCurrentDownloadProgress:I

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->access$1500(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;IZZII)V

    :cond_1
    return-void
.end method
