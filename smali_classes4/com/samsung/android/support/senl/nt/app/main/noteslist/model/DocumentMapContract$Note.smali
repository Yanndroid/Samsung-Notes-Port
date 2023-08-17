.class public interface abstract Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMapContract$Note;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMapContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Note"
.end annotation


# virtual methods
.method public abstract addCommonDisplayList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearCommonDisplayList()V
.end method

.method public abstract getConvertedNoteRepository()Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;
.end method

.method public abstract getMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;
.end method

.method public abstract getNoteRecycleBinRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;
.end method

.method public abstract getNoteSearchRepository()Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;
.end method

.method public abstract getOldNoteRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;
.end method

.method public abstract initCommonDisplayList()Z
.end method

.method public abstract initOldCommonDisplayData(Z)Z
.end method

.method public abstract isEquals(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract putHolderInfoMap(IZ)V
.end method
