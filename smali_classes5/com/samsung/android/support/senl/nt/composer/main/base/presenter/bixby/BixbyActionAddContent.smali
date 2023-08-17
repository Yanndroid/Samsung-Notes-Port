.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionAddContent;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyAction;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyAction;-><init>()V

    const-string v0, "BixbyActionAddContent"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionAddContent;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionAddContent;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionAddContent;->TAG:Ljava/lang/String;

    const-string v1, "execute#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionAddContent;->mIntent:Landroid/content/Intent;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;->executeActionSendTask(Landroid/content/Intent;)V

    return-void
.end method
