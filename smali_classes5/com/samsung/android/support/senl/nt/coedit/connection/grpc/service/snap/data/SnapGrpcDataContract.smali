.class public interface abstract Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcDataContract;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract downloadContentFile(Ljava/lang/String;)V
.end method

.method public abstract handleDownloadUrlMap(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onContentFileUploadError(I)V
.end method

.method public abstract requestUploadObjects(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;)V
.end method

.method public abstract updateSnapNoteLatestInfo(JJLjava/lang/String;)V
.end method

.method public abstract uploadContentFileData(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V
.end method
