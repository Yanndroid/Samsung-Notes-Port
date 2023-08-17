.class public interface abstract Lcom/samsung/android/sdk/pen/recogengine/interfaces/SpenRecognizerResultTextInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultInterface;


# virtual methods
.method public abstract getEndStrokeIndex(I)I
.end method

.method public abstract getResultCount()I
.end method

.method public abstract getResultString(I)Ljava/lang/String;
.end method

.method public abstract getStartStrokeIndex(I)I
.end method

.method public abstract getStrokeIndex(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
