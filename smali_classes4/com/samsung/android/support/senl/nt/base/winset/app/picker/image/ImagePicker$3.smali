.class Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$3;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "ImagePicker"

    const-string v1, "onDismiss#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$3;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->c(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$3;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->c(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$3;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->e(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)V

    return-void
.end method
