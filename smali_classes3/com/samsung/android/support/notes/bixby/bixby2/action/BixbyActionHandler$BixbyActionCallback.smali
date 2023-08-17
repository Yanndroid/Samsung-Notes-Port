.class Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler$BixbyActionCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BixbyActionCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResponseCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BixbyActionCallback"


# instance fields
.field private mResponseCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler$BixbyActionCallback;->mResponseCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 0

    return-void
.end method

.method public onPreExecuteRequest()V
    .locals 0

    return-void
.end method

.method public onRequestComplete(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler$BixbyActionCallback;->mResponseCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;->onComplete(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isEngMode()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestComplete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BixbyActionCallback"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler$BixbyActionCallback;->mResponseCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;->onComplete(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
