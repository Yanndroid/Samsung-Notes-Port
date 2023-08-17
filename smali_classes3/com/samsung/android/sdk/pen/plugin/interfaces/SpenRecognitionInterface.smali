.class public interface abstract Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognitionInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognitionInterface$ResultListener;
    }
.end annotation


# virtual methods
.method public abstract request(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setResultListener(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognitionInterface$ResultListener;)V
.end method
