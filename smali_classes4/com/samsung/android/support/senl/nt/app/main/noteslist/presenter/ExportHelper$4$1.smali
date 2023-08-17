.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;->onItemClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;

.field public final synthetic val$shareType:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4$1;->val$shareType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;->val$sharableNoteList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4$1;->val$shareType:I

    iget-boolean v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;->val$isSaveToExternalStorage:Z

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;->g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;Ljava/util/ArrayList;IZ)V

    return-void
.end method
