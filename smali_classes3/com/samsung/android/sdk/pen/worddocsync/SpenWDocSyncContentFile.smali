.class public Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Model_WDocContentFile"


# instance fields
.field private mNativeHandle:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->mNativeHandle:I

    return-void
.end method

.method private native WDocSyncContentFile_getFileHash(I)Ljava/lang/String;
.end method

.method private native WDocSyncContentFile_getFileName(I)Ljava/lang/String;
.end method

.method private native WDocSyncContentFile_getFilePath(I)Ljava/lang/String;
.end method

.method private native WDocSyncContentFile_getUrl(I)Ljava/lang/String;
.end method

.method private native WDocSyncContentFile_isDownloadRequired(I)Z
.end method

.method private native WDocSyncContentFile_setDownloadRequired(IZ)Z
.end method

.method private native WDocSyncContentFile_setUrl(ILjava/lang/String;)Z
.end method

.method private checkInitialized()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->mNativeHandle:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "native handle is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwUncheckedException()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenWDocSyncData("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFileHash()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->WDocSyncContentFile_getFileHash(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->WDocSyncContentFile_getFileName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->WDocSyncContentFile_getFilePath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->WDocSyncContentFile_getUrl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDownloadRequired()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->WDocSyncContentFile_isDownloadRequired(I)Z

    move-result v0

    return v0
.end method

.method public setDownloadRequired(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->WDocSyncContentFile_setDownloadRequired(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->throwUncheckedException()V

    :cond_0
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->WDocSyncContentFile_setUrl(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;->throwUncheckedException()V

    :cond_0
    return-void
.end method
