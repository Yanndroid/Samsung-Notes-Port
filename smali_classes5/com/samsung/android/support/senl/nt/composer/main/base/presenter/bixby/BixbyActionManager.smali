.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "BixbyActionManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static executeBixbyAction(Landroid/app/Activity;Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionManager;->getAction(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyAction;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionManager$1;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionManager$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyAction;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static executeBixbyAction(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionManager;->executeBixbyAction(Landroid/app/Activity;Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;)V

    return-void
.end method

.method private static getAction(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyAction;
    .locals 5

    const-string v0, "BixbyAction"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    const-string v2, "EditNote"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionEdit;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionEdit;-><init>()V

    goto :goto_0

    :cond_1
    const-string v2, "ShareNote"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "AddContentToEditingNote"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionAddContent;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionAddContent;-><init>(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v3
.end method
