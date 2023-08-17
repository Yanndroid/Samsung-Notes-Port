.class Lnet/lingala/zip4j/zip/ZipEngine$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lnet/lingala/zip4j/zip/ZipEngine;

.field private final synthetic val$fileList:Ljava/util/ArrayList;

.field private final synthetic val$parameters:Lnet/lingala/zip4j/model/ZipParameters;

.field private final synthetic val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/zip/ZipEngine;Ljava/lang/String;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/lingala/zip4j/zip/ZipEngine$1;->this$0:Lnet/lingala/zip4j/zip/ZipEngine;

    iput-object p3, p0, Lnet/lingala/zip4j/zip/ZipEngine$1;->val$fileList:Ljava/util/ArrayList;

    iput-object p4, p0, Lnet/lingala/zip4j/zip/ZipEngine$1;->val$parameters:Lnet/lingala/zip4j/model/ZipParameters;

    iput-object p5, p0, Lnet/lingala/zip4j/zip/ZipEngine$1;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/zip/ZipEngine$1;->this$0:Lnet/lingala/zip4j/zip/ZipEngine;

    iget-object v1, p0, Lnet/lingala/zip4j/zip/ZipEngine$1;->val$fileList:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/lingala/zip4j/zip/ZipEngine$1;->val$parameters:Lnet/lingala/zip4j/model/ZipParameters;

    iget-object v3, p0, Lnet/lingala/zip4j/zip/ZipEngine$1;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-static {v0, v1, v2, v3}, Lnet/lingala/zip4j/zip/ZipEngine;->access$0(Lnet/lingala/zip4j/zip/ZipEngine;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
