.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->shareSDoc(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;Z)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$fileNameList:Ljava/util/ArrayList;

.field public final synthetic val$index:I

.field public final synthetic val$isOldNote:Z

.field public final synthetic val$shareDataList:Ljava/util/List;

.field public final synthetic val$uriList:Ljava/util/ArrayList;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;Ljava/util/List;ILandroid/content/Context;Ljava/util/ArrayList;ZILjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->val$shareDataList:Ljava/util/List;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->val$index:I

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->val$fileNameList:Ljava/util/ArrayList;

    iput-boolean p6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->val$isOldNote:Z

    iput p7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->val$userId:I

    iput-object p8, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->val$uriList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->val$shareDataList:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->val$index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLocked(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getShareCacheHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;->getContextShareDir(Landroid/content/Context;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getLastModifiedTime()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareUtils;->generateNewFileName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->val$fileNameList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->val$fileNameList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5f

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->val$fileNameList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->val$fileNameList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->val$isOldNote:Z

    if-eqz v5, :cond_2

    const-string v5, "sdoc"

    goto :goto_0

    :cond_2
    const-string v5, "sdocx"

    :goto_0
    invoke-static {v4, v3, v5}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->generateUniqueFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getMakeUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4, v5, v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;->makeSDoc(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getShareUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->val$context:Landroid/content/Context;

    iget-boolean v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mUseFileProvider:Z

    const-string v5, "application/sdoc"

    invoke-virtual {v3, v4, v0, v1, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;->getContextShareUri(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->val$userId:I

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareUtils;->attachUserIdToAuthority(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->val$uriList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->val$uriList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_1
    return-object v2

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_5
    :goto_2
    const-string v0, "ShareHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shareSDoc# failed to getPathForShare : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;->val$index:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
