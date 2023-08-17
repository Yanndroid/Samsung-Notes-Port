.class Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils$RestoreDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->restoreUndrawnData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public restoreDownloadStroke(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;)Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$RestoreContract;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$RestoreContract;->restoreDownloadStroke(Ljava/lang/String;[B)V

    return-void
.end method

.method public restoreUndownloadStroke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;)Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$RestoreContract;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$RestoreContract;->restoreUndownloadStroke(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
