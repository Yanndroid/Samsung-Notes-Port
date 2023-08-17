.class Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->showPdfPopupMenu(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;

.field public final synthetic val$presenter:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu$2;->val$presenter:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu$2;->val$presenter:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mPdfPopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;->getShareType()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;->setPdfShareType(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu$2;->val$presenter:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->executeShareSaveNote(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;)V

    return-void
.end method
