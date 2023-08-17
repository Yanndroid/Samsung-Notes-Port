.class final synthetic Lcom/google/android/play/core/splitinstall/testing/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

.field private final b:J

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;JLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/g;->a:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iput-wide p2, p0, Lcom/google/android/play/core/splitinstall/testing/g;->b:J

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/testing/g;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/play/core/splitinstall/testing/g;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/play/core/splitinstall/testing/g;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/g;->a:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iget-wide v1, p0, Lcom/google/android/play/core/splitinstall/testing/g;->b:J

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/testing/g;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/testing/g;->d:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/play/core/splitinstall/testing/g;->e:Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->a(JLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
