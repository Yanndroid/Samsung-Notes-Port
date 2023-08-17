.class public abstract Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO;
.super Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract updateIsDeleted(Ljava/lang/String;I)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT content SET isDeleted=:isDeleted WHERE UUID=:sdocUuid"
    .end annotation
.end method

.method public abstract updateIsDirtyAndIsDeleted(Ljava/lang/String;II)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE OR ABORT content SET isDirty=:isDirty , isDeleted=:isDeleted WHERE UUID=:sdocUuid"
    .end annotation
.end method
