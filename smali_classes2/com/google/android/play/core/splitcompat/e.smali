.class final Lcom/google/android/play/core/splitcompat/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/splitcompat/h;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/splitcompat/q;

.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic d:Lcom/google/android/play/core/splitcompat/k;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitcompat/k;Lcom/google/android/play/core/splitcompat/q;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/e;->d:Lcom/google/android/play/core/splitcompat/k;

    iput-object p2, p0, Lcom/google/android/play/core/splitcompat/e;->a:Lcom/google/android/play/core/splitcompat/q;

    iput-object p3, p0, Lcom/google/android/play/core/splitcompat/e;->b:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/play/core/splitcompat/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/zip/ZipFile;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/util/Set<",
            "Lcom/google/android/play/core/splitcompat/j;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/play/core/splitcompat/e;->d:Lcom/google/android/play/core/splitcompat/k;

    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/e;->a:Lcom/google/android/play/core/splitcompat/q;

    new-instance v1, Lcom/google/android/play/core/splitcompat/d;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/splitcompat/d;-><init>(Lcom/google/android/play/core/splitcompat/e;)V

    invoke-static {p1, v0, p2, v1}, Lcom/google/android/play/core/splitcompat/k;->a(Lcom/google/android/play/core/splitcompat/k;Lcom/google/android/play/core/splitcompat/q;Ljava/util/Set;Lcom/google/android/play/core/splitcompat/i;)V

    return-void
.end method
