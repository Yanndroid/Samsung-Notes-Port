.class Lcom/samsung/scsp/error/ErrorSupplier$ResultHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/scsp/error/ErrorSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultHolder"
.end annotation


# instance fields
.field private result:Lcom/samsung/scsp/error/Result;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/scsp/error/Result;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not defined error. There is exception {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/samsung/scsp/error/Result;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/scsp/error/ErrorSupplier$ResultHolder;->result:Lcom/samsung/scsp/error/Result;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/scsp/error/ErrorSupplier$ResultHolder;)Lcom/samsung/scsp/error/Result;
    .locals 0

    iget-object p0, p0, Lcom/samsung/scsp/error/ErrorSupplier$ResultHolder;->result:Lcom/samsung/scsp/error/Result;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/samsung/scsp/error/ErrorSupplier$ResultHolder;Lcom/samsung/scsp/error/Result;)Lcom/samsung/scsp/error/Result;
    .locals 0

    iput-object p1, p0, Lcom/samsung/scsp/error/ErrorSupplier$ResultHolder;->result:Lcom/samsung/scsp/error/Result;

    return-object p1
.end method
