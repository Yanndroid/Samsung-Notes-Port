.class Lio/grpc/util/AdvancedTlsX509KeyManager$LoadFilePathExecution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/AdvancedTlsX509KeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadFilePathExecution"
.end annotation


# instance fields
.field public certFile:Ljava/io/File;

.field public currentCertTime:J

.field public currentKeyTime:J

.field public keyFile:Ljava/io/File;

.field public final synthetic this$0:Lio/grpc/util/AdvancedTlsX509KeyManager;


# direct methods
.method public constructor <init>(Lio/grpc/util/AdvancedTlsX509KeyManager;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/util/AdvancedTlsX509KeyManager$LoadFilePathExecution;->this$0:Lio/grpc/util/AdvancedTlsX509KeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/grpc/util/AdvancedTlsX509KeyManager$LoadFilePathExecution;->keyFile:Ljava/io/File;

    iput-object p3, p0, Lio/grpc/util/AdvancedTlsX509KeyManager$LoadFilePathExecution;->certFile:Ljava/io/File;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lio/grpc/util/AdvancedTlsX509KeyManager$LoadFilePathExecution;->currentKeyTime:J

    iput-wide p1, p0, Lio/grpc/util/AdvancedTlsX509KeyManager$LoadFilePathExecution;->currentCertTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lio/grpc/util/AdvancedTlsX509KeyManager$LoadFilePathExecution;->this$0:Lio/grpc/util/AdvancedTlsX509KeyManager;

    iget-object v1, p0, Lio/grpc/util/AdvancedTlsX509KeyManager$LoadFilePathExecution;->keyFile:Ljava/io/File;

    iget-object v2, p0, Lio/grpc/util/AdvancedTlsX509KeyManager$LoadFilePathExecution;->certFile:Ljava/io/File;

    iget-wide v3, p0, Lio/grpc/util/AdvancedTlsX509KeyManager$LoadFilePathExecution;->currentKeyTime:J

    iget-wide v5, p0, Lio/grpc/util/AdvancedTlsX509KeyManager$LoadFilePathExecution;->currentCertTime:J

    invoke-static/range {v0 .. v6}, Lio/grpc/util/AdvancedTlsX509KeyManager;->access$000(Lio/grpc/util/AdvancedTlsX509KeyManager;Ljava/io/File;Ljava/io/File;JJ)Lio/grpc/util/AdvancedTlsX509KeyManager$UpdateResult;

    move-result-object v0

    iget-boolean v1, v0, Lio/grpc/util/AdvancedTlsX509KeyManager$UpdateResult;->success:Z

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lio/grpc/util/AdvancedTlsX509KeyManager$UpdateResult;->keyTime:J

    iput-wide v1, p0, Lio/grpc/util/AdvancedTlsX509KeyManager$LoadFilePathExecution;->currentKeyTime:J

    iget-wide v0, v0, Lio/grpc/util/AdvancedTlsX509KeyManager$UpdateResult;->certTime:J

    iput-wide v0, p0, Lio/grpc/util/AdvancedTlsX509KeyManager$LoadFilePathExecution;->currentCertTime:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-static {}, Lio/grpc/util/AdvancedTlsX509KeyManager;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Failed refreshing private key and certificate chain from files. Using previous ones"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-void
.end method
