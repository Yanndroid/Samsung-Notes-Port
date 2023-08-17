.class Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->getJWT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/CancelRequest;)Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;

.field public final synthetic val$completableFuture:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic val$sCloudGetJwt:Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager$1;->val$sCloudGetJwt:Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager$1;->val$completableFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager$1;->val$sCloudGetJwt:Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;->perform()Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager$1;->val$completableFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
