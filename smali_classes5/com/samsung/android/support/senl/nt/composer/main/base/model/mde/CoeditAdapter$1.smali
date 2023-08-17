.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->waitConnection(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;->onConnected()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;)V

    :cond_0
    return-void
.end method
