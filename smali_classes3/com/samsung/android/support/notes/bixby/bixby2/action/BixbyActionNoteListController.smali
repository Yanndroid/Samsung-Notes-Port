.class public Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mBixbyCallBack:Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;

.field private static mInstance:Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;
    .locals 2

    const-class v0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->mInstance:Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;

    invoke-direct {v1}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;-><init>()V

    sput-object v1, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->mInstance:Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->mInstance:Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setBixbyCallBack(Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->mBixbyCallBack:Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;

    return-void
.end method


# virtual methods
.method public deleteNotes([Ljava/lang/String;Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->mBixbyCallBack:Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;->deleteNotes([Ljava/lang/String;Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getAppState(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->mBixbyCallBack:Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;->getAppState(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V

    :cond_0
    return-void
.end method

.method public isNoteEmpty(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->mBixbyCallBack:Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;->isNoteEmpty(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V

    :cond_0
    return-void
.end method

.method public isValidUUIDs([Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->mBixbyCallBack:Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;->isValidUUIDs([Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->mBixbyCallBack:Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->mBixbyCallBack:Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;

    :cond_0
    return-void
.end method

.method public saveNotes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->mBixbyCallBack:Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;->saveNotes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V

    :cond_0
    return-void
.end method

.method public searchNotes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V
    .locals 6

    sget-object v0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->mBixbyCallBack:Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;->searchNotes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V

    :cond_0
    return-void
.end method

.method public showRecentNotes(ILcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->mBixbyCallBack:Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;->showRecentNotes(ILcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V

    :cond_0
    return-void
.end method
