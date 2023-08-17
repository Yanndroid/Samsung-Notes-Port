.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;->showExportOptionPopup(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

.field public final synthetic val$isMenuClicked:[Z

.field public final synthetic val$isSaveToExternalStorage:Z

.field public final synthetic val$sharableNoteList:Ljava/util/ArrayList;

.field public final synthetic val$sharePopupMenu:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportShareTypeMenu;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportShareTypeMenu;[ZZLjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;->val$sharePopupMenu:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportShareTypeMenu;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;->val$isMenuClicked:[Z

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;->val$isSaveToExternalStorage:Z

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;->val$sharableNoteList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;->val$sharePopupMenu:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportShareTypeMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportShareTypeMenu;->getShareType()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;->val$isMenuClicked:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;->val$isSaveToExternalStorage:Z

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;->i(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;IZ)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;I)V

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;->val$sharableNoteList:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$4;->val$isSaveToExternalStorage:Z

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;->g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;Ljava/util/ArrayList;IZ)V

    :goto_0
    return-void
.end method
