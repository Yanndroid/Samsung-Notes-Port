.class public Lcom/samsung/android/model/contractimpl/RequestSyncContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountGuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object p1

    invoke-virtual {p1}, Lf/a;->o()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initPreferenceMDESupported()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->initPreferenceMDESupported()V

    return-void
.end method

.method public isAccountLogined(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object p1

    invoke-virtual {p1}, Lf/a;->r()Z

    move-result p1

    return p1
.end method

.method public isAutoSyncPossible()Z
    .locals 1

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->d()Z

    move-result v0

    return v0
.end method

.method public isCoeditFeatureSupported(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Ln/a;->e(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isCoeditWiFiSyncOnlyAndNotWiFiConnected(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lc3/h;->d(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isDataCallNotLimitedForApp()Z
    .locals 1

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->f()Z

    move-result v0

    return v0
.end method

.method public isDataNetworkAvailable(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isSesAvailable(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Ln/a;->l(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isWiFiAvailable(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lc3/h;->n(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isWiFiSyncOnlyAndNotWiFiConnected(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lc3/h;->p(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public notifyOnDocumentClosed()V
    .locals 1

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {v0}, Ln2/a;->y()V

    return-void
.end method

.method public requestCoeditTitleUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lv/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestCoeditUpdateItemData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lv/g;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestDeleteCoeditNoteDataAllAndDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "requestDeleteCoeditNoteDataAllAndDownload"

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lv/d;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lv/d$c;)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/s;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;

    move-result-object p2

    invoke-virtual {p2, p3, p1, v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->requestDownloadAddedNoteFromComposer(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V

    return-void
.end method

.method public requestServerNoteInfo(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;)V
    .locals 1

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ln2/a;->l(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;)V

    return-void
.end method

.method public requestShareBackground(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lp/a;->n(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public requestShareDelete(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lp/a;->h(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->getWidgetBroadcaster()Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;->sendDeleteUUIDWidgetBroadcast(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public requestShareDeleteCoedit(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Li/a;->c()Li/a;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Li/a;->e(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->getWidgetBroadcaster()Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;->sendDeleteUUIDWidgetBroadcast(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public requestSyncBackground()Z
    .locals 1

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {v0}, Ln2/a;->n()V

    const/4 v0, 0x1

    return v0
.end method

.method public requestSyncByModification()Z
    .locals 1

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {v0}, Ln2/a;->r()V

    const/4 v0, 0x1

    return v0
.end method

.method public requestSyncDownFirst(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln2/a;->u(Ljava/lang/String;)V

    return-void
.end method

.method public requestSyncDownForRecovery(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln2/a;->v(Ljava/lang/String;)V

    return-void
.end method

.method public requestSyncDownForServerNoteTemporarily(Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;)V
    .locals 1

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln2/a;->w(Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;)V

    return-void
.end method

.method public requestSyncForConflictedNote(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ln2/a;->x(Ljava/lang/String;I)V

    return-void
.end method

.method public requestSyncForServerPolling()V
    .locals 1

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {v0}, Ln2/a;->z()V

    return-void
.end method

.method public requestSyncUpFirst(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln2/a;->A(Ljava/lang/String;)V

    return-void
.end method

.method public setCategoryOrderModifiedTime(J)V
    .locals 0

    invoke-static {p1, p2}, Lt2/a;->p(J)V

    return-void
.end method

.method public setRootServerTimestamp(J)V
    .locals 0

    invoke-static {p1, p2}, Lx2/c;->D(J)V

    return-void
.end method

.method public setSyncEnableByUserClick(Z)V
    .locals 2

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ln2/a;->D(ZZ)V

    return-void
.end method

.method public stopCoeditDownloadBySmartSwitch(Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->stopDownloadCoeditBySmartSwitch(Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;)V

    return-void
.end method

.method public stopSyncBySmartSwitch(Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;)V
    .locals 1

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln2/a;->H(Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;)V

    return-void
.end method
