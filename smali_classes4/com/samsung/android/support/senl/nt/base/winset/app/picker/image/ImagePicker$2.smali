.class Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->showDialog(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$2;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onItemClick# "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImagePicker"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$2;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->onItemClick(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$2;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->b(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method
