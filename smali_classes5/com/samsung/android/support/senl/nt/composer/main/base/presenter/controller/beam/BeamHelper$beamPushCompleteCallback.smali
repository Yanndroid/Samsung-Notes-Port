.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCompleteCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "beamPushCompleteCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCompleteCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCompleteCallback;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)V

    return-void
.end method


# virtual methods
.method public onNdefPushComplete(Landroid/nfc/NfcEvent;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->k()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beamPushCompleteCallback$onNdefPushComplete(), ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCompleteCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCompleteCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCompleteCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;I)V

    return-void

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.sec.android.directshare.DIRECT_SHARE_START_ACTION"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.directshare"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCompleteCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
