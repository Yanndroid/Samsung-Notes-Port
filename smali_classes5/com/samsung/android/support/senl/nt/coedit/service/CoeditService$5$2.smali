.class Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;->onCompleted(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5$2;->this$1:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5$2;->this$1:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;->onCompleted()V

    return-void
.end method
