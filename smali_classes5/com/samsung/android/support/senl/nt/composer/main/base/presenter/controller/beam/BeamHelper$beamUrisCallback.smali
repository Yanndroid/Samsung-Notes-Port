.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "beamUrisCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)V

    return-void
.end method


# virtual methods
.method public createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;
    .locals 5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->k()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beamUrisCallback$createBeamUris(), ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)I

    move-result p1

    const/4 v0, 0x0

    const-string v1, "beamUrisCallback$createBeamUris(), ActivityNotFoundException : "

    const-string v2, "POPUP_MODE"

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v4, p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "no_file_selected"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {p1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;I)V

    return-object v0

    :cond_0
    const/4 p1, 0x3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)I

    move-result v4

    if-ne p1, v4, :cond_1

    new-instance p1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "from_cloud_file"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)I

    move-result v4

    if-ne p1, v4, :cond_2

    new-instance p1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "from_drm_file"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$OnCreateNdefMessageListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$OnCreateNdefMessageListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$OnCreateNdefMessageListener;->onCreateNdefMessage()V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {p1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->j(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/Uri;

    return-object p1
.end method
