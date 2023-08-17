.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$5;->val$isMenuClicked:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isEditMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$5;->val$isMenuClicked:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$IPresenter;->clearCheckedData()V

    :cond_0
    return-void
.end method
