.class public Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread;,
        Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$IAddonsCaller;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AddonsCopyController"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private final mCopyDstPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCopyThread:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread;

.field private mNowCopyingDstPath:Ljava/lang/String;

.field private mProgressController:Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->mCopyDstPaths:Ljava/util/Set;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->mProgressController:Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;

    return-void
.end method

.method public static synthetic a(Ljava/util/Collection;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->lambda$deleteFiles$0(Ljava/util/Collection;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->mProgressController:Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->mNowCopyingDstPath:Ljava/lang/String;

    return-void
.end method

.method private cancelCopyTask()V
    .locals 2

    const-string v0, "AddonsCopyController"

    const-string v1, "cancelCopyTask"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->mCopyThread:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->mCopyThread:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->mCopyThread:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->mNowCopyingDstPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->deleteFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->mProgressController:Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->hideProgress()V

    :cond_1
    return-void
.end method

.method private createDstPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/framework/provider/ShareFileProvider;->getExternalDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "addons"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDstPath, mkdir : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AddonsCopyController"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".sdoc"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private deleteFiles(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteFiles, size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AddonsCopyController"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/addons/a;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/app/addons/a;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->mCopyDstPaths:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static synthetic lambda$deleteFiles$0(Ljava/util/Collection;)V
    .locals 3

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteTempFiles, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AddonsCopyController"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public copySdocToExternalDir(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$IAddonsCaller;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->mProgressController:Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->showProgress()V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->createDstPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->mNowCopyingDstPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->mCopyDstPaths:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->mNowCopyingDstPath:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$1;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$1;-><init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$IAddonsCaller;)V

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread$ICopyListener;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->mCopyThread:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public deleteAllTempFiles()V
    .locals 2

    const-string v0, "AddonsCopyController"

    const-string v1, "deleteAllTempFiles"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->mCopyDstPaths:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->deleteFiles(Ljava/util/Collection;)V

    return-void
.end method

.method public deleteFile(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteFile : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AddonsCopyController"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->deleteFiles(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->mProgressController:Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->cancelCopyTask()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->cancelCopyTask()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->deleteAllTempFiles()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->mProgressController:Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->mAppContext:Landroid/content/Context;

    return-void
.end method
