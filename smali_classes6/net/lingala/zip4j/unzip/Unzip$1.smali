.class Lnet/lingala/zip4j/unzip/Unzip$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lnet/lingala/zip4j/unzip/Unzip;

.field private final synthetic val$fileHeaders:Ljava/util/ArrayList;

.field private final synthetic val$outPath:Ljava/lang/String;

.field private final synthetic val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field private final synthetic val$unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/unzip/Unzip;Ljava/lang/String;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->this$0:Lnet/lingala/zip4j/unzip/Unzip;

    iput-object p3, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->val$fileHeaders:Ljava/util/ArrayList;

    iput-object p4, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->val$unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;

    iput-object p5, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    iput-object p6, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->val$outPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->this$0:Lnet/lingala/zip4j/unzip/Unzip;

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->val$fileHeaders:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->val$unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;

    iget-object v3, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    iget-object v4, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->val$outPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lnet/lingala/zip4j/unzip/Unzip;->access$0(Lnet/lingala/zip4j/unzip/Unzip;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
