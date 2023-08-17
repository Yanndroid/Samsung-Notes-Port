.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->changeNote(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

.field public final synthetic val$docState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$3;->val$docState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$Contract;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$3;->val$docState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$Contract;->attachLoadedDoc(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->clearStateForChangeDoc(ZZ)V

    return-void
.end method
