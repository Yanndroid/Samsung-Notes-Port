.class Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;->getOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;->mPdfShareTypeItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;->mPdfShareTypeItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    aget-object p1, v1, p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;->mPdfShareType:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick# which: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;->mPdfShareTypeItems:Ljava/util/LinkedHashMap;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;->mPdfShareType:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x7d0

    sget-object p1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->ShareViaChooser:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->mOnItemClickListener:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$OnItemClickListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$OnItemClickListener;->onItemClick()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->mSharePopupMenu:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
