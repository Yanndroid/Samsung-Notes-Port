.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollDirection;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollDirection;->updateList()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;I)V

    return-void
.end method
