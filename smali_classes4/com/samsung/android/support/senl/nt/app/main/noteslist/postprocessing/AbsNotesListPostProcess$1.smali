.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->executeOnPreDraw(Landroid/view/View;JLcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;

.field public final synthetic val$log:Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;

.field public final synthetic val$postDelayMillis:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;J)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess$1;->val$log:Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;

    iput-wide p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess$1;->val$postDelayMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess$1;->val$log:Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog;->d(Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mMainListView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mFirstDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mMainListView:Landroid/view/View;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess$1;->val$postDelayMillis:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;J)V

    const/4 v0, 0x1

    return v0
.end method
