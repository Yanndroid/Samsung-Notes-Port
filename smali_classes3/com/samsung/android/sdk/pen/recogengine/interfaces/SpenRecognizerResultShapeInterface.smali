.class public interface abstract Lcom/samsung/android/sdk/pen/recogengine/interfaces/SpenRecognizerResultShapeInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultInterface;


# virtual methods
.method public abstract getCandidateRelevance(I)F
.end method

.method public abstract getCandidateShape(I)Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;
.end method

.method public abstract getCandidateShapeCount()I
.end method

.method public abstract getCandidateShapeName(I)Ljava/lang/String;
.end method

.method public abstract getRecognizedPoints(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStrokeIndex()[I
.end method
