.class public Lu0/c;
.super Lu0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lu0/a;-><init>()V

    invoke-virtual {p0}, Lu0/c;->d()V

    iput-object p1, p0, Lu0/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 4

    const-string v0, "SPEN_ERROR"

    iput-object v0, p0, Lu0/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lu0/a;->b:Ljava/lang/String;

    const/16 v2, 0x12d

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/diagmon/DiagMonLogger;->getExceptionMsg(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lu0/a;->a:Ljava/lang/Exception;

    return-void
.end method
