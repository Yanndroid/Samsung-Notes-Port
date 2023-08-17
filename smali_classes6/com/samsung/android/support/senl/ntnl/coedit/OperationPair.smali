.class public final Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final clientOp:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final serverOp:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;TO;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;->clientOp:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;->serverOp:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clientOp()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;->clientOp:Ljava/lang/Object;

    return-object v0
.end method

.method public serverOp()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;->serverOp:Ljava/lang/Object;

    return-object v0
.end method
