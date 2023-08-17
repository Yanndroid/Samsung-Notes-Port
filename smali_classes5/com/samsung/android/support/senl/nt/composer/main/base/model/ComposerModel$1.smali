.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->createEntityManager(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    return-object v0
.end method
