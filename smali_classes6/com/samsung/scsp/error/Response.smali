.class public Lcom/samsung/scsp/error/Response;
.super Lcom/samsung/scsp/error/Result;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/scsp/error/Response$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/scsp/error/Result;"
    }
.end annotation


# instance fields
.field public final obj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/scsp/error/Result;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/error/Response;->obj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/samsung/scsp/error/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/samsung/scsp/error/Result;",
            ")V"
        }
    .end annotation

    iget v0, p2, Lcom/samsung/scsp/error/Result;->rcode:I

    iget-object p2, p2, Lcom/samsung/scsp/error/Result;->rmsg:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/samsung/scsp/error/Result;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/scsp/error/Response;->obj:Ljava/lang/Object;

    return-void
.end method
