.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->onConvertToTextFailed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;

.field public final synthetic val$isNoHandwriting:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl$1;->val$isNoHandwriting:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl$1;->val$isNoHandwriting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;)Landroid/app/Activity;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_could_not_find_any_handwriting:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;)Landroid/app/Activity;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_unable_to_extract_text:I

    :goto_0
    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void
.end method
