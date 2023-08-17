.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->setOpenedTime(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

.field public final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$1;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;)Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$1;->val$uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->setOpenedTime(Ljava/lang/String;)V

    return-void
.end method
