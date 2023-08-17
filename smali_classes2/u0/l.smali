.class public Lu0/l;
.super Lu0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lu0/a;-><init>()V

    invoke-virtual {p0, p1}, Lu0/l;->d(Ljava/lang/String;)V

    iput-object p2, p0, Lu0/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 4

    const-string v0, "SPEN_ERROR"

    iput-object v0, p0, Lu0/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lu0/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UUID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x12c

    invoke-static {v1, v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/diagmon/DiagMonLogger;->getExceptionMsg(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lu0/a;->a:Ljava/lang/Exception;

    return-void
.end method
