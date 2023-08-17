.class public interface abstract Lorg/apache/poi/ss/usermodel/Chart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/charts/ManuallyPositionable;


# virtual methods
.method public abstract deleteLegend()V
.end method

.method public abstract getAxis()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/charts/ChartAxis;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChartAxisFactory()Lorg/apache/poi/ss/usermodel/charts/ChartAxisFactory;
.end method

.method public abstract getChartDataFactory()Lorg/apache/poi/ss/usermodel/charts/ChartDataFactory;
.end method

.method public abstract getOrCreateLegend()Lorg/apache/poi/ss/usermodel/charts/ChartLegend;
.end method

.method public varargs abstract plot(Lorg/apache/poi/ss/usermodel/charts/ChartData;[Lorg/apache/poi/ss/usermodel/charts/ChartAxis;)V
.end method
