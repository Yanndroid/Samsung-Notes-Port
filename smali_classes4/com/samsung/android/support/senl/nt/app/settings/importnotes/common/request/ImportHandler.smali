.class public Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field public static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final KEY_TOTAL:Ljava/lang/String; = "total"

.field public static final MSG_ON_DOWNLOADED:I = 0x5

.field public static final MSG_ON_ERROR:I = 0x3

.field public static final MSG_ON_GET_LIST_ENDED:I = 0x1

.field public static final MSG_ON_IMPORT_ENDED:I = 0x2

.field public static final MSG_ON_QUOTA_RECEIVED:I = 0x66

.field public static final MSG_ON_SYNC_ENDED:I = 0x0

.field public static final MSG_ON_UPDATED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ST$ImportHandler"


# instance fields
.field private final mImport:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportResult;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportResult;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;->mImport:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportResult;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_8

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    const-string v3, "no bundle is assigned to message"

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    const/16 v0, 0x66

    if-eq v1, v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ST$ImportHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ld1/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;->mImport:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportResult;

    invoke-static {}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->values()[Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    aget-object v1, v1, v2

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ld1/d;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportResult;->onDownloaded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ld1/d;I)V

    goto/16 :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const-string v2, "total"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;->mImport:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportResult;

    invoke-static {}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->values()[Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    aget-object v2, v2, v3

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ld1/d;

    invoke-interface {v1, v2, v3, v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportResult;->onUpdated(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;IILd1/d;)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-eqz v0, :cond_5

    const-string v1, "message"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;->mImport:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportResult;

    invoke-static {}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->values()[Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    aget-object v2, v2, v3

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Exception;

    invoke-interface {v1, v2, v3, v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportResult;->onError(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;->mImport:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportResult;

    invoke-static {}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->values()[Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    aget-object v3, v3, v4

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v3, p1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportResult;->onError(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;->mImport:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportResult;

    invoke-static {}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->values()[Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    aget-object v1, v1, v2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportResult;->onImportEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ljava/util/List;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;->mImport:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportResult;

    invoke-static {}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->values()[Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportResult;->onGetListEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;->mImport:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportResult;

    invoke-static {}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->values()[Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportResult;->onSyncEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V

    :cond_9
    :goto_0
    return-void
.end method
