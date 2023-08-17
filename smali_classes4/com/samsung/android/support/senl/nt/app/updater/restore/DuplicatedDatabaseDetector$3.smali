.class Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->execute()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$3;->this$0:Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$3;->this$0:Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->d(Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$3;->this$0:Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->e(Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$3;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
