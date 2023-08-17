.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConnected#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ConnectionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ConnectionCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ConnectionCallback;->onConnected()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ConnectionCallback;)V

    :cond_0
    return-void
.end method

.method public onDisConnected(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisConnected# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
