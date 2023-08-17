.class public interface abstract Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getFormulaString()Ljava/lang/String;
.end method

.method public abstract getPointAt(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public abstract getPointCount()I
.end method

.method public abstract isNumeric()Z
.end method

.method public abstract isReference()Z
.end method
