.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionManager;->executeBixbyAction(Landroid/app/Activity;Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$bixbyAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyAction;

.field public final synthetic val$bixbyContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyAction;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionManager$1;->val$bixbyAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyAction;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionManager$1;->val$bixbyContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionManager$1;->val$bixbyAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyAction;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionManager$1;->val$bixbyContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyAction;->execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionManager;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute# : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
