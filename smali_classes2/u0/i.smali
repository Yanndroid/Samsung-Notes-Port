.class public Lu0/i;
.super Lu0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lu0/a;-><init>()V

    const-string v0, "SYNC_ERROR"

    iput-object v0, p0, Lu0/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lu0/a;->b:Ljava/lang/String;

    const/16 v2, 0x66

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/diagmon/DiagMonLogger;->getExceptionMsg(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lu0/a;->a:Ljava/lang/Exception;

    return-void
.end method
