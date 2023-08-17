.class public interface abstract Lb0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract convertTo32bitEncrypt(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract deleteSDoc(Landroid/content/Context;Ljava/lang/String;IZ)V
.end method

.method public abstract deleteSDocSync(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract getDirtyCountOfNoteExtraInfo(Landroid/content/Context;)I
.end method

.method public abstract getNoteDeleted(Landroid/content/Context;Ljava/lang/String;)I
.end method

.method public abstract getNoteFilePath()Ljava/lang/String;
.end method

.method public abstract getNoteFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getNoteSaveTime(Landroid/content/Context;Ljava/lang/String;)J
.end method

.method public abstract getNoteServerTime(Landroid/content/Context;Ljava/lang/String;)J
.end method

.method public abstract getSdocContractLockTypeNone()I
.end method

.method public abstract getSdocContractLockTypeSdoc()I
.end method

.method public abstract getSdocContractNo()I
.end method

.method public abstract getSdocContractToRecycleBin()I
.end method

.method public abstract getSdocContractYes()I
.end method

.method public abstract getUUIDList(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUUIDListByCategoryDirty(Landroid/content/Context;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUUIDListByDirty(Landroid/content/Context;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUUIDListByDirtyForExtraInfo(Landroid/content/Context;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUUIDListByLocked(Landroid/content/Context;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUuidAndNoteTimeList(Landroid/content/Context;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isExistNote(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract recoverySDoc(Landroid/content/Context;Ljava/lang/String;JI)V
.end method

.method public abstract recycleBinResolverUpdateTimeMoved(Landroid/content/Context;Ljava/lang/String;J)V
.end method

.method public abstract restoreSDoc(Landroid/content/Context;Ljava/lang/String;Z)V
.end method

.method public abstract setNoteDirty(Landroid/content/Context;Ljava/lang/String;I)V
.end method

.method public abstract setNoteFavorite(Landroid/content/Context;Ljava/lang/String;ZZ)I
.end method

.method public abstract setNoteServerTime(Landroid/content/Context;Ljava/lang/String;J)V
.end method

.method public abstract setNoteServerTimeAndDirty(Landroid/content/Context;Ljava/lang/String;JI)V
.end method

.method public abstract setNoteSyncName(Ljava/lang/String;Ljava/lang/String;)V
.end method
