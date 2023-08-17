.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageLayoutListenerImpl;
.super Lcom/samsung/android/sdk/composer/listener/SpenPageLayoutListener;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCvPageSettingController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SpenPageLayoutListenerImpl"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageLayoutListenerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/listener/SpenPageLayoutListener;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageLayoutListenerImpl;->mCvPageSettingController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;

    return-void
.end method


# virtual methods
.method public onChanged(IIZZ)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageLayoutListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChanged# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageLayoutListenerImpl;->mCvPageSettingController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->setPageLayout(IIZZ)V

    return-void
.end method
