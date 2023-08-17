.class Lnet/lingala/zip4j/util/ArchiveMaintainer$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lnet/lingala/zip4j/util/ArchiveMaintainer;

.field private final synthetic val$fileHeader:Lnet/lingala/zip4j/model/FileHeader;

.field private final synthetic val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field private final synthetic val$zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/util/ArchiveMaintainer;Ljava/lang/String;Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->this$0:Lnet/lingala/zip4j/util/ArchiveMaintainer;

    iput-object p3, p0, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->val$zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iput-object p4, p0, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->val$fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    iput-object p5, p0, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->this$0:Lnet/lingala/zip4j/util/ArchiveMaintainer;

    iget-object v1, p0, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->val$zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->val$fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v3, p0, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0, v1, v2, v3}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->initRemoveZipFile(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)Ljava/util/HashMap;

    iget-object v0, p0, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
