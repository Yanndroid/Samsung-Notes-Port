.class final Lcom/google/android/play/core/splitcompat/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/n;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/splitcompat/SplitCompat;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitcompat/SplitCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/l;->a:Lcom/google/android/play/core/splitcompat/SplitCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/l;->a:Lcom/google/android/play/core/splitcompat/SplitCompat;

    invoke-static {v0}, Lcom/google/android/play/core/splitcompat/SplitCompat;->a(Lcom/google/android/play/core/splitcompat/SplitCompat;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
