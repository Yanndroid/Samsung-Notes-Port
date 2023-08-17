.class Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$SnapGrpcDataContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcDataContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SnapGrpcDataContractImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$SnapGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;Lcom/samsung/android/support/senl/nt/coedit/connection/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$SnapGrpcDataContractImpl;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)V

    return-void
.end method


# virtual methods
.method public downloadContentFile(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$SnapGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->downloadContentFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleDownloadUrlMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$SnapGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->handleDownloadUrlMap(Ljava/util/Map;)V

    return-void
.end method

.method public onContentFileUploadError(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$SnapGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->onContentFileUploadError(I)V

    return-void
.end method

.method public requestUploadObjects(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$SnapGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->b(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->snapDataRequestUploadObjects(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;)V

    return-void
.end method

.method public updateSnapNoteLatestInfo(JJLjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$SnapGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->updateSnapNoteLatestInfo(JJLjava/lang/String;)V

    return-void
.end method

.method public uploadContentFileData(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$SnapGrpcDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->uploadContentFile(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
