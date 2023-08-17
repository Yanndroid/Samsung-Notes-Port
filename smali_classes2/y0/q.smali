.class public Ly0/q;
.super Ly0/a;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Lcom/google/api/services/drive/Drive;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/google/api/services/drive/Drive;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/api/services/drive/Drive;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ly0/a;-><init>()V

    invoke-virtual {p0, p1}, Ly0/a;->b(Ljava/util/List;)V

    iput-object p3, p0, Ly0/q;->c:Lcom/google/api/services/drive/Drive;

    iput-object p2, p0, Ly0/q;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Lcom/google/api/services/drive/Drive;
    .locals 1

    iget-object v0, p0, Ly0/q;->c:Lcom/google/api/services/drive/Drive;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly0/q;->b:Ljava/lang/String;

    return-object v0
.end method
