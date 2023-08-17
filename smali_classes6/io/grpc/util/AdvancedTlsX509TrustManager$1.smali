.class Lio/grpc/util/AdvancedTlsX509TrustManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/util/AdvancedTlsX509TrustManager$Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/util/AdvancedTlsX509TrustManager;->updateTrustCredentialsFromFile(Ljava/io/File;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/util/AdvancedTlsX509TrustManager$Closeable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/util/AdvancedTlsX509TrustManager;

.field public final synthetic val$future:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Lio/grpc/util/AdvancedTlsX509TrustManager;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/util/AdvancedTlsX509TrustManager$1;->this$0:Lio/grpc/util/AdvancedTlsX509TrustManager;

    iput-object p2, p0, Lio/grpc/util/AdvancedTlsX509TrustManager$1;->val$future:Ljava/util/concurrent/ScheduledFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lio/grpc/util/AdvancedTlsX509TrustManager$1;->val$future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void
.end method
