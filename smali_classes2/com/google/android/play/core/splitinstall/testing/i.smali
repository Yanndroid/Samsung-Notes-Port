.class final Lcom/google/android/play/core/splitinstall/testing/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/d;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:J

.field public final synthetic d:Z

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;Ljava/util/List;Ljava/util/List;JZLjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/i;->f:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/testing/i;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/testing/i;->b:Ljava/util/List;

    iput-wide p4, p0, Lcom/google/android/play/core/splitinstall/testing/i;->c:J

    iput-boolean p6, p0, Lcom/google/android/play/core/splitinstall/testing/i;->d:Z

    iput-object p7, p0, Lcom/google/android/play/core/splitinstall/testing/i;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/i;->f:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->a(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/i;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/i;->f:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->b(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/i;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/i;->f:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iget-wide v1, p0, Lcom/google/android/play/core/splitinstall/testing/i;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/play/core/splitinstall/testing/i;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->a(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/i;->f:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    invoke-static {v0, p1}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->a(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;I)V

    return-void
.end method

.method public final b()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/play/core/splitinstall/testing/i;->d:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/i;->f:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/testing/i;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/testing/i;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/testing/i;->b:Ljava/util/List;

    iget-wide v5, p0, Lcom/google/android/play/core/splitinstall/testing/i;->c:J

    invoke-static/range {v1 .. v6}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->a(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V

    :cond_0
    return-void
.end method
