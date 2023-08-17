.class Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$2;
.super Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;
.source "SourceFile"


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
        "Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$2;->this$0:Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute, result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DuplicatedDatabaseDetector"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "APP_LAUNCH"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const-string v0, "arrange_db"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$2;->this$0:Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->c(Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;)Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$OnArrangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$2;->this$0:Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->c(Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;)Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$OnArrangeListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$OnArrangeListener;->onFinish()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$2;->onComplete(Ljava/lang/Integer;)V

    return-void
.end method
