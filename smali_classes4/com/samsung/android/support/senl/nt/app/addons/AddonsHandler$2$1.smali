.class Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->onAddonsCalled(Ljava/io/File;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->b(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->open_fail_error_message_in_upsm:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void
.end method
