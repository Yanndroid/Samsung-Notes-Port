.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare;->execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare;

.field public final synthetic val$contract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare$1;->val$contract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare;->mShareType:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare$1;->val$contract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;->getMenuManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->getOptionMenuPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->getOptionMenuSharePresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare;->mShareType:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare$1;->val$contract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter;->showShareMenu(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter;->setShareType(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter;->shareNote()V

    :goto_0
    return-void
.end method
