.class public Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportRequestListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;


# static fields
.field private static final TAG:Ljava/lang/String; = "ST$ImportRequestListener"


# instance fields
.field private final mHandler:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportRequestListener;->mHandler:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;

    return-void
.end method


# virtual methods
.method public onDownloaded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ld1/d;I)V
    .locals 2
    .param p1    # Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ST$ImportRequestListener"

    const-string v1, "onDownloaded()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportRequestListener;->mHandler:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportRequestListener;->mHandler:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onGetListEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
    .locals 2

    const-string v0, "ST$ImportRequestListener"

    const-string v1, "onGetListEnded()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportRequestListener;->mHandler:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportRequestListener;->mHandler:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onImportEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
    .locals 2

    const-string v0, "ST$ImportRequestListener"

    const-string v1, "onSyncEnded()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportRequestListener;->mHandler:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportRequestListener;->mHandler:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onImportEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ljava/util/List;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ST$ImportRequestListener"

    const-string v1, "onImportEnded()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportRequestListener;->mHandler:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportRequestListener;->mHandler:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onImportError(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ST$ImportRequestListener"

    const-string v1, "onImportError()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportRequestListener;->mHandler:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p4, "message"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportRequestListener;->mHandler:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onImportStart(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
    .locals 1

    const-string p1, "ST$ImportRequestListener"

    const-string v0, "onSyncStart()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onItemImportFinished(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;III)V
    .locals 0

    const-string p1, "ST$ImportRequestListener"

    const-string p2, "onItemImportFinished()"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdated(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;IILd1/d;)V
    .locals 2
    .param p1    # Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdated : now = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ST$ImportRequestListener"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportRequestListener;->mHandler:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p4, "total"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportRequestListener;->mHandler:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
