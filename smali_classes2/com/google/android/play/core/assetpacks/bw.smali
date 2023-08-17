.class final Lcom/google/android/play/core/assetpacks/bw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/play/core/internal/af;


# instance fields
.field private final b:Lcom/google/android/play/core/assetpacks/cp;

.field private final c:Lcom/google/android/play/core/assetpacks/bt;

.field private final d:Lcom/google/android/play/core/assetpacks/dv;

.field private final e:Lcom/google/android/play/core/assetpacks/df;

.field private final f:Lcom/google/android/play/core/assetpacks/dj;

.field private final g:Lcom/google/android/play/core/assetpacks/do;

.field private final h:Lcom/google/android/play/core/internal/cj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cj<",
            "Lcom/google/android/play/core/assetpacks/w;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/play/core/assetpacks/cs;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/af;

    const-string v1, "ExtractorLooper"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/af;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/bw;->a:Lcom/google/android/play/core/internal/af;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/assetpacks/cp;Lcom/google/android/play/core/internal/cj;Lcom/google/android/play/core/assetpacks/bt;Lcom/google/android/play/core/assetpacks/dv;Lcom/google/android/play/core/assetpacks/df;Lcom/google/android/play/core/assetpacks/dj;Lcom/google/android/play/core/assetpacks/do;Lcom/google/android/play/core/assetpacks/cs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/cp;",
            "Lcom/google/android/play/core/internal/cj<",
            "Lcom/google/android/play/core/assetpacks/w;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/bt;",
            "Lcom/google/android/play/core/assetpacks/dv;",
            "Lcom/google/android/play/core/assetpacks/df;",
            "Lcom/google/android/play/core/assetpacks/dj;",
            "Lcom/google/android/play/core/assetpacks/do;",
            "Lcom/google/android/play/core/assetpacks/cs;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/bw;->b:Lcom/google/android/play/core/assetpacks/cp;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/bw;->h:Lcom/google/android/play/core/internal/cj;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/bw;->c:Lcom/google/android/play/core/assetpacks/bt;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/bw;->d:Lcom/google/android/play/core/assetpacks/dv;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/bw;->e:Lcom/google/android/play/core/assetpacks/df;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/bw;->f:Lcom/google/android/play/core/assetpacks/dj;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/bw;->g:Lcom/google/android/play/core/assetpacks/do;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/bw;->i:Lcom/google/android/play/core/assetpacks/cs;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/bw;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private final a(ILjava/lang/Exception;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/bw;->b:Lcom/google/android/play/core/assetpacks/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/cp;->d(I)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/bw;->b:Lcom/google/android/play/core/assetpacks/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/cp;->a(I)V
    :try_end_0
    .catch Lcom/google/android/play/core/assetpacks/bv; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p1, Lcom/google/android/play/core/assetpacks/bw;->a:Lcom/google/android/play/core/internal/af;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "Error during error handling: %s"

    invoke-virtual {p1, p2, v0}, Lcom/google/android/play/core/internal/af;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    sget-object v0, Lcom/google/android/play/core/assetpacks/bw;->a:Lcom/google/android/play/core/internal/af;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Run extractor loop"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/internal/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/bw;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/bw;->i:Lcom/google/android/play/core/assetpacks/cs;

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/cs;->a()Lcom/google/android/play/core/assetpacks/cr;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/play/core/assetpacks/bv; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v4, Lcom/google/android/play/core/assetpacks/bw;->a:Lcom/google/android/play/core/internal/af;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "Error while getting next extraction task: %s"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/play/core/internal/af;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v4, v2, Lcom/google/android/play/core/assetpacks/bv;->a:I

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/bw;->h:Lcom/google/android/play/core/internal/cj;

    invoke-interface {v4}, Lcom/google/android/play/core/internal/cj;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/w;

    iget v5, v2, Lcom/google/android/play/core/assetpacks/bv;->a:I

    invoke-interface {v4, v5}, Lcom/google/android/play/core/assetpacks/w;->a(I)V

    iget v4, v2, Lcom/google/android/play/core/assetpacks/bv;->a:I

    invoke-direct {p0, v4, v2}, Lcom/google/android/play/core/assetpacks/bw;->a(ILjava/lang/Exception;)V

    :cond_0
    :goto_1
    if-eqz v0, :cond_6

    :try_start_1
    instance-of v2, v0, Lcom/google/android/play/core/assetpacks/bs;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/bw;->c:Lcom/google/android/play/core/assetpacks/bt;

    move-object v4, v0

    check-cast v4, Lcom/google/android/play/core/assetpacks/bs;

    invoke-virtual {v2, v4}, Lcom/google/android/play/core/assetpacks/bt;->a(Lcom/google/android/play/core/assetpacks/bs;)V

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lcom/google/android/play/core/assetpacks/du;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/bw;->d:Lcom/google/android/play/core/assetpacks/dv;

    move-object v4, v0

    check-cast v4, Lcom/google/android/play/core/assetpacks/du;

    invoke-virtual {v2, v4}, Lcom/google/android/play/core/assetpacks/dv;->a(Lcom/google/android/play/core/assetpacks/du;)V

    goto :goto_0

    :cond_2
    instance-of v2, v0, Lcom/google/android/play/core/assetpacks/de;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/bw;->e:Lcom/google/android/play/core/assetpacks/df;

    move-object v4, v0

    check-cast v4, Lcom/google/android/play/core/assetpacks/de;

    invoke-virtual {v2, v4}, Lcom/google/android/play/core/assetpacks/df;->a(Lcom/google/android/play/core/assetpacks/de;)V

    goto :goto_0

    :cond_3
    instance-of v2, v0, Lcom/google/android/play/core/assetpacks/dh;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/bw;->f:Lcom/google/android/play/core/assetpacks/dj;

    move-object v4, v0

    check-cast v4, Lcom/google/android/play/core/assetpacks/dh;

    invoke-virtual {v2, v4}, Lcom/google/android/play/core/assetpacks/dj;->a(Lcom/google/android/play/core/assetpacks/dh;)V

    goto :goto_0

    :cond_4
    instance-of v2, v0, Lcom/google/android/play/core/assetpacks/dn;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/bw;->g:Lcom/google/android/play/core/assetpacks/do;

    move-object v4, v0

    check-cast v4, Lcom/google/android/play/core/assetpacks/dn;

    invoke-virtual {v2, v4}, Lcom/google/android/play/core/assetpacks/do;->a(Lcom/google/android/play/core/assetpacks/dn;)V

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/google/android/play/core/assetpacks/bw;->a:Lcom/google/android/play/core/internal/af;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "Unknown task type: %s"

    invoke-virtual {v2, v5, v4}, Lcom/google/android/play/core/internal/af;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    sget-object v4, Lcom/google/android/play/core/assetpacks/bw;->a:Lcom/google/android/play/core/internal/af;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "Error during extraction task: %s"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/play/core/internal/af;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/bw;->h:Lcom/google/android/play/core/internal/cj;

    invoke-interface {v4}, Lcom/google/android/play/core/internal/cj;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/w;

    iget v5, v0, Lcom/google/android/play/core/assetpacks/cr;->j:I

    invoke-interface {v4, v5}, Lcom/google/android/play/core/assetpacks/w;->a(I)V

    iget v0, v0, Lcom/google/android/play/core/assetpacks/cr;->j:I

    invoke-direct {p0, v0, v2}, Lcom/google/android/play/core/assetpacks/bw;->a(ILjava/lang/Exception;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/bw;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_7
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "runLoop already looping; return"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/af;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
