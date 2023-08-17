.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;

.field public final synthetic val$args:[Ljava/lang/Object;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1$1;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1$1;->val$view:Landroid/view/View;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1$1;->val$args:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getClipData(Ljava/lang/Object;)Landroid/content/ClipData;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;Landroid/view/View;Landroid/content/ClipData;)V

    return-void
.end method
