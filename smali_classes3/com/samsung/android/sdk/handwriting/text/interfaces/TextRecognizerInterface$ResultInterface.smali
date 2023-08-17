.class public interface abstract Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResultInterface"
.end annotation


# virtual methods
.method public abstract getCandidates()[Ljava/lang/String;
.end method

.method public abstract getEndPointOffset(I)I
.end method

.method public abstract getEndStrokeIndex(I)I
.end method

.method public abstract getStartPointOffset(I)I
.end method

.method public abstract getStartStrokeIndex(I)I
.end method
