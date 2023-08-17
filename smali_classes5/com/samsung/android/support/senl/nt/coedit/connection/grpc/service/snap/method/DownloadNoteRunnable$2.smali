.class Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->requestDownSync(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ByteArrayInOutStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleBinaryBody(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->putDownloadStrokeData(Ljava/lang/String;[B)V

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->handleDownloadUrlMap(Ljava/util/Map;)V

    return-void
.end method

.method public handleDownloadXmlData(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/method/DownloadNoteRunnable;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->setDownloadXmlData(Ljava/lang/String;)V

    return-void
.end method
