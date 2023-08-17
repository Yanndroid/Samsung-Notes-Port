.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$1;->showToast(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$1;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$duration:I

.field public final synthetic val$resId:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$1;Landroid/content/Context;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$1;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$1$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$1$1;->val$resId:I

    iput p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$1$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$1$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$1$1;->val$resId:I

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$1$1;->val$duration:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void
.end method
