.class public Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDataStore:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IDataStore;

.field private final mHandler:Landroid/os/Handler;

.field private mLoadListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;

.field private mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "DocumentLoadManager"

    const-string v1, "SCV"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private createDataStore(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;->mDataStore:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IDataStore;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;->getNoteInfoArgument()Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;->isNeededClose()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;->getNoteInfoArgument()Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;->isNeededDownload()Z

    move-result p1

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;->mDataStore:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IDataStore;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;->mDataStore:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IDataStore;

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;->mDataStore:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IDataStore;

    invoke-interface {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IDataStore;->setLoadListener(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public loadDocument(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDocument# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;->mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;->mLoadListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;->createDataStore(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/model/utils/SpenDocumentDisplayUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;->getNoteInfoArgument()Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;-><init>()V

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;->setPageWidth(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;

    move-result-object p3

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;

    move-result-object p3

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;->setDocPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;

    move-result-object p3

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;->getLockAccountGuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;->setLockAccountGuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;->done()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;->mDataStore:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IDataStore;

    invoke-interface {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IDataStore;->loadDocument(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;)V

    return-void
.end method

.method public onDestroyed()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;->mDataStore:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IDataStore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IDataStore;->onDestroyed()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;->mDataStore:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IDataStore;

    return-void
.end method

.method public onLoadNoteCompleted(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;->TAG:Ljava/lang/String;

    const-string v1, "onLoadNoteCompleted# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;->mLoadListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;->onLoadNoteCompleted(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void
.end method

.method public onLoadNoteFailed(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;->TAG:Ljava/lang/String;

    const-string v1, "onLoadNoteCompleted# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;->mLoadListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;->onLoadNoteFailed(Ljava/lang/Throwable;)V

    return-void
.end method
