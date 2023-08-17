.class public interface abstract Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenSignatureVerificationInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenSignatureVerificationInterface$ResultListener;
    }
.end annotation


# virtual methods
.method public abstract completeRegistration()V
.end method

.method public abstract getMinimumRequiredCount()I
.end method

.method public abstract getRegisteredCount()I
.end method

.method public abstract isRegistrationCompleted()Z
.end method

.method public abstract isRegistrationPrepared()Z
.end method

.method public abstract prepareRegistration(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract register(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract request(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setResultListener(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenSignatureVerificationInterface$ResultListener;)V
.end method

.method public abstract unregisterAll()V
.end method
