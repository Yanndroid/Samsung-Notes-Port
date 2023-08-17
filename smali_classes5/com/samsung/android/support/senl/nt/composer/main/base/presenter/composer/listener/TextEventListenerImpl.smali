.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;
.super Lcom/samsung/android/sdk/pen/text/SpenTextLimitListener;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextEventListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TextEventListenerImpl"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/text/SpenTextLimitListener;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;->mActivity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public onExceedTextLimit(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExceedTextLimit# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/common/util/CommonUtils;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onExceedTextLimit(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;->onExceedTextLimit(I)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;->mActivity:Landroid/app/Activity;

    return-void
.end method
