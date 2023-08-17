.class final synthetic Lcom/google/android/play/core/splitinstall/testing/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field private final e:J


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/h;->a:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/testing/h;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/testing/h;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/testing/h;->d:Ljava/util/List;

    iput-wide p5, p0, Lcom/google/android/play/core/splitinstall/testing/h;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/h;->a:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/h;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/testing/h;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/testing/h;->d:Ljava/util/List;

    iget-wide v4, p0, Lcom/google/android/play/core/splitinstall/testing/h;->e:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V

    return-void
.end method
