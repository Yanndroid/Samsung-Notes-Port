.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;->showWordExportOptionPopup(Ljava/util/ArrayList;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

.field public final synthetic val$isSaveToExternalStorage:Z

.field public final synthetic val$sharableNoteList:Ljava/util/ArrayList;

.field public final synthetic val$shareType:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;Ljava/util/ArrayList;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$7;->val$sharableNoteList:Ljava/util/ArrayList;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$7;->val$shareType:I

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$7;->val$isSaveToExternalStorage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$7;->val$sharableNoteList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$7;->val$shareType:I

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$7;->val$isSaveToExternalStorage:Z

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;Ljava/util/ArrayList;IZ)V

    return-void
.end method
