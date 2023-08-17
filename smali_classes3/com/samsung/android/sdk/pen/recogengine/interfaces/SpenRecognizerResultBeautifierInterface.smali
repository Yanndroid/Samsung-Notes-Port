.class public interface abstract Lcom/samsung/android/sdk/pen/recogengine/interfaces/SpenRecognizerResultBeautifierInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultInterface;


# virtual methods
.method public abstract getLineTextList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStrokes()Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;
.end method
