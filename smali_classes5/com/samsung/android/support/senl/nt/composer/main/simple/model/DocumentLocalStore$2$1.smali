.class Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$2;->onFailed(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$2$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$2$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->a(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;)Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_save_to_device_fail:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void
.end method
