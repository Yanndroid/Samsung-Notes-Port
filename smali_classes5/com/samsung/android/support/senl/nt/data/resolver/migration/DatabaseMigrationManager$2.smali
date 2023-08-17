.class Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$2;
.super Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$2;->this$0:Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Boolean;)V
    .locals 3
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute, result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->d(Z)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$2;->this$0:Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->b(Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;)Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$OnMigrationListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$2;->this$0:Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->b(Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;)Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$OnMigrationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$OnMigrationListener;->onFinish()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$2;->onComplete(Ljava/lang/Boolean;)V

    return-void
.end method
