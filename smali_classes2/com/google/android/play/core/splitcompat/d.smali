.class final Lcom/google/android/play/core/splitcompat/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/splitcompat/i;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/splitcompat/e;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitcompat/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/d;->a:Lcom/google/android/play/core/splitcompat/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/splitcompat/j;Ljava/io/File;Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/play/core/splitcompat/d;->a:Lcom/google/android/play/core/splitcompat/e;

    iget-object p1, p1, Lcom/google/android/play/core/splitcompat/e;->b:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/google/android/play/core/splitcompat/d;->a:Lcom/google/android/play/core/splitcompat/e;

    iget-object p1, p1, Lcom/google/android/play/core/splitcompat/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
